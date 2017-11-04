<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="adduser.aspx.cs" Inherits="Harsha.admin.adduser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
    <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.cyan-light_blue.min.css"/>
    <link rel="stylesheet" href="css/styles.css"/>
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="c1" runat="server">
    <h3>Add user page</h3>
<table>
<tr>
<td>
<div class="mdl-textfield mdl-js-textfield">
				<asp:Textbox ID="username" runat="server" placeholder="User name" class="mdl-textfield__input" Textmode="SingleLine"  />
			     </div>
</td></tr>

<tr>
<td>
<div class="mdl-textfield-width-full  mdl-js-textfield">
				<asp:Textbox ID="password" runat="server" placeholder="Password" class="mdl-textfield__input" Textmode="SingleLine"  />
			     </div>
</td></tr>

<tr>
<td>
<div class="mdl-textfield-width-full  mdl-js-textfield">
				<asp:Textbox ID="conf_password" runat="server" placeholder="Confirm password" class="mdl-textfield__input" Textmode="SingleLine"  />
			     </div>
</td></tr>
<tr>
<td rowspan="2" align="center">
<asp:Button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--primary"
 ID="add_new_user" runat="server" Text="Add new user" OnClick="add_new_user_Click" 
         /></td></tr>
    <tr><td><asp:Label ID="error" runat="server" Visible="true" /></td></tr>
</table>
</asp:Content>
