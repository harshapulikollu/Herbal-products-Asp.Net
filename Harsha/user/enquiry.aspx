<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="enquiry.aspx.cs" Inherits="Harsha.user.enquiry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Enquiry</title>
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="c1" runat="server">
     <div class="demo-layout mdl-layout mdl-layout--fixed-header mdl-js-layout mdl-color--grey-100">
<div class="demo-ribbon_enquiry"> </div>
<main class="demo-main mdl-layout__content">
<div class="demo-container mdl-grid">
          <div class="mdl-cell mdl-cell--2-col mdl-cell--hide-tablet mdl-cell--hide-phone"></div>
          <div class="demo-content mdl-color--white mdl-shadow--4dp content mdl-color-text--grey-800 mdl-cell mdl-cell--8-col">
            <h3>Enquiry form</h3>
            <table style="width: 774px">
            <tr><td><h5>Name:</h5></td>
            <td> 
            <div class="mdl-textfield mdl-js-textfield">
						<asp:Textbox ID="enquiry_name" runat="server" class="mdl-textfield__input" Textmode="SingleLine"  />
						
			        </div>
            
            </td>
            </tr>
            <tr><td><h5>Organization name:</h5></td>
            <td> 
            <div class="mdl-textfield mdl-js-textfield">
						<asp:Textbox ID="org_name" runat="server" class="mdl-textfield__input" Textmode="SingleLine" />
						
			        </div>
            
            </td>
            </tr>
            <tr><td><h5>Address:</h5></td>
            <td> 
            <div class="mdl-textfield mdl-js-textfield">
						<asp:Textbox ID="address" runat="server" TextMode="MultiLine" class="mdl-textfield__input"   />
						
			        </div>
            
            </td>
            </tr>
            <tr><td><h5>Email:</h5></td>
            <td> 
            <div class="mdl-textfield mdl-js-textfield">
						<asp:Textbox ID="email" runat="server" TextMode="Email" class="mdl-textfield__input"   />
						
			        </div>
            
            </td>
            </tr>
            <tr><td><h5>Phone number:</h5></td>
            <td> 
            <div class="mdl-textfield mdl-js-textfield">
						<asp:Textbox ID="phone_num" runat="server" TextMode="Phone" class="mdl-textfield__input"   />
						
			        </div>
            
            </td>
            </tr>

            <tr><td><h5>Description of enquiry:</h5></td>
            <td> 
            <div class="mdl-textfield mdl-js-textfield">
						<asp:Textbox ID="enq_desp" runat="server" TextMode="MultiLine" class="mdl-textfield__input"   />
						
			        </div>
            
            </td>
            </tr>
            <tr><td rowspan="2" style="float:right;">
            <asp:Button ID="enq_btn"  runat="server" Text="Submit" 
                    class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" 
                    onclick="enq_btn_Click">
            </asp:Button>
            </td></tr>
            </table>
            
          </div>
</main>
</div>
</asp:Content>
