<?php 
$seo_alias="";
if(!empty($alias)){
    $seo_alias=$alias;
}
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
            </div>
        </div>
        <div class="col-lg-6"></div>
        <div class="col-lg-3"></div>
        <?php
        break;
    }
    ?>    
</div>           
</div>
@endsection()               