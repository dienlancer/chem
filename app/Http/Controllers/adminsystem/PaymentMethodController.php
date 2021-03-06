<?php namespace App\Http\Controllers\adminsystem;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\PaymentMethodModel;
use App\InvoiceModel;
use DB;
class PaymentMethodController extends Controller {
 var $_controller="payment-method";	
 var $_title="Phương thức thanh toán";
 var $_icon="icon-settings font-dark";
 public function getList(){		
  $controller=$this->_controller;	
  $task="list";
  $title=$this->_title;
  $icon=$this->_icon;		
  
  $arrPrivilege=getArrPrivilege();
  $requestControllerAction=$this->_controller."-list";         
  if(in_array($requestControllerAction,$arrPrivilege)){
    return view("adminsystem.".$this->_controller.".list",compact("controller","task","title","icon")); 
  }
  else{
    return view("adminsystem.no-access",compact('controller'));
  }
}	    
public function loadData(Request $request){           
  $query=DB::table('payment_method');        
  if(!empty(@$request->filter_search)){
    $query->where('payment_method.fullname','like','%'.trim(@$request->filter_search).'%');
  }
  $data=$query->select('payment_method.id','payment_method.fullname','payment_method.alias','payment_method.status','payment_method.sort_order','payment_method.created_at','payment_method.updated_at')
  ->groupBy('payment_method.id','payment_method.fullname','payment_method.alias','payment_method.status','payment_method.sort_order','payment_method.created_at','payment_method.updated_at')
  ->orderBy('payment_method.sort_order', 'asc')->get()->toArray()     ;              
  $data=convertToArray($data);    
  $data=paymentMethodConverter($data,$this->_controller);            
  return $data;
}   
public function getForm($task,$id=""){     
  $controller=$this->_controller;     
  $title="";
  $icon=$this->_icon; 
  $arrRowData=array();  
  $arrPrivilege=getArrPrivilege();
  $requestControllerAction=$this->_controller."-form";  
  if(in_array($requestControllerAction, $arrPrivilege)){
    switch ($task) {
     case 'edit':
     $title=$this->_title . " : Update";
     $arrRowData=PaymentMethodModel::find((int)@$id)->toArray();                     
     break;
     case 'add':
     $title=$this->_title . " : Add new";
     break;     
   }    
   return view("adminsystem.".$this->_controller.".form",compact("arrRowData","controller","task","title","icon"));
 } else{
  return view("adminsystem.no-access",compact('controller'));
}     

}
public function save(Request $request){
  $id                   =   trim($request->id);        
  $fullname             =   trim($request->fullname);
  $alias                =   trim($request->alias);
  $content              =   trim($request->content);          
  $status               =   trim($request->status);        
  $sort_order           =   trim($request->sort_order);                  
  $data                 =   array();
  

  $item                 =   null;
  
  $info                 =   array();
  $checked              =   1;                           
  $msg                =   array();
  if(empty($sort_order)){
   $checked = 0;
   
   $msg["sort_order"]    = "Thiếu sắp xếp";
 }
 if((int)$status==-1){
   $checked = 0;
   
   $msg["status"]      = "Thiếu trạng thái";
 }                    
 if ($checked == 1) {    
  if(empty($id)){
    $item         =   new PaymentMethodModel;       
    $item->created_at   = date("Y-m-d H:i:s",time());                             
  } else{
    $item       = PaymentMethodModel::find((int)@$id);                                           
  }        
  $item->fullname  =  $fullname;
  $item->alias = $alias;
  $item->content = $content;                   
  $item->sort_order       = (int)@$sort_order;
  $item->status           = (int)@$status;    
  $item->updated_at       = date("Y-m-d H:i:s",time());               
  $item->save();                    
  $msg['success']='Lưu thành công';  
}
$info = array(
  "checked"       => $checked,          
  'msg'       => $msg,                
  "id"            => (int)@$id
);                       

return $info;
}
public function changeStatus(Request $request){
  $id             =       (int)$request->id;     
  $info                 =   array();
  $checked              =   1;                           
  $msg                =   array();           
  $status         =       (int)$request->status;
  $item           =       PaymentMethodModel::find((int)@$id);        
  $item->status   =       $status;
  $item->save();
  $msg['success']='Cập nhật thành công';      
  $data                   =   $this->loadData($request);
  $info = array(
    "checked"       => $checked,          
    'msg'       => $msg,           
    'data'              => $data
  );
  return $info;
}

public function deleteItem(Request $request){
  $id                     =   (int)@$request->id;              
  
  $info                 =   array();
  $checked              =   1;                           
  $msg                =   array();
  $data=InvoiceModel::whereRaw("payment_method_id = ?",[(int)@$id])->select('id')->get()->toArray();
  if(count($data) > 0){
    $checked                =   0;              
    $msg['cannotdelete']                    =   "Phần tử có dữ liệu con. Vui lòng không xoá";
  }                  
  if($checked == 1){
    $item = PaymentMethodModel::find((int)@$id);
    $item->delete(); 
    $msg['success']='Xóa thành công';                
  }        
  $data                   =   $this->loadData($request);
  $info = array(
    "checked"       => $checked,          
    'msg'       => $msg,    
    'data'              => $data
  );
  return $info;
}
public function updateStatus(Request $request){
  $strID                 =   $request->str_id;     
  $status                 =   $request->status;            
  $info                 =   array();
  $checked              =   1;                           
  $msg                =   array();           
  $strID=substr($strID, 0,strlen($strID) - 1);
  $arrID=explode(',',$strID);                 
  if(empty($strID)){
    $checked            =   0;
    
    $msg['chooseone']            =   "Vui lòng chọn ít nhất một phần tử";
  }
  if($checked==1){
    foreach ($arrID as $key => $value) {
      if(!empty($value)){
        $item=PaymentMethodModel::find($value);
        $item->status=$status;
        $item->save();    
      }                
    }
    $msg['success']='Cập nhật thành công';
  }                 
  $data                   =   $this->loadData($request);
  $info = array(
    "checked"       => $checked,          
    'msg'       => $msg,    
    'data'              => $data
  );
  return $info;
}
public function trash(Request $request){
  $strID                 =   $request->str_id;               
  
  $info                 =   array();
  $checked              =   1;                           
  $msg                =   array();

  $strID=substr($strID, 0,strlen($strID) - 1);
  $arrID=explode(',',$strID);                 
  if(empty($strID)){
    $checked            =   0;
    
    $msg['chooseone']            =   "Vui lòng chọn ít nhất một phần tử";
  }
  $data=DB::table('invoice')->whereIn('payment_method_id',@$arrID)->select('id')->get()->toArray();             
  if(count($data) > 0){
    $checked                =   0;
    
    $msg['cannotdelete']                    =   "Phần tử này có dữ liệu con. Vui lòng không xoá";
  }   
  if($checked == 1){    
    DB::table('payment_method')->whereIn('id',@$arrID)->delete();                                 
    $msg['success']='Xóa thành công';               
  }
  $data                   =   $this->loadData($request);
  $info = array(
    "checked"       => $checked,          
    'msg'       => $msg,         
    'data'              => $data
  );
  return $info;
}
public function sortOrder(Request $request){
  $sort_json              =   $request->sort_json;           
  $data_order             =   json_decode($sort_json);       
  $info                 =   array();
  $checked              =   1;                           
  $msg                =   array(); 
  if(count($data_order) > 0){              
    foreach($data_order as $key => $value){       
      if(!empty($value)){
        $item=PaymentMethodModel::find((int)$value->id);                
        $item->sort_order=(int)$value->sort_order;                         
        $item->save();                      
      }                                                 
    } 

  } 
  $msg['success']='Cập nhật thành công';        
  $data                   =   $this->loadData($request);
  $info = array(
    "checked"       => $checked,          
    'msg'       => $msg,          
    'data'              => $data
  );
  return $info;
}  
}
?>
