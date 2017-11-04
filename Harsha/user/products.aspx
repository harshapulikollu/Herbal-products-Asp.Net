<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="Harsha.user.products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
    
    
    <link rel="stylesheet" href="css/homepage.css"/>

    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="c1" runat="server">
        
 <div class="android-card-container mdl-grid">
      
<asp:Repeater ID="d1" runat="server" >
<ItemTemplate>
    
              <div class="mdl-cell mdl-cell--3-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card mdl-shadow--3dp">   
              <div class="mdl-card__media">
                <img src="../<%#Eval("productimage") %>" >
              </div>
              <div class="mdl-card__title">
                 <h4 class="mdl-card__title-text"><%#Eval("productname") %></h4>
              </div>
              <div class="mdl-card__supporting-text">
                <span class="mdl-typography--font-light mdl-typography--subhead"><%#Eval("productdesp") %></span>
              </div>
              <div class="mdl-card__actions">
                 <a class="android-link mdl-button mdl-js-button mdl-typography--text-uppercase" href="product_desp.aspx?id=<%#Eval("productId") %>">
                   Show more
                   <i class="material-icons">chevron_right</i>
                 </a>
              </div>
            </div>


    
       
</ItemTemplate>
 </asp:Repeater>
     </div>
     
     

</asp:Content>
