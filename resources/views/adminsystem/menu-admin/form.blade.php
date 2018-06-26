@extends("adminsystem.master")
@section("content")
<?php 
$linkCancel             =   route('adminsystem.'.$controller.'.getList');
$linkSave               =   route('adminsystem.'.$controller.'.save');
$inputFullName          =   '<input type="text" class="form-control" name="fullname"       value="'.@$fullname.'">'; 
$inputFormUrl             =   '<input type="text" class="form-control" name="form_url"       value="'.@$arrRowData['form_url'].'">';        
$parent_id              =   (count($arrRowData) > 0) ? @$arrRowData['parent_id'] : null ; 
$ddlMenuAdmin                =   cmsSelectboxCategory('parent_id', 'form-control',$arrMenuRecursive,@$arrRowData['parent_id'],"",'Chọn danh mục');
$inputSortOrder         =   '<input type="text" class="form-control" name="sort_order"   value="'.@$arrRowData['sort_order'].'">';
$id                     =   (count($arrRowData) > 0) ? @$arrRowData['id'] : "" ;
$inputID                =   '<input type="hidden" name="id"  value="'.@$id.'" />'; 
?>
<div class="portlet light bordered">
    <div class="portlet-title">
        <div class="note"  style="display: none;"></div>
        <div class="caption">
            <i class="{{$icon}}"></i>
            <span class="caption-subject font-dark sbold uppercase">{{$title}}</span>
        </div>
        <div class="actions">
           <div class="table-toolbar">
            <div class="row">
                <div class="col-md-12">
                    <button onclick="save()" class="btn purple">Lưu <i class="fa fa-floppy-o"></i></button> 
                    <a href="<?php echo $linkCancel; ?>" class="btn green">Thoát <i class="fa fa-ban"></i></a>                    </div>                                                
                </div>
            </div>    
        </div>
    </div>
    <div class="portlet-body form">
        <form class="form-horizontal" role="form" enctype="multipart/form-data" name="frm">
            {{ csrf_field() }}                                                           
                <?php echo  $inputID; ?>   
            <div class="form-body">
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>Menu</b></label>
                        <div class="col-md-10">
                            <?php echo $inputFullName; ?>
                            <span class="help-block"></span>
                        </div>
                    </div> 
                </div>
                <div class="row">  
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>form_url</b></label>
                        <div class="col-md-10">
                            <?php echo $inputFormUrl; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>     
                </div>                    
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>Menu cha</b></label>
                        <div class="col-md-10">
                            <?php echo $ddlMenuAdmin; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>   
                </div>                            
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-label"><b>Sắp xếp</b></label>
                        <div class="col-md-10">
                            <?php echo $inputSortOrder; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>  
                </div>                                                                
            </div>                  
        </form>
    </div>
</div>
<script type="text/javascript" language="javascript">    
    function save(){
        var id=$('input[name="id"]').val();        
        var fullname=$('input[name="fullname"]').val();
        var form_url=$('input[name="form_url"]').val();
        
        var parent_id=$('select[name="parent_id"]').val();        
        var menu_type_id=$('select[name="menu_type_id"]').val();  
        var menu_class=$('input[name="menu_class"]').val();
        var sort_order=$('input[name="sort_order"]').val();
        var status=$('select[name="status"]').val();     
        var token = $('input[name="_token"]').val();           
        var dataItem={
            "id":id,
            "fullname":fullname,
            "form_url":form_url,
            
            "parent_id":parent_id,
            "menu_type_id":menu_type_id,
            "menu_class":menu_class,
            "sort_order":sort_order,
            "status":status,
            "_token": token
        };
        $.ajax({
            url: '<?php echo $linkSave; ?>',
            type: 'POST',
            data: dataItem,
            
            async: false,
            success: function (data) {
                if(data.checked==1){        
                    alert(data.msg.success);                            
                    window.location.href = data.link_edit;
                }else{
                    showMsg('note',data);                    
                }
                spinner.hide();
            },
            error : function (data){
                spinner.hide();
            },
            beforeSend  : function(jqXHR,setting){
                spinner.show();
            },
        });
    }    
</script>
@endsection()            