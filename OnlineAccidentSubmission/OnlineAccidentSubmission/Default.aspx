<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OnlineAccidentSubmission._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>REPORT ACCIDENTS</h1>
        <p class="lead">DRIVERS CAN ENROLL TO THE PLATFORM WITH THE VEHICLE REGISTRATION DETAILS  </p>
        <p><asp:Image ID="Image4" runat="server" ImageUrl="~/imagesXP/em.jpg" /></p>
        
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
               The Road Development Authority (RDA) of Sri Lanka along with the Sri Lankan Police and Insurance Companies are planning to launch a web site to track the traffic accidents, where the drivers can report accidents and RDA/Police can support.
            </p>
              <asp:Image ID="Image1" runat="server" ImageUrl="~/imagesXP/ac.jpg" />
              


            <p>
                
            </p>
        </div>
        <div class="col-md-4">
            <h2>Our Vision</h2>
            <p>
                Anyone who owns a vehicle or drives a vehicle can register to the system using the vehicle registration numbers and insurance details.
	            When there is an accident, a driver can report the accident through the web site; with some supporting photos

            </p>
            <center>
            <asp:Image ID="Image2" runat="server" ImageUrl="~/imagesXP/rda.jpg" />
                </center>
            <p>
                
            </p>
        </div>
        <div class="col-md-4">
            <h2>Our Service</h2>
            <p>
               RDA staff, Police, and relevant insurance companies can view all the reported incidents and validate by looking at the uploaded photo(s) and take necessary actions such as approving or rejecting the claim. 
            </p>
            <center>
            <asp:Image ID="Image3" runat="server" ImageUrl="~/imagesXP/police.jpg" />
                </center>
            <p>
                
            </p>
        </div>
    </div>

</asp:Content>

