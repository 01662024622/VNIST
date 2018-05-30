<?php 
	include_once 'Model.php';
	/**
	* 	
	*/
	class Category extends Model
	{
		public $tableName="categories";
		public $primaryKey="id";

		public function products($id)
		{
			$data=array();
			$query="select * from products where category_id=".$id;
			$result=$this->conn->query($query);
			while ($row=$result->fetch_assoc()) {
				$data[]=$row;
			}
			return $data;
		}
	}
 ?>