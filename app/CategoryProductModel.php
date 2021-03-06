<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class CategoryProductModel extends Model {

	protected $table="category_product";
	protected $fillable=["fullname","alias","meta_keyword","meta_description","parent_id","image","sort_order","status","created_at","updated_at"];		
}
