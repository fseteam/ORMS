<!DOCTYPE html>
<html lang="en">
<?php
include("connection/connect.php");
include_once 'product-action.php';
error_reporting(0);
session_start();
if(empty($_SESSION["user_id"]))
{
	header('location:login.php');
}
else{

										  
	foreach ($_SESSION["cart_item"] as $item)
	{
											
	$item_total += ($item["price"]*$item["quantity"]);
												
	if($_POST['submit'])
	{
						
	$SQL="insert into users_orders(u_id,title,quantity,price) values('".$_SESSION["user_id"]."','".$item["title"]."','".$item["quantity"]."','".$item["price"]."')";
						
	mysqli_query($db,$SQL);
														
        $success = "Thankyou! Your Order Placed successfully!";

														
														
}
}
?>
