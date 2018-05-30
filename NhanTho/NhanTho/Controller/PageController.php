<?php 
	/**
	* 
	*/
	include_once 'NhanTho/Model/Title.php';
	include_once 'NhanTho/Model/Post.php';
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
			include_once 'NhanTho/index.php';
		}
		public function tintuc()
		{
			$title=$this->Title->getAll();
			$post=$this->Post->getAll();
			include_once 'NhanTho/tintuc.php';
		}
		public function page($id)
		{
			$post=$this->Post->detail($id);
			// var_dump($post);
			// print_r($post);
			include_once 'NhanTho/tintucsub.php';
		}
		public function override($ip){
			$data=$this->Post->override($ip);
			return $data;
		}
		
	}
 ?>