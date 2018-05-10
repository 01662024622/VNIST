<?php 
	include_once 'Model.php';

	/**
	* 
	*/
	class Product extends Model
	{
		public $tableName="products";
		public $primaryKey="id";

		public function addToCart($product,$id)
		{
			//session_start();
			if (isset($_SESSION['cart'][$id])) {
				$_SESSION['cart'][$id]['quantity']++;
			}else {
				$_SESSION['cart'][$id]=$product;
				$_SESSION['cart'][$id]['quantity']=1;
			}
		}
		public function deleteFromCart($id)
		{
			session_start();
			unset($_SESSION['cart'][$id]);
		}
		public function getByCode($code)
		{
			$query="select * from ".$this->tableName." where code='".$code."'";
			$result=$this->conn->query($query);
			return $result->fetch_assoc();
		}
	}
 ?>