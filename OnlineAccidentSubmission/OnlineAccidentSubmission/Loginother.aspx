<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loginother.aspx.cs" Inherits="OnlineAccidentSubmission.Loginother" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
   
    <style>
       #pubcolor{
           background-color:darkgray;
       }
       #pollogcolor{
            background-color:darkgray;
       }
       #rdalogcolor{
            background-color:darkgray;
       }

        #form1 {
            width: 1472px;
        }

        .footerContent {
            height: 120px;
            margin-top: 318px;
           
            
        }
        .c1{
            font-size:medium;
            font-weight:bold
        }
        .c2{
             font-weight:bold
        }
        .c3{
             font-weight:bold
        }
    </style>
   
</head>
<body id="b">
    <form id="form1" runat="server" >
          <asp:ScriptManager runat="server">
            <Scripts>
                <%--To learn more about bundling scripts in ScriptManager see https://go.microsoft.com/fwlink/?LinkID=301884 --%>
                <%--Framework Scripts--%>
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Name="bootstrap" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
                <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
                <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
                <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
                <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
                <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
                <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
                <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
                <asp:ScriptReference Name="WebFormsBundle" />
                <%--Site Scripts--%>
            </Scripts>
        </asp:ScriptManager>

        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" runat="server" href="~/">Inquiry for Accidents</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a runat="server" href="~/Policereg">Police Registration</a></li>
                        <li><a runat="server" href="~/RDAreg">RDA Registration</a></li>
                          <li><a runat="server" href="~/Insurancereg.aspx">Insurance Registration</a></li>
                          <li><a runat="server" href="~/LoginInsurance.aspx"> Login (INSURANCE AGENTS)
                           </a>

                        </li>
                      
                         
                      
                      

                       
                      
                       </ul>
                    
                      
                </div>
            </div>
        </div>
</div>  
        <div id= "pubcolor" style="width: 399px; height: 735px; margin-top: 34px; margin-left: 68px;" id="fore1" >
            <center style="height: 3px">
                 
                 <asp:Label ID="Label1" runat="server" Text=" PUBLIC" Font-Bold="True" BackColor="#000066" ForeColor="White" Font-Size="19pt" Width="398px" Height="48px" style="margin-top: 1px"></asp:Label>
                 <br />
                 <br />
                 <br />
                 <asp:Label ID="Label4" Font-Bold="True" runat="server" Text="NIC NUMBER"></asp:Label>
                 <br />
                 <br />
                 <br />
                 <asp:TextBox ID="txtLogNIC" runat="server" Width="266px"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtLogNIC" runat="server" ErrorMessage="Please Enter Your Valid NIC No" ForeColor="Red"></asp:RequiredFieldValidator>
                 <br />
                 <br />
                 <br />
                 <asp:Label ID="Label5" Font-Bold="True" runat="server" Text="FULL NAME"></asp:Label>
                 <br />
                 <br />
                 <br />
                 <asp:TextBox ID="txtLogName" runat="server" Width="266px" TextMode="MultiLine"></asp:TextBox><br />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtLogName" runat="server" ErrorMessage="Please Enter Your Name" ForeColor="Red"></asp:RequiredFieldValidator>
                 <br />
                 <br />
                 <br />
                 <br />
                 <asp:Label ID="Label6" Font-Bold="True" runat="server" Text="INSURANCE NUMBER"></asp:Label>
                 <br />
                 <br />
                 <br />
                 <asp:TextBox ID="txtLogIns" runat="server" Width="266px"></asp:TextBox><br />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtLogIns" runat="server" ErrorMessage="Please Enter Your Valid Insurance No" ForeColor="Red"></asp:RequiredFieldValidator>
                 <br />
                 <br />
                 <br />
                 <br />
                 <asp:Button ID="Button1" runat="server" Text="LOGIN" Font-Bold="True" BackColor="#33CC33" OnClick="Button1_Click" Font-Size="X-Large" Width="269px" />
                 <br />
               
                    <asp:Label ID="txtInfo" runat="server" ForeColor="red" Font-Bold="true" ></asp:Label>
            </center>
            
           
        <div id="pollogcolor" style="width: 399px; height: 735px; margin-left: 497px; margin-top: 0px;" id="fore2">
              <center style="height: 1px">
                  
                 <asp:Label ID="Label2" runat="server" Text="POLICE" Font-Bold="True" BackColor="#000066" ForeColor="White" Font-Size="19pt" Width="398px" Height="45px" style="margin-top: 0px"></asp:Label>
                  <br />
                  <br />
                  <br />
                  <asp:Label ID="Label7" Font-Bold="True" runat="server" Text="SOCIAL SECURITY NUMBER"></asp:Label>
                  <br />
                  <br />
                  <br />
                  <asp:TextBox ID="txtLogSSN" runat="server" Width="265px"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtLogSSN" runat="server" ErrorMessage="Please Enter Your Valid SSN No" ForeColor="Red"></asp:RequiredFieldValidator>
                  <br />
                  <br />
                  <br />
                  <asp:Label ID="Label8" Font-Bold="True" runat="server" Text="FULL NAME"></asp:Label>
                  <br />
                  <br />
                  <br />
                  <asp:TextBox ID="txtLogPolName" runat="server" Width="266px" TextMode="MultiLine"></asp:TextBox><br />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtLogPolName" runat="server" ErrorMessage="Please Enter Your Name" ForeColor="Red"></asp:RequiredFieldValidator>
                  <br />
                  <br />
                  <br />
                  <br />
                  <asp:Label ID="Label9" Font-Bold="True" runat="server" Text="DEPARTMENT LOCATION"></asp:Label>
                  <br />
                  <br />
                  <br />
                  <asp:TextBox ID="txtDepName" runat="server" Width="266px"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="txtDepName" runat="server" ErrorMessage="Please Enter Your Department Location" ForeColor="Red"></asp:RequiredFieldValidator>
                  <br />
                  <br />
                  <br />
                  <br />
                  <asp:Button ID="Button2" runat="server" Text="LOGIN" Font-Bold="True" BackColor="#00CC00" OnClick="Button2_Click" Font-Size="X-Large" Width="269px" />
                  <br />
                 
                 <asp:Label ID="txtPoliceInfo" runat="server" ForeColor="red" Font-Bold="true" ></asp:Label>
            </center>
            

        <div id="rdalogcolor" style="width: 399px; height: 728px; margin-left: 496px; margin-top: 0px;" id="fore3">

              <center style="height: 722px; margin-top: 0px; width: 398px; margin-left: 0px;">
              
                 <asp:Label ID="Label3" runat="server" Text="RDA" Font-Bold="True" BackColor="#000066" ForeColor="White" Font-Size="19pt" Width="399px" Height="45px" style="margin-top: 0px; margin-left: 0px;"></asp:Label>
                  <br />
                  <br />
                  <br />
                  <asp:Label ID="Label10" Font-Bold="True" runat="server" Text="SOCIAL SECURITY NUMBER"></asp:Label>
                  <br />
                  <br />
                  <br />
                  <asp:TextBox ID="txtLogRDASSN" runat="server" Width="266px"></asp:TextBox><br />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="txtLogRDASSN" runat="server" ErrorMessage="Please Enter Your SSN No" ForeColor="Red"></asp:RequiredFieldValidator>
                  <br />
                  <br />
                  <br />
                  <asp:Label ID="Label11" Font-Bold="True" runat="server" Text="FULL NAME"></asp:Label>
                  <br />
                  <br />
                  <br />
                  <asp:TextBox ID="txtRDAName" runat="server" Width="266px" TextMode="MultiLine"></asp:TextBox><br />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="txtRDAName" runat="server" ErrorMessage="Please Enter Your Name" ForeColor="Red"></asp:RequiredFieldValidator>
                  <br />
                  <br />
                  <br />
                  <br />
                  <asp:Label ID="Label12" Font-Bold="True" runat="server" Text="BRANCH NAME"></asp:Label>
                  <br />
                  <br />
                  <br />
                  <asp:TextBox ID="txtRDABRNNAME" runat="server" Width="266px"></asp:TextBox><br />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="txtRDABRNNAME" runat="server" ErrorMessage="Please Enter Your Authorization No" ForeColor="Red"></asp:RequiredFieldValidator>
                  <br />
                  <br />
                  <br />
                  <br />
                  <asp:Button ID="Button3" runat="server" Text="LOGIN" Font-Bold="True" BackColor="#33CC33" OnClick="Button3_Click" Font-Size="X-Large" Width="269px" />
                  <br />
                
             <asp:Label ID="txtRDAInfo" runat="server" ForeColor="red" Font-Bold="true" ></asp:Label>
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
            </center>

        </div>
           

        </div>
           

        
            </div>
        <div class="footerContent">
<center>
        <div class="footerbrd">
        </div>
        <div class="footer">
            <div class="c1 fleft">
               REPORT YOUR ACCIDENTS TO OUR WEBSITE
            </div>
            <div class="c2 fleft">
                (c) COPYRIGHT 2022
                <br />
                All Rights Reserved.
            </div>
            <div class="c3 fright">
                SITE BY ZICO TEAM
            </div>
        </div>
</center>
    </div>
           
           

    </form>
</body>
</html>
