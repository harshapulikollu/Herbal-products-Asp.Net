<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="product_desp.aspx.cs" Inherits="Harsha.user.product_desp" enableEventValidation="true" enableViewState="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Product description</title>
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
     <div class="demo-layout mdl-layout mdl-layout--fixed-header mdl-js-layout mdl-color--grey-100">
<div class="demo-ribbon_contact"></div>
<main class="demo-main mdl-layout__content">
<div class="demo-container mdl-grid">
          <div class="mdl-cell mdl-cell--2-col mdl-cell--hide-tablet mdl-cell--hide-phone"></div>
          <div class="demo-content mdl-color--white mdl-shadow--4dp content mdl-color-text--grey-800 mdl-cell mdl-cell--8-col">
            <h3>Product Description</h3>
              <asp:Repeater ID="d1" runat="server"  >
    
<ItemTemplate>
          <table><tr><td>
          <table>
            <tr><td><h5>Name:</h5></td>
            <td class="style1"> 
            <%#Eval("productname") %>
            </td>
            </tr>
            <tr><td><h5>Description:</h5></td>
            <td class="style1"> 
            <%#Eval("productdesp") %>
            </td>
            </tr>
            <tr><td><h5>Quantity:</h5></td>
            <td class="style1"> 
           <%#Eval("productquant") %>           </td>
            </tr>
            <tr><td><h5>Price:</h5></td>
            <td class="style1"> 
            <%#Eval("productprice") %>
            </td>
            </tr>
             
              <tr><td><asp:Button ID="add_to_cart" ButtonType="LinkButton" runat="server" Text="Add to cart" OnClick="add_to_cart_Click" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" /></td>
               
              </tr>
            </table>
          </td><td><img src="../<%#Eval("productimage") %>" alt="" style="width:100%"/> </td></tr></table>  
            </ItemTemplate>

</asp:Repeater>
              <table> <tr><td>
                  <asp:TextBox ID="TextBox1" runat="server" Text="1"></asp:TextBox>
                  </td></tr>
                  <tr><td>
                      <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                      </td></tr>
              </table>
          </div>
</main>
</div>

</asp:Content>
