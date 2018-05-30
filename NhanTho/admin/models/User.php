<?php 
	include_once 'Model.php';

	/**
	* 
	*/
	class User extends Model
	{
		public $tableName="users";
		public $primaryKey="id";
		public function getPassword($email)
		{
			$query="select * from users where email='".$email."'";
			//echo $query;
			$result=$this->conn->query($query);
			return $result->fetch_assoc();
		}
	}
 ?>