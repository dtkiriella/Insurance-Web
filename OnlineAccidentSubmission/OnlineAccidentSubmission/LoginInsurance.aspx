<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginInsurance.aspx.cs" Inherits="OnlineAccidentSubmission.LoginInsurance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <style>
        #fore3{
            background-color:darkgray;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
                      
                        
                         
                      
                        <li><a runat="server" href="~/Loginother.aspx">Login                           </a>

                        </li>
                           
                      
                       </ul>
                    
                      
                </div>
            </div>
        </div>
        <br />
       <div style="width: 448px; height: 728px; margin-left: 543px; margin-top: 0px;" id="fore3">

              <center style="height: 723px; margin-top: 0px; width: 437px; margin-left: 0px;">
              
                 <asp:Label ID="Label3" runat="server" Text="INSURANCE" Font-Bold="True" BackColor="#000066" ForeColor="White" Font-Size="19pt" Width="447px" Height="45px" style="margin-top: 0px; margin-left: 0px;"></asp:Label>
                  <br />
                  <br />
                  <br />
                  <asp:Label ID="Label10" runat="server" Text="SOCIAL SECURITY NUMBER"></asp:Label>
                  <br />
                  <br />
                  <br />
                  <asp:TextBox ID="txtLogInsSSN" runat="server" Width="266px"></asp:TextBox><br />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="txtLogInsSSN" runat="server" ErrorMessage="Please Enter Your SSN No" ForeColor="Red"></asp:RequiredFieldValidator>
                  <br />
                  <br />
                  <br />
                  <asp:Label ID="Label11" runat="server" Text="AGENT NAME"></asp:Label>
                  <br />
                  <br />
                  <br />
                  <asp:TextBox ID="txtInsName" runat="server" Width="266px" TextMode="MultiLine"></asp:TextBox><br />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="txtInsName" runat="server" ErrorMessage="Please Enter Your Name" ForeColor="Red"></asp:RequiredFieldValidator>
                  <br />
                  <br />
                  <br />
                  <br />
                  <asp:Label ID="Label12" runat="server" Text="BRANCH NAME"></asp:Label>
                  <br />
                  <br />
                  <br />
                  <asp:TextBox ID="txtInsBRNNAME" runat="server" Width="266px"></asp:TextBox><br />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="txtInsBRNNAME" runat="server" ErrorMessage="Please Enter Your Authorization No" ForeColor="Red"></asp:RequiredFieldValidator>
                  <br />
                  <br />
                  <br />
                  <br />
                  
                  <br />
                
                  <asp:Label ID="txtInsInfo" runat="server" ForeColor="red" Font-Bold="true" ></asp:Label>
                  <br />
                  <asp:Button ID="Button1" runat="server" Text="LOGIN" Font-Bold="True" BackColor="#33CC33"  Font-Size="X-Large" Width="328px" OnClick="Button1_Click" />
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
            </center>

        </div>
    </form>
</body>
</html>
