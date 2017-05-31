<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!-- The HTML 4.01 Transitional DOCTYPE declaration-->
<!-- above set at the top of the file will set     -->
<!-- the browser's rendering engine into           -->
<!-- "Quirks Mode". Replacing this declaration     -->
<!-- with a "Standards Mode" doctype is supported, -->
<!-- but may lead to some differences in layout.   -->

<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <!-- Latest compiled and minified CSS -->
    
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
     <meta name="viewport" content="width=device-width, initial-scale=1">    
     <link rel="stylesheet" type="text/css" href="Style.css">
     
    <title>LogIn Page</title>
  </head>
  
  
  <body>
    <div class="well" id="header">
    <img id="Setmore_img" src="http://is5.mzstatic.com/image/thumb/Purple69/v4/50/15/f0/5015f041-cf0a-5d40-1401-74a30a1b39c2/source/175x175-75.png" width="50px"></img>  
   <div style="float:right;">
 <table style="margin-top:-10px;">
  <tr>
    <td><label >Email</label></td>
    <td><label >Password</label></td>   
  </tr>
  <tr>
    <td><input class="input_box_LogIn "  id="LogIn_Email" type="text" placeholder="Email" required/></td>
    <td><input class="input_box_LogIn"  id="LogIn_password" type="text" placeholder="Password" required/></td> 
   
    <td><input  id="LogIn_button" type="submit" value="Log In"/></td>
  </tr>
</table>
</div>
</div>
</div>
<div  class="row">
    <div  class="col-md-6">   
    <h1 id="Titel">Setmore</h1>
    <img class="Setmore_img_logo" src="http://is5.mzstatic.com/image/thumb/Purple69/v4/50/15/f0/5015f041-cf0a-5d40-1401-74a30a1b39c2/source/175x175-75.png" ></img>  
    </div>
    
  <div class="col-md-6" >
    <h1 class="Center_align">Create an Account for Free!</h1>
<p class="Center_align">Get a free account in 30 seconds. No credit card required.</p>


<table  id="SignUp_table1" cellpadding="10">
<tr><td></td>
 <td> <p id="AccountCreationMessage"> </p></td></tr>
  <tr>
    <th><label class="SignUp_Lable">Name</label></th>
    <td><input  class="input_box"  id ="name" type="text" placeholder="Name" required/></td>
    <td><p id="Check_Name"></p></td>
    
  </tr>
  <tr>
    <th><label class="SignUp_Lable" >Email</label></th> 
    <td><input  class="input_box" id="email"  type="text" placeholder="Email" required/></td> 
    <td><p id="Check_Email"></p></td>
</td>
  </tr>
  <tr>
    <th><label class="SignUp_Lable" >Password</label></th> 
    <td><input  class="input_box" id="pswd" type="password" placeholder="Password" required/></td>
    <td> <button id="ShowPassword">Show</button>
    
  </tr> 
  <tr><td></td><td><div style="margin:auto;" id="error" > 
<h4>Password must meet the following requirements:</h4>
 <ul>
        <li id="letter" >At least <strong>one letter</strong></li>
        <li id="capital" >At least <strong>one capital letter</strong></li>
        <li id="number" >At least <strong>one number</strong></li>
        <li id="length" >Be at least <strong>8 characters</strong></li>
    </ul> 
    </div></td></tr>
  <tr>
    <th><label class="SignUp_Lable" >Confirm Password</label></th> 
    <td><input  class="input_box" id="conPswd" type="password" placeholder="Confirm Password" required/></td>
    <td><p id="ConPword"></p></td>
  </tr> 
  
</table>
<input id="SignUp_button"   type="submit" value="SIGN UP"/>
<span id="hidden"> Confirm password should be same as password </span>

     
    
  
        </div>
</div>
    
        <script src="Jquery.js"> </script>

  </body>
</html>
