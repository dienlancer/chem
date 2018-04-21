<?php 
$seo_alias="";
if(!empty($alias)){
    $seo_alias=$alias;
}
$setting=getSettingSystem();
$seo=getSeo();
?>
@extends("frontend.master")
@section("content")
<div class="container"> 
    <div class="row">
        <div class="col-lg-12">
            <?php 
            $md_sl_source_slideshow=getBanner("slideshow");
            if(count($md_sl_source_slideshow) > 0){
                $md_sl_items=$md_sl_source_slideshow["items"];
                if(count($md_sl_items) > 0){
                    ?>
                    <div class="relative margin-top-5">
                        <div class="slideshow">
                            <script type="text/javascript" language="javascript">        
                                $(document).ready(function(){
                                    $(".slick-slideshow").slick({
                                        dots: false,
                                        autoplay:true,
                                        arrows:false,
                                        adaptiveHeight:true,
                                        slidesToShow: 1,
                                        slidesToScroll: 1,        
                                    });  
                                });     
                            </script>
                            <div class="slick-slideshow">    
                                <?php 
                                foreach ($md_sl_items as $key => $value) {
                                    $md_sl_alt=$value["alt"];
                                    $md_sl_featured_img=asset('upload/'.$value["image"]);
                                    ?>
                                    <div><img src="<?php echo $md_sl_featured_img; ?>" alt="<?php echo $md_sl_alt; ?>" /></div>
                                    <?php 
                                }
                                ?>              
                            </div>
                        </div>
                        <form action="<?php echo route('frontend.index.search'); ?>" method="post" name="frm-search" >
                            {{ csrf_field() }}
                            <div><input type="text" name="q" autocomplete="off" placeholder="Tìm kiếm sản phẩm" value=""></div>
                            <div><a href="javascript:void(0);" onclick="document.forms['frm-search'].submit();">Tìm kiếm</a></div>
                        </form>
                    </div>                  
                    <?php
                }  
            }
            ?>
        </div>
    </div>
    <div class="row">
        <?php             
        switch ($layout){            
            case 'three-column':
            ?>
            <div class="col-lg-3">                
                <?php     
                $args = array(                         
                    'menu_class'            => 'cateprodhorizontalright',                                        
                    'before_wrapper'        => '<div class="cate-product-horizontal-right">',
                    'before_title'          => '<h2>',
                    'after_title'           => '</h2>',
                    'before_wrapper_ul'     =>  '<div>',
                    'after_wrapper_ul'      =>  '</div>',
                    'after_wrapper'         => '</div>'     ,
                    'link_before'           => '<div><i class="fas fa-caret-right"></i></div>', 
                    'link_after'            => '<div><i class="fas fa-caret-down"></i></div>',                                        
                    'theme_location'        => 'category-side-bar' ,
                    'menu_li_actived'       => 'current-menu-item',
                    'menu_item_has_children'=> 'menu-item-has-children',
                    'alias'                 => $seo_alias
                );                    
                wp_nav_menu($args);
                ?>    
                <div class="cate-product-horizontal-right">
                    <h2>SẢN PHẨM MỚI ĐĂNG</h2>
                    <div class="zizakide">
                        <?php                                                 
                        $spmd_source=App\ProductModel::whereRaw('status = 1')->orderBy('id','desc')->take(4)->select('id','fullname','alias','image')->get()->toArray();                        
                        if(count($spmd_source) > 0){
                            foreach ($spmd_source as $key => $value) {
                                $spmd_id=$value['id'];
                                $spmd_fullname=$value['fullname'];
                                $spmd_permalink=route('frontend.index.index',[$value['alias']]);
                                $spmd_featured_img=get_product_thumbnail($value['image']);
                                ?>
                                <div class="npan">
                                    <div class="col-xs-4"><img src="<?php echo $spmd_featured_img; ?>" /></div>
                                    <div class="col-xs-8 no-padding-left"><a href="<?php echo $spmd_permalink; ?>"><?php echo $spmd_fullname; ?></a></div>
                                </div>
                                <?php
                            }
                        }                        
                        ?>                        
                    </div>
                </div>                                 
            </div>        
            <div class="col-lg-6">
            	<?php 
            	switch ($component) {
            		case 'home':
            		?>@include("frontend.home")<?php                     
            		break;  
            		case "category-article":    
            		case "articles":                                                                          
            		?>@include("frontend.category-article")<?php
            		break;                                         
            		case "article":                                                            
            		?>@include("frontend.article")<?php
            		break;                
            		case "page":                                                            
            		?>@include("frontend.page")<?php
            		break;            
            		case "search-product":             
            		case "category-product":                                       
            		?>@include("frontend.category-product")<?php
            		break; 
            		case "product":                                                
            		?>@include("frontend.product")<?php
            		break;
            		case "gio-hang":                                                
            		?>@include("frontend.cart")<?php
            		break; 
            		case "register":                                                
            		?>@include("frontend.register")<?php
            		break;
            		case "account":                                                
            		?>@include("frontend.account")<?php
            		break;
            		case "login":                                                
            		?>@include("frontend.login")<?php
            		break;
            		case "login-join-project":                                                
            		?>@include("frontend.login-join-project")<?php
            		break;
            		case "security":                                                
            		?>@include("frontend.security")<?php
            		break;
            		case "xac-nhan-thanh-toan":                                                
            		?>@include("frontend.confirm-checkout")<?php
            		break;
            		case "dang-nhap-thanh-toan":                                                
            		?>@include("frontend.login-checkout")<?php
            		break;
            		case "hoan-tat-thanh-toan":                                                
            		?>@include("frontend.finished-checkout")<?php
            		break;
            		case "hoa-don":                                                
            		?>@include("frontend.invoice")<?php
            		break;                                        
            	}
            	?>
            </div>
            <div class="col-lg-3">
                <div class="cate-product-horizontal-right">
                    <h2>TIN TỨC SỰ KIỆN</h2>
                    <div class="zizakide">
                        <?php                                                 
                        $ttsk_source=App\ArticleModel::whereRaw('status = 1')->orderBy('id','desc')->take(4)->select('id','fullname','alias','image')->get()->toArray();                        
                        if(count($ttsk_source) > 0){
                            foreach ($ttsk_source as $key => $value) {
                                $ttsk_id=$value['id'];
                                $ttsk_fullname=$value['fullname'];
                                $ttsk_permalink=route('frontend.index.index',[$value['alias']]);
                                $ttsk_featured_img=get_article_thumbnail($value['image']);
                                ?>
                                <div class="npan">
                                    <div class="col-xs-4"><img src="<?php echo $ttsk_featured_img; ?>"  /></div>
                                    <div class="col-xs-8 no-padding-left"><a href="<?php echo $ttsk_permalink; ?>"><?php echo $ttsk_fullname; ?></a></div>
                                </div>
                                <?php
                            }
                        }                        
                        ?>                        
                    </div>
                </div>  
                <div class="cate-product-horizontal-right">
                    <h2>HỖ TRỢ TRỰC TUYẾN</h2>
                    <?php 
                    $name_nvkd_1=$setting['name_nvkd_1']['field_value'];
                    $name_nvkd_2=$setting['name_nvkd_2']['field_value'];
                    $name_nvkd_3=$setting['name_nvkd_3']['field_value'];
                    $name_nvkd_4=$setting['name_nvkd_4']['field_value'];

                    $skype_nvkd_1=$setting['skype_nvkd_1']['field_value'];
                    $skype_nvkd_2=$setting['skype_nvkd_2']['field_value'];
                    $skype_nvkd_3=$setting['skype_nvkd_3']['field_value'];
                    $skype_nvkd_4=$setting['skype_nvkd_4']['field_value'];

                    $email_nvkd_1=$setting['email_nvkd_1']['field_value'];
                    $email_nvkd_2=$setting['email_nvkd_2']['field_value'];
                    $email_nvkd_3=$setting['email_nvkd_3']['field_value'];
                    $email_nvkd_4=$setting['email_nvkd_4']['field_value'];

                    $tel_nvkd_1=$setting['tel_nvkd_1']['field_value'];
                    $tel_nvkd_2=$setting['tel_nvkd_2']['field_value'];
                    $tel_nvkd_3=$setting['tel_nvkd_3']['field_value'];
                    $tel_nvkd_4=$setting['tel_nvkd_4']['field_value'];
                    ?>
                    <div class="box-article-list">  
                        <div class="box-support margin-top-5 padding-top-5 padding-left-5 padding-bottom-5">
                            <div><img src="<?php echo asset('upload/user-icon.png'); ?>" /><span class="employee-name margin-left-5"><?php echo $name_nvkd_1; ?></span></div>
                            <div class="margin-top-5">
                                <span><a href="skype:<?php echo $skype_nvkd_1; ?>?add"><img src="<?php echo asset('upload/skype-icon.png'); ?>"></a></span>                             
                                <span class="margin-left-5"><a href="mailto:<?php echo $email_nvkd_1; ?>"><img src="<?php echo asset('upload/mail-icon.png'); ?>"></a></span>
                                <span class="margin-left-5 phone-tel"><i class="fa fa-phone" aria-hidden="true"></i></span>
                                <span class="margin-left-5"><img src="<?php echo asset('upload/zalo-icon.png'); ?>" /></span>
                                <span class="margin-left-5"><b><?php echo $tel_nvkd_1; ?></b></span>                                
                            </div>
                        </div>
                        <div class="box-support margin-top-5 padding-top-5 padding-left-5 padding-bottom-5">
                            <div><img src="<?php echo asset('upload/user-icon.png'); ?>" /><span class="employee-name margin-left-5"><?php echo $name_nvkd_2; ?></span></div>
                            <div class="margin-top-5">
                                <span><a href="skype:<?php echo $skype_nvkd_2; ?>?add"><img src="<?php echo asset('upload/skype-icon.png'); ?>"></a></span>                             
                                <span class="margin-left-5"><a href="mailto:<?php echo $email_nvkd_2; ?>"><img src="<?php echo asset('upload/mail-icon.png'); ?>"></a></span>
                                <span class="margin-left-5 phone-tel"><i class="fa fa-phone" aria-hidden="true"></i></span>
                                <span class="margin-left-5"><img src="<?php echo asset('upload/zalo-icon.png'); ?>" /></span>
                                <span class="margin-left-5"><b><?php echo $tel_nvkd_2; ?></b></span>                                
                            </div>
                        </div>
                        <div class="box-support margin-top-5 padding-top-5 padding-left-5 padding-bottom-5">
                            <div><img src="<?php echo asset('upload/user-icon.png'); ?>" /><span class="employee-name margin-left-5"><?php echo $name_nvkd_3; ?></span></div>
                            <div class="margin-top-5">
                                <span><a href="skype:<?php echo $skype_nvkd_3; ?>?add"><img src="<?php echo asset('upload/skype-icon.png'); ?>"></a></span>                             
                                <span class="margin-left-5"><a href="mailto:<?php echo $email_nvkd_3; ?>"><img src="<?php echo asset('upload/mail-icon.png'); ?>"></a></span>
                                <span class="margin-left-5 phone-tel"><i class="fa fa-phone" aria-hidden="true"></i></span>
                                <span class="margin-left-5"><img src="<?php echo asset('upload/zalo-icon.png'); ?>" /></span>
                                <span class="margin-left-5"><b><?php echo $tel_nvkd_3; ?></b></span>                                
                            </div>
                        </div>
                        <div class="box-support margin-top-5 padding-top-5 padding-left-5 padding-bottom-5">
                            <div><img src="<?php echo asset('upload/user-icon.png'); ?>" /><span class="employee-name margin-left-5"><?php echo $name_nvkd_4; ?></span></div>
                            <div class="margin-top-5">
                                <span><a href="skype:<?php echo $skype_nvkd_4; ?>?add"><img src="<?php echo asset('upload/skype-icon.png'); ?>"></a></span>                             
                                <span class="margin-left-5"><a href="mailto:<?php echo $email_nvkd_4; ?>"><img src="<?php echo asset('upload/mail-icon.png'); ?>"></a></span>
                                <span class="margin-left-5 phone-tel"><i class="fa fa-phone" aria-hidden="true"></i></span>
                                <span class="margin-left-5"><img src="<?php echo asset('upload/zalo-icon.png'); ?>" /></span>
                                <span class="margin-left-5"><b><?php echo $tel_nvkd_4; ?></b></span>                                
                            </div>
                        </div>                              
                    </div>
                </div>     
                <?php 
                $ads_source=getBanner('advertising');
                if(count($ads_source) > 0){
                    $ads_items=$ads_source['items'];                    
                    ?>
                    <div class="cate-product-horizontal-right">
                        <h2><?php echo $ads_source['fullname']; ?></h2>
                        <div>
                            <?php 
                            if(count(@$ads_items) > 0){
                                foreach (@$ads_items as $key => $value) {
                                    $ads_image=asset('/upload/'.$value['image']);
                                    $ads_alt=$value['alt'];
                                    $ads_page_url=$value['page_url'];
                                    ?>
                                    <div class="margin-top-5"><a href="<?php echo $ads_page_url; ?>"><img src="<?php echo $ads_image; ?>" alt="<?php echo $ads_alt; ?>" /></a></div>
                                    <?php   
                                }                                
                            }
                            ?>
                        </div>
                    </div>     
                    <?php
                }                
                ?>                
            </div>
            <?php
            break;
        }
        ?>    
    </div>         
</div>
@endsection()               