@extends("adminsystem.master")
@section("content")
<?php 
$linkNew			=	route('adminsystem.'.$controller.'.getForm',['add']);
$linkCancel			=	route('adminsystem.'.$controller.'.getList');
$linkLoadData		=	route('adminsystem.'.$controller.'.loadData');
$linkDelete			=	route('adminsystem.'.$controller.'.deleteItem');
$linkTrash			=	route('adminsystem.'.$controller.'.trash');
$linkSortOrder		=	route('adminsystem.'.$controller.'.sortOrder');
?>
<form class="form-horizontal" role="form" method="POST" name="frm" class="frm"  >
	<input type="hidden" name="filter_page" value="1">     	
	{{ csrf_field() }}    		
	<div class="portlet light bordered">
		<div class="portlet-title">
			@if(Session::has("message"))	
			<?php 
			$type_msg='';
			$checked=Session::get('message')['checked'];
			if((int)@$checked==1){
				$type_msg='note-success';
			}else{
				$type_msg='note-danger';
			}
			?>		
			<div class="note <?php echo $type_msg; ?>" >
				<?php 				
				$msg=Session::get("message")['msg'];				
				if(count(@$msg) > 0){
					?>					
					<ul>
						<?php 
						foreach (@$msg as $key => $value) {
							?>
							<li><?php echo $value; ?></li>
							<?php
						}
						?>                              
					</ul>					
					<?php
				}				
				?>
			</div>                                                                            
            @endif			
			<div class="caption font-dark">
				<i class="{{$icon}}"></i>
				<span class="caption-subject bold uppercase">{{$title}}</span>
			</div>     
			<div class="actions">
				<div class="table-toolbar">
					<div class="row">
						<div class="col-md-12">						
							<a href="<?php echo $linkNew; ?>" class="btn green">Thêm mới <i class="fa fa-plus"></i></a> 
							<a href="javascript:void(0)" onclick="javascript:submitForm('<?php echo $linkSortOrder; ?>')" class="btn grey-cascade">Sắp xếp <i class="fa fa-sort"></i></a> 
							<a href="javascript:void(0)" onclick="javascript:trashForm('<?php echo $linkTrash; ?>')" class="btn red">Xóa <i class="fa fa-trash"></i></a> 															
						</div>                                                
					</div>
				</div>    
			</div>                                 
		</div>
		<div class="portlet-body">		
			<table class="table table-bordered table-recursive">
				<thead>
					<tr>
						<th width="1%"><input type="checkbox" name="checkall-toggle"></th>           
						<th>Menu</th>
						<th>Menu cha</th>									
						<th width="10%">Sắp xếp</th>								
						<th width="1%">Sửa</th>  
						<th width="1%">Xóa</th>                     
					</tr>
				</thead>
				<tbody> 
				<?php 
					if(count($data) > 0){
						foreach($data as $key => $value){
							$checked=$value['checked'];
							$id=$value['id'];
							$fullname=$value['fullname'];						
							$parent_fullname=$value['parent_fullname'];						
							$sort_order=$value['sort_order'];
							$edited=$value['edited'];
							$deleted=$value['deleted'];
							?>
							<tr>
								<td><?php echo $checked; ?></td>                
								<td><?php echo $fullname; ?></td>
								<td><?php echo $parent_fullname; ?></td>											
								<td><?php echo $sort_order; ?></td>					
								<td><?php echo $edited; ?></td>  
								<td><?php echo $deleted; ?></td>          
							</tr>
							<?php
						}
					}
				?>				                                               
				</tbody>
			</table>	
			<?php echo $pagination->showPagination();?>		
		</div>
	</div>
</form>

@endsection()         

