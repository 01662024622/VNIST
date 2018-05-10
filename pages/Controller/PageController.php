<?php 
	/**
	* 
	*/
	include_once 'pages/Model/Title.php';
	include_once 'pages/Model/Post.php';
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
			include_once 'pages/trangchu.php';
		}
		public function tintuc()
		{
			$data=$this->Title->getAll();
			include_once 'pages/tintuc.php';
		}
		public function page($id)
		{
			$post=$this->Post->detail($id);
			// var_dump($post);
			// print_r($post);
			include_once 'pages/tintucsub.php';
		}
		public function override($ip){
			$data=$this->Post->override($ip);
			return $data;
		}
		
	}
 ?>