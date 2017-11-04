<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Harsha.admin.dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Checkout</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
    
    <link rel="stylesheet" href="css/companyprofile.css"/>
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
        .style1
        {
            width: 324px;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="c1" runat="server">
    <table  class="mdl-data-table mdl-js-data-table mdl-data-table mdl-shadow--2dp">
  <thead>
  <tr><th class="mdl-data-table__cell--non-numeric"><h4>Enquiries</h4></th></tr>
    <tr>
      <th class="mdl-data-table__cell--non-numeric">Name</th>
      <th>Org.Name</th>
      <th>address</th>
      <th>email</th>  
      <th>phone</th>
        <th>description</th>
    </tr>
  </thead>
  <tbody>
       <asp:Repeater ID="d1" runat="server">
    
<ItemTemplate>
    <tr>
       
      <td class="mdl-data-table__cell--non-numeric"><%#Eval("name") %></td>
      <td><%#Eval("orgname") %></td>
      <td><%#Eval("address") %></td>
        <td><%#Eval("email") %></td>
        <td><%#Eval("phone") %></td>
        <td><%#Eval("enqdesp") %></td>
    
    </tr>
    </ItemTemplate>

</asp:Repeater>
    
  </tbody>
</table>

</asp:Content>
