<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Harsha.user.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/loginstyle.css" rel="stylesheet" type="text/css" media="all"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
    <link href='http://fonts.googleapis.com/css?family=Roboto:500,900italic,900,400italic,100,700italic,300,700,500italic,100italic,300italic,400' rel='stylesheet' type='text/css'/>

</head>
<body>
    <form id="form1" runat="server">
    <div class="login-main">
	<div class="login">
		
	   <asp:TextBox ID="userlogin" runat="server"  class="email" placeholder="Username" />
	   <asp:TextBox ID="password" runat="server" TextMode="password" placeholder="Password" />
	   	
	   <ul class="button">
	    	<li><asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click"/></li>
	   	    <li><asp:Button class="clear" ID="clear" runat="server" Text="Clear" OnClick="clear_Click"/></li>
	   </ul>
	   	
	   <a href="registration.aspx" >New User?</a>
	</div>
	<div class="login-password">
	   <asp:Label ID="wrongcredentials" runat="server" Text="" />
	</div>
</div>

    </form>
</body>
</html>
