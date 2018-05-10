<?php 
	include_once 'Connection.php';
	/**
	* 
	*/
	class Model 
	{
	
		public $conn;
		public $tableName;
		public $primaryKey;
		function __construct()
		{
			$connect=new Connection();
			$this->conn=$connect->conn;
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
		public function detail($id)
		{
			$query="select * from ".$this->tableName." where ".$this->primaryKey."=".$id;
			$result=$this->conn->query($query);
			return $result->fetch_assoc();
		}
		public function insert($data)
		{	
			$query="";
			$keys="";
			$values="";
			foreach ($data as $key => $value) {
				$keys.=$key.",";
				$values.="'".$value."',";
			}
			$values=trim($values,',');
			$keys=trim($keys,',');
			$query="insert into ".$this->tableName." (".$keys.") values (".$values.")";
			echo "$query";
			return $this->conn->query($query);
		}
		public function delete($id)
		{
			$query="DELETE FROM ".$this->tableName." WHERE ".$this->primaryKey."=".$id;

			return $this->conn->query($query);
		}
		public function update($data)
		{
			$query="update ".$this->tableName." set ";
			foreach ($data as $key => $value) {
				if ($key=='id') {
					continue;
				}
				$query.=$key."='".$value."', ";
			}

			//echo "$query";
			$query=trim($query,", ");
			$query.=" where ".$this->primaryKey."=".$data['id'];
			//$query="update users
			//	set name = '".$name."', email = '".$email."', mobile = '".$mobile."', update_at='".$update_at."'
			//	where id=".$id.";";
			//echo $query;
			return $this->conn->query($query);
		}
	}
 ?>