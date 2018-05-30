<?php 

	include_once 'Model.php';

	/**
	* 
	*/
	class Receipt extends Model{
		public $tableName="hoa_don";
		public $primaryKey="id";
		public function getByCode($code)
		{
			$query="select * from ".$this->tableName." where code=".$code;
			$result=$this->conn->query($query);
			return $result->fetch_assoc();
		}
	}
 ?>