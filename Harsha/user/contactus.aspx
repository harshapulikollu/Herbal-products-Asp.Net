<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="Harsha.user.contactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Contact</title>
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
<div class="demo-ribbon_contact"> </div>
<main class="demo-main mdl-layout__content">
<div class="demo-container mdl-grid">
          <div class="mdl-cell mdl-cell--2-col mdl-cell--hide-tablet mdl-cell--hide-phone"></div>
          <div class="demo-content mdl-color--white mdl-shadow--4dp content mdl-color-text--grey-800 mdl-cell mdl-cell--8-col">
            <h3>Contact us</h3>
          <table><tr><td>
          <table>
            <tr><td><h5>President:</h5></td>
            <td class="style1"> 
            president@herbal.com
            </td>
            </tr>
            <tr><td><h5>General enquiry:</h5></td>
            <td class="style1"> 
            info@herbal.com
            </td>
            </tr>
            <tr><td><h5>Export enquirys:</h5></td>
            <td class="style1"> 
           exports@herbal.com            </td>
            </tr>
            <tr><td><h5>Sales enquiry:</h5></td>
            <td class="style1"> 
            sales@herbal.com
            </td>
            </tr>
            </table>
          </td><td><asp:Image ID="Image1" runat="server" ImageUrl="~/images/contact.png"></asp:Image> </td></tr></table>  
            
          </div>
</main>
</div>
</asp:Content>
