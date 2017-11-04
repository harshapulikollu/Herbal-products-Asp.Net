<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="orders.aspx.cs" Inherits="Harsha.admin.deleteuser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="c1" runat="server">
     <table  class="mdl-data-table mdl-js-data-table mdl-data-table mdl-shadow--2dp">
  <thead>
  <tr><th class="mdl-data-table__cell--non-numeric"><h4>Orders</h4></th></tr>
    <tr>
      <th class="mdl-data-table__cell--non-numeric">order id</th>
     
      <th>username</th>
      <th>products</th>  
      <th>quantity</th>
        
    </tr>
  </thead>
  <tbody>
       <asp:Repeater ID="d1" runat="server">
    
<ItemTemplate>
    <tr>
       
      <td class="mdl-data-table__cell--non-numeric"><%#Eval("orderid") %></td>
      <td><%#Eval("username") %></td>
      <td><%#Eval("products") %></td>
        <td><%#Eval("quantity") %></td>
       
    
    </tr>
    </ItemTemplate>

</asp:Repeater>
    
  </tbody>
</table>
</asp:Content>
