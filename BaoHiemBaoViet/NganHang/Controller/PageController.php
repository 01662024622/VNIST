<?php 
	/**
	* 
	*/
	include_once 'NganHang/Model/Post.php';
	include_once 'NganHang/Model/Title.php';
	include_once 'NganHang/Model/Category.php';
	class PageController 
	{
		public $Title;
		public $Category;
		public $Post;
		function __construct()
		{
			$this->Title=new Title();
			$this->Category=new Category();
			$this->Post=new Post();
		}

		public function trangchu()
		{
			$data=$this->Category->getAll();
			// var_dump($data);
			include_once 'NganHang/index.php';

		}
		public function tintuc()
		{
			$data=$this->Title->getAll();
			include_once 'NganHang/tintuc.php';
		}
		public function page($id)
		{	$data=$this->Category->getAll();
			$post=$this->Post->detail($id);
			// $title=$this->Title->detail($id);
			// var_dump($post);
			// print_r($post);
			include_once 'NganHang/tintucsub.php';
		}
		public function override($ip){
			$data=$this->Post->override($ip);
			return $data;
		}
		
		
	}
 ?>