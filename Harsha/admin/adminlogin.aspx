<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="Harsha.admin.adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    
   <title></title>
    <link href="css/loginstyle.css" rel="stylesheet" type="text/css" media="all"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
    <link href='http://fonts.googleapis.com/css?family=Roboto:500,900italic,900,400italic,100,700italic,300,700,500italic,100italic,300italic,400' rel='stylesheet' type='text/css'/>

    <style>
    #view-source {
      position: fixed;
      display: block;
      right: 0;
      bottom: 0;
      margin-right: 40px;
      margin-bottom: 40px;
      z-index: 900;
    }

    


    </style>
</head>
<body>
    <form id="f1" runat="server">
         
    <div class="login-main">
	<div class="login">
		
	   <asp:TextBox ID="username" runat="server"  class="email" placeholder="Username" />
	   <asp:TextBox ID="password" runat="server" TextMode="password" placeholder="Password" />
	   	
	   <ul class="button">
	    	<li><asp:Button ID="Button1" runat="server" Text="Submit" OnClick="submit_Click"/></li>
	   	    <li><asp:Button class="clear" ID="clear" runat="server" Text="Clear" Type="Reset" OnClick="clear_Click"/></li>
	   </ul>
	   	
	  
	</div>
	<div class="login-password">
	   <asp:Label ID="wrongcredentials" runat="server" Text="" />
	</div>
</div>

    </form>
    </body>
</html>
