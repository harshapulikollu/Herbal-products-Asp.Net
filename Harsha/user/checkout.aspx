<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="Harsha.user.checkout" %>
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

      <div class="demo-layout mdl-layout mdl-layout--fixed-header mdl-js-layout mdl-color--grey-50">
<table align="center"><tr><td>
<table>
<tr><td colspan=2><h3>Billing details</h3></td></tr>
<tr><td><div class="mdl-textfield mdl-js-textfield">
				<asp:Textbox ID="first_name" runat="server" placeholder="First name" class="mdl-textfield__input" Textmode="SingleLine"  />
			     </div></td><td><div class="mdl-textfield mdl-js-textfield">
				<asp:Textbox ID="last_name" runat="server" placeholder="Last name" class="mdl-textfield__input" Textmode="SingleLine"  />
			     </div></td></tr>
<tr><td colspan=2> <div class="mdl-textfield-width-full mdl-js-textfield">
				<asp:Textbox ID="org_name" runat="server" placeholder="Company name" class="mdl-textfield__input" Textmode="SingleLine"  />
			     </div></td></tr>
<tr><td colspan=2><div class="mdl-textfield-width-full  mdl-js-textfield">
				<asp:Textbox ID="address" runat="server" placeholder="Your Address" class="mdl-textfield__input" Textmode="MultiLine"  />
			     </div></td></tr>
<tr><td ><div class="mdl-textfield mdl-js-textfield">
				<asp:Textbox ID="city" runat="server" placeholder="City/Town" class="mdl-textfield__input" Textmode="SingleLine"  />
			     </div></td><td><div class="mdl-textfield mdl-js-textfield">
				<asp:Textbox ID="postal_code" runat="server" placeholder="Postal code" class="mdl-textfield__input" Textmode="SingleLine"  />
			     </div></td></tr>
<tr><td ><div class="mdl-textfield mdl-js-textfield">
				<asp:Textbox ID="alt_email" runat="server" placeholder="Alternate Email" class="mdl-textfield__input" Textmode="Email"  />
			     </div></td><td><div class="mdl-textfield mdl-js-textfield">
				<asp:Textbox ID="ph_num" runat="server" placeholder="Phone number" class="mdl-textfield__input" Textmode="SingleLine"  />
			     </div></td></tr>
<tr class="mdl-data-table__cell--non-numeric">
    <td><asp:Button runat="server" ID="save_details" Text="Save dteails" 
                  
            class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" onClick="save_details_Click" 
                  /></td><td>
                      <asp:CheckBox ID="checkbox" Text="Use old details" runat="server" />
                         </td></tr>
</table>

</td>
<td >

  <table  class="mdl-data-table mdl-js-data-table mdl-data-table mdl-shadow--2dp">
  <thead>
  <tr><th class="mdl-data-table__cell--non-numeric"><h4>Your orders</h4></th></tr>
    <tr>
      <th class="mdl-data-table__cell--non-numeric">Products</th>
      <th>Quantity</th>
      <th>Unit price</th>
    </tr>
  </thead>
  <tbody>
       <asp:Repeater ID="d1" runat="server">
    
<ItemTemplate>
    <tr>
       
      <td class="mdl-data-table__cell--non-numeric"><%#Eval("product_name") %></td>
      <td><%#Eval("product_quan") %></td>
      <td><%#Eval("price") %></td>
    
    </tr>
    </ItemTemplate>

</asp:Repeater>
    <tr class="mdl-data-table__cell--non-numeric">
    <td><asp:Button runat="server" ID="place_order" Text="Place order" 
                  
            class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" onClick="place_order_Click" />
                  </td>
        <td>
            <asp:Label ID="total" runat="server" Text=""></asp:Label>
        </td>
    </tr>
  </tbody>
</table>

    

</td>
</tr>
</table>
</div>   
</asp:Content>
