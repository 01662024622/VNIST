<?php 

	include_once 'Model.php';

	/**
	* 
	*/
	class ReceiptDetail extends Model{
		public $tableName="chi_tiet_hoa_don";
		//public $primaryKey="id";
		public function getDetail($code)
		{
			$data=array();
			$query="select * from ".$this->tableName." where receipt_code=".$code;
			$result=$this->conn->query($query);
			while ($row=$result->fetch_assoc()) {
				$data[]=$row;
			}
			return $data;
		}
	}
 ?>