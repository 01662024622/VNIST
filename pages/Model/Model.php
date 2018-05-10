<?php 
	include_once 'Connection.php';
	/**
	* 
	*/
	class Model 
	{
	
		public $conn;
		public $connSimple;
		public $tableName;
		public $primaryKey;
		function __construct()
		{
			$connect=new Connection();
			$this->conn=$connect->conn;
			$connSimple=new Connection();
			$this->connSimple=$connSimple->conn;
		}
		public function getAll()
		{
			$data=array();
			$query="select * from ".$this->tableName;
			$result=$this->conn->query($query);
			while ($row=$result->fetch_assoc()) {
				$data[]=$row;
			}
			return $data;
		}
		public function override($ip)
		{	date_default_timezone_set("America/New_York");
			$time=date("Y-m-d h:i:sa");

			$query="insert into overrides (ip) values ('".$ip."')";
			// return $query;
			$result=$this->conn->query($query);
			// return $data->fetch_assoc();
		}
		public function detail($id)
		{
			$query="select * from ".$this->tableName." where ".$this->primaryKey."=".$id;
			$result=$this->conn->multi_query($query);
			if ($result==true) {
				$query="select * from ".$this->tableName." where ".$this->primaryKey."=".$id;
				$result=$this->connSimple->query($query);
			// 	// return $query;
			// 	$result=$this->conn->query($query);
			}
			return $result->fetch_assoc();
		}
	}
 ?>