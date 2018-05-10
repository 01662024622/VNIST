<?php 
	/**
	* 
	*/
	include_once 'NganHang/Model/Title.php';
	include_once 'NganHang/Model/Post.php';
	class PageController 
	{
		public $Title;
		public $Post;
		function __construct()
		{
			$this->Title=new Title();
			$this->Post=new Post();
		}

		public function trangchu()
		{
			$data=$this->Title->getAll();
			include_once 'NganHang/index.php';
		}
		public function tintuc()
		{
			$data=$this->Title->getAll();
			include_once 'NganHang/tintuc.php';
		}
		public function page($id)
		{
			$post=$this->Post->detail($id);
			$title=$this->Title->detail($id);
			// var_dump($post);
			// print_r($post);
			include_once 'NganHang/tintucsub.php';
		}
		
	}
 ?>