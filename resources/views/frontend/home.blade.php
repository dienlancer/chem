<form method="post" class="margin-top-10" name="frm">
	<input type="hidden" name="filter_page" value="1">         
	{{ csrf_field() }}	
	<div class="diva">
		<h1 class="fixbuggest">SẢN PHẨM MỚI</h1>
		<div class="clr"></div>
	</div>
	<div class="row">
		<?php 			
		if(count($items) > 0){			
			$k=1;			
			foreach ($items as $key => $value) {
				$product_id=$value['id'];
				$product_alias=$value['alias'];
				$product_fullname=$value['fullname'];
				$product_permalink=route('frontend.index.index',[$product_alias]) ;
				$product_img =get_product_thumbnail($value['image']) ;		
				$product_price=$value['price'];
				$product_sale_price=$value['sale_price'];
				$html_price='';                     
				if((int)@$product_sale_price > 0){              
					$price_on_html ='<span class="price-on">'.fnPrice($product_sale_price).'</span>';
					$price_off_html='<span class="price-off">'.fnPrice($product_price).'</span>' ;                 
					$html_price='<div class="sale-price">'.$price_on_html.'</div><div class="old-price">'.$price_off_html.'</div><div class="clr"></div>' ;              
				}else{
					$html_price='<span class="price-on">'.fnPrice($product_price).'</span>' ;                  
				}   					
				?>
				<div class="col-sm-4 no-padding">
					<div class="box-product box-product-rian">
						<div class="box-product-img">
							<center><figure><a href="<?php echo $product_permalink; ?>"><img src="<?php echo $product_img; ?>"></a></figure></center>
						</div>
						<h3 class="box-product-intro-title"><a href="<?php echo $product_permalink; ?>"><b><?php echo $product_fullname; ?></b></a></h3>
						<div class="box-product-price">
							<div><center><?php echo $html_price; ?></center></div>
						</div>
					</div>
				</div>
				<?php			
				if($k%3==0 || $k==count($items)){
					echo '<div class="clr"></div>';
				}
				$k++;
			}
		}else{
			echo '<div class="margin-top-15"><center>Đang cập nhật...</center></div>';
		}
		?>
	</div>
	<div class="margin-top-15">
		<?php 
		if(count($items) > 0){
			echo $pagination->showPagination();
		}  
		?>
	</div>
</form>