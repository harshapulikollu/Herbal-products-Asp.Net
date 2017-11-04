<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="addproduct.aspx.cs" Inherits="Harsha.admin.addproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
    <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.cyan-light_blue.min.css"/>
    <link rel="stylesheet" href="css/styles.css"/>
    <style type="text/css">
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
     <h3>Add product page</h3>
<table>
<tr>
<td>
<div class="mdl-textfield mdl-js-textfield">
				<asp:Textbox ID="product_name" runat="server" placeholder="Product name" class="mdl-textfield__input" Textmode="SingleLine"  />
			     </div>
</td></tr>

<tr>
<td>
<div class="mdl-textfield-width-full  mdl-js-textfield">
				<asp:Textbox ID="product_desp" runat="server" placeholder="Product description" class="mdl-textfield__input" Textmode="MultiLine"  />
			     </div>
</td></tr>


<tr>
<td>
<div class="mdl-textfield mdl-js-textfield">
				<asp:Textbox ID="product_price" runat="server" placeholder="Product price" class="mdl-textfield__input" Textmode="SingleLine"  />
			     </div>
</td></tr>

<tr>
<td>
<div class="mdl-textfield mdl-js-textfield">
				<asp:Textbox ID="product_quantity" runat="server" placeholder="Product quantity" class="mdl-textfield__input" Textmode="SingleLine"  />
			     </div>
</td></tr>

<tr>
<td>product images</td></tr>
<tr>
<td>
<asp:FileUpload ID="f1" runat="server"  />
</td></tr>

<tr>
<td rowspan="2" align="center">
<asp:Button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent"
 ID="upload_product" runat="server" Text="uplaod" 
        onclick="upload_product_Click"  /></td></tr>
    <tr><asp:Label ID="error" runat="server" /></tr>
</table>
</asp:Content>
