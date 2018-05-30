<?php 
	include_once 'Model.php';

	/**
	* 
	*/
	class Customer extends Model
	{
		public $tableName="customers";
		public $primaryKey="id";

		public function findEmail($email)
		{
			$query="select * from ".$this->tableName." where email='".$email."'";
			$result=$this->conn->query($query);
			//echo $query;
			return $result->fetch_assoc();
		}
	}
 ?>