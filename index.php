<html lang="en" >
<?php
include("../connection/connect.php");
error_reporting(0);
session_start();
if(isset($_POST['submit']))
{
	$username = $_POST['username'];
	$password = $_POST['password'];
	
	if(!empty($_POST["submit"])) 
     {
	$loginquery ="SELECT * FROM admin WHERE username='$username' && password='".md5($password)."'";
	$result=mysqli_query($db, $loginquery);
	$row=mysqli_fetch_array($result);
	
	                        if(is_array($row))
								{
                                    	$_SESSION["adm_id"] = $row['adm_id'];
										 header("refresh:1;url=dashboard.php");
	                            } 
							else
							    {
                                      	$message = "Invalid Username or Password!";
                                }
	 }
	
	
}

if(isset($_POST['submit1'] ))
{
     if(empty($_POST['cr_user']) ||
   	    empty($_POST['cr_email'])|| 
		empty($_POST['cr_pass']) ||  
		empty($_POST['cr_cpass']) ||
		empty($_POST['code']))
		{
			$message = "ALL fields must be fill";
		}
	else
	{
		
	
	$check_username= mysqli_query($db, "SELECT username FROM admin where username = '".$_POST['cr_user']."' ");
	
	$check_email = mysqli_query($db, "SELECT email FROM admin where email = '".$_POST['cr_email']."' ");
	
	$check_code = mysqli_query($db, "SELECT adm_id FROM admin where code = '".$_POST['code']."' ");

	
	if($_POST['cr_pass'] != $_POST['cr_cpass']){
       	$message = "Password not match";
    }
	
    elseif (!filter_var($_POST['cr_email'], FILTER_VALIDATE_EMAIL)) // Validate email address
    {
       	$message = "Invalid email address please type a valid email!";
    }
	elseif(mysqli_num_rows($check_username) > 0)
     {
    	$message = 'username Already exists!';
     }
	elseif(mysqli_num_rows($check_email) > 0)
     {
    	$message = 'Email Already exists!';
     }
	 if(mysqli_num_rows($check_code) > 0)           // if code already exist 
             {
                   $message = "Unique Code Already Redeem!";
             }
	else{
       $result = mysqli_query($db,"SELECT id FROM admin_codes WHERE codes =  '".$_POST['code']."'");  //query to select the id of the valid code enter by user! 
					  
                     if(mysqli_num_rows($result) == 0)     //if code is not valid
						 {
                            // row not found, do stuff...
			                 $message = "invalid code!";
                         } 
                      
                      else                                 //if code is valid 
					     {
	
								$mql = "INSERT INTO admin (username,password,email,code) VALUES ('".$_POST['cr_user']."','".md5($_POST['cr_pass'])."','".$_POST['cr_email']."','".$_POST['code']."')";
								mysqli_query($db, $mql);
									$success = "Admin Added successfully!";
						 }
        }
	}

}
?>