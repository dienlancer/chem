<?php namespace App\Http\Controllers\adminsystem;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\MenuAdminModel;
use App\ProductModel;
use App\ArticleModel;
use App\PageModel;
use App\MenuTypeModel;
use App\ModMenuTypeModel;
use App\PaginationModel;
use App\CategoryArticleModel;
use App\CategoryProductModel;
use DB;
class MenuAdminController extends Controller {
 var $_controller="menu-admin"; 
 var $_title="Menu Admin";
 var $_icon="icon-settings font-dark";
 var $_totalItemsPerPage=9999;    
 var $_pageRange=10;
 public function getList(Request $request){   
  $controller=$this->_controller; 
  $task="list";
  $title=$this->_title;
  $icon=$this->_icon; 
  $currentPage=1;             
  $query=DB::table('menu_admin as n')  
  ->leftJoin('menu_admin as a','n.parent_id','=','a.id');             
  if(!empty(@$request->filter_search)){
    $query->where('n.fullname','like','%'.trim(mb_strtolower(@$request->filter_search,'UTF-8')).'%')    ;
  }
  $data=$query->select('n.id')
  ->groupBy('n.id')
  ->get()
  ->toArray();            
  $totalItems=count($data);
  $totalItemsPerPage=$this->_totalItemsPerPage;       
  $pageRange=$this->_pageRange;
  if(!empty(@$request->filter_page)){
    $currentPage=(int)@$request->filter_page;    
  }            
  $arrPagination=array(
    "totalItems"=>$totalItems,
    "totalItemsPerPage"=>$totalItemsPerPage,
    "pageRange"=>$pageRange,
    "currentPage"=>$currentPage 
  );
  $pagination=new PaginationModel($arrPagination);
  $position = (@$arrPagination['currentPage']-1)*$totalItemsPerPage;
  $query=DB::table('menu_admin as n')  
  ->leftJoin('menu_admin as a','n.parent_id','=','a.id');              
  if(!empty(@$request->filter_search)){
    $query->where('n.fullname','like','%'.trim(mb_strtolower(@$request->filter_search,'UTF-8')).'%')    ;
  }
  $data=$query->select('n.id','n.fullname','n.form_url','n.parent_id','a.fullname as parent_fullname','n.sort_order','n.created_at','n.updated_at')
  ->groupBy('n.id','n.fullname','n.form_url','n.parent_id','a.fullname','n.sort_order','n.created_at','n.updated_at')
  ->orderBy('n.sort_order', 'asc')
  ->skip($position)
  ->take($totalItemsPerPage)
  ->get()
  ->toArray();     
  $data=convertToArray($data);
  $data=menuAdminConverter($data,$this->_controller);   
  $data_recursive=array();        
  menuAdminRecursive($data,0,null,$data_recursive);          
  $data=$data_recursive; 

  return view("adminsystem.".$this->_controller.".list",compact("controller","task","title","icon",'data','pagination','filter_search')); 
} 	
public function getForm($task,$id=""){   
  $controller=$this->_controller;			
  $title="";
  $icon=$this->_icon; 
  $arrRowData=array();
  $fullname='';
  $item=array();

  switch ($task) {
   case 'edit':
   $title=$this->_title . " : Update";
   $arrRowData=MenuAdminModel::find((int)@$id)->toArray();       
   $fullname=$arrRowData['fullname'];
   break;
   case 'add':
   $title=$this->_title . " : Add new";

   break;     
 }    
 $arrMenuAdmin=MenuAdminModel::whereRaw("id != ?",[(int)@$id])->select("id","fullname","parent_id","sort_order","created_at","updated_at")->orderBy("sort_order","asc")->get()->toArray();
 $arrMenuAdminRecursive=array();
 menuAdminRecursiveForm($arrMenuAdmin ,0,"",$arrMenuAdminRecursive)  ;
 return view("adminsystem.".$this->_controller.".form",compact("arrMenuAdminRecursive","arrRowData","controller","task","title","icon","fullname"));      

}
  public function save(Request $request){
    $id 					       =	  trim($request->id)	;        
    $fullname 				   =	  trim($request->fullname)	;
    $form_url             =    trim($request->form_url);          
    $parent_id	         =		trim($request->parent_id);      
    $sort_order 			   =		trim($request->sort_order);            
    $data 		           =    array();      
    $item		             =    null;
    $info                 =   array();
    $checked              =   1;                           
    $msg                =   array();
    if(empty($fullname)){
      $checked = 0;
      $msg["fullname"] = "Thiếu chủ đề bài viết";
    }
    if(empty($sort_order)){
      $checked = 0;
      $msg["sort_order"] 		= "Thiếu sắp xếp";
    }
    if ($checked == 1) {    
      if(empty($id)){
        $item 				      = 	new MenuAdminModel;       
        $item->created_at 	=	date("Y-m-d H:i:s",time());                          
      } else{
        $item				         =	MenuAdminModel::find((int)@$id);                     	  		 
      }  
      $item->fullname 		     = @$fullname;
      $item->form_url             = @$form_url;                             
      $item->parent_id 		     = (int)@$parent_id;
      $item->sort_order 	     =	(int)@$sort_order;
      $item->updated_at 	=	date("Y-m-d H:i:s",time());    	        	
      $item->save();  	
      $msg['success']='Lưu thành công';
    } 
    $info = array(
      "checked"       => $checked,          
      'msg'       => $msg,      
      'link_edit'=>route('adminsystem.'.$this->_controller.'.getForm',['edit',@$item->id])
    );    		 			       
    return $info;       
  }
  public function deleteItem($id){
    $info                   =   array();
    $checked                =   1;                           
    $msg                    =   array();    
    $data                   =   MenuAdminModel::whereRaw("parent_id = ?",[(int)@$id])->get()->toArray();                    
    if(count($data) > 0){
      $checked     =   0;
      $msg['cannotdelete']                    =   "Phần tử này có dữ liệu con. Vui lòng không xoá";
    }          
    if($checked == 1){
      MenuAdminModel::find((int)@$id)->delete();      
      $msg['success']='Xóa thành công';                      
    }        
    $info = array(
      "checked"             => $checked,          
      'msg'                 => $msg,                         
    );      
    return redirect()->route("adminsystem.".$this->_controller.".getList")->with(["message"=>$info]);                
  }
  public function trash(Request $request){        
    $arrID                 =   $request->cid;             
    $info                 =   array();
    $checked              =   1;                           
    $msg                =   array();
    if(count($arrID)==0){
      $checked     =   0;

      $msg['chooseone']                    =   "Vui lòng chọn ít nhất 1 phần tử";
    }else{
      foreach ($arrID as $key => $value) {
        $item=MenuAdminModel::find($value);           
        $data = MenuAdminModel::whereRaw("parent_id",(int)@$value)->select('id')->get()->toArray();
        if(count($data) > 0){
         $checked     =   0;

         $msg['cannotdelete']                    =   "Phần tử đã có dữ liệu con vui lòng không xóa";
       } 
     }
    }
    if($checked == 1){        
      DB::table("menu_admin")->whereIn('id',@$arrID)->delete();   
      $msg['success']='Xóa thành công';
    }
    $info = array(
      "checked"       => $checked,          
      'msg'       => $msg,                      
    );        
    return redirect()->route("adminsystem.".$this->_controller.".getList")->with(["message"=>$info]);                          
  }
  public function sortOrder(Request $request){
    $info                 =   array();
    $checked              =   1;                           
    $msg                =   array();   
    $arrOrder=array();
    $arrOrder=$request->sort_order;  
    if(count($arrOrder) == 0){
      $checked     =   0;

      $msg['chooseone']                    =   "Vui lòng chọn ít nhất 1 phần tử";
    }
    if($checked==1){        
      foreach($arrOrder as $id => $value){                    
        $item=MenuAdminModel::find($id);
        $item->sort_order=(int)$value;            
        $item->save();            
      }     
      $msg['success']='Sắp xếp thành công';
    }    
    $info = array(
      "checked"       => $checked,          
      'msg'       => $msg,                              
    );        
    return redirect()->route("adminsystem.".$this->_controller.".getList")->with(["message"=>$info]);
  }      
}
?>
