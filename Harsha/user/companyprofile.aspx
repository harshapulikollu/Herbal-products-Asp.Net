<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="companyprofile.aspx.cs" Inherits="Harsha.user.companyprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Company Profile</title>
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
<div class="demo-ribbon"> </div>
<main class="demo-main mdl-layout__content">
<div class="demo-container mdl-grid">
          <div class="mdl-cell mdl-cell--2-col mdl-cell--hide-tablet mdl-cell--hide-phone"></div>
          <div class="demo-content mdl-color--white mdl-shadow--4dp content mdl-color-text--grey-800 mdl-cell mdl-cell--8-col">
            <div class="demo-crumbs mdl-color-text--grey-500">
              Our Company profile
            </div>
            <h3>Who are we!</h3>
              <p>
                Herbal products was developed in the year 2017. We devoted We are devoted to cultivation & processing of Essential oils, carrier oils and Standardized Medicinal plant extracts
                 The plants are grown in “Near to Nature” conditions in various parts of India. Company has engaged prospective growers/farmers for producing the herbal materials, under their technical guidance, suited to temperate, subtropical, tropical and alpine locations, besides its own cultivation farms and processing plants. Besides India, Herbal stuff is exporting to reputed companies in Asia & Europe.
                </p>
              <h6>Quality control</h6><p>
                We continuously strive to maintain international standards of quality control measures. All products offered by us are stringently checked, tested and inspected on various quality parameters by our quality analysts to ensure clients get the best products from us. Apart from quality analysts, the company is managed by highly professional team comprising scientists and business managers.
               </p>
              <h6>Warehousing</h6><p>
                We are reckoned among the most trusted Suppliers and Exporters of Essential oils, Carrier Oils & Standardized Medicinal plant extracts. All the products offered by us are stocked in our well maintained warehouses to make sure remain safe and are not damaged.   </p>
            <h3>The Three Musketeers..</h3>
            <table>
            <tr><td>
            <div class="demo-card-image mdl-card mdl-shadow--2dp">
              <div class="mdl-card__title mdl-card--expand"></div>
              <div class="mdl-card__actions">
               <a href="" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
                Harsha
                </a>
              </div>
            </div>
            </td>
            <td>
            <div class="demo-card-image mdl-card mdl-shadow--2dp">
              <div class="mdl-card__title mdl-card--expand"></div>
              <div class="mdl-card__actions">
                <a href="" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
                Bhawana
                </a>
              </div>
            </div>
            </td>
            <td>
            <div class="demo-card-image mdl-card mdl-shadow--2dp">
              <div class="mdl-card__title mdl-card--expand"></div>
              <div class="mdl-card__actions">
                <a href="" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
                Varshith
                </a>
              </div>
            </div>
            </td>
            </tr>

            </table>
            
            
            
                  </div>
          </div>
</main>
</div>

</asp:Content>
