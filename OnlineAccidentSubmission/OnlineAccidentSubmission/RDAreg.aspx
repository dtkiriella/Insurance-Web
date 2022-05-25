<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RDAreg.aspx.cs" Inherits="OnlineAccidentSubmission.RDAreg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
      <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
   <style>
       #rdacolor{
           background-color:darkgray;
       }
   </style>
</head>
<body>
    <div>
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
                           <li><a runat="server" href="~/LoginPage.aspx">Public Registration</a></li>
                       <li><a runat="server" href="~/Policereg">Police Registration</a></li>
                      <li><a runat="server" href="~/Insurancereg.aspx">Insurance Registration</a></li>
                      
                         
                      
                        <li><a runat="server" href="~/Loginother.aspx">Login

                         
</a>

                        </li>

                       </ul>
                    
                      
                </div>
            </div>
        </div>
        <br />
     <div id="rdacolor" style="width: 598px; margin-left: 467px; margin-right: 354px">
           <center>
            <asp:Label ID="Label1" runat="server" Text="SOCIAL SECURITY NUMBER" Font-Bold="True" ForeColor="Black" Font-Size="Medium"></asp:Label>
                <br />
                <br />
                </center>
            <center>
        <asp:TextBox ID="txtRDASSN" runat="server" Width="358px" Height="34px"></asp:TextBox><br />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtRDASSN" runat="server" ErrorMessage="Please Enter a Combination of 12 Digits or Lesser" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                <br />
                </center>
            <center>
        <asp:Label ID="Label2" runat="server" Text="NIC NO" Font-Bold="True" Font-Size="Medium"></asp:Label>
                <br />
                <br />
                </center>

            <center>
      <asp:TextBox ID="txtRDANIC" runat="server" Width="358px" Height="34px"></asp:TextBox><br />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtRDANIC" runat="server" ErrorMessage="Please Enter a Combination of Minimum of 10 Digits or Maximum of 12 Digits" ForeColor="Red"></asp:RequiredFieldValidator><br />
                  <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtRDANIC" ID="RegularExpressionValidator1" ValidationExpression = "^[\s\S]{0,12}$" runat="server" ErrorMessage="Maximum 12 Numbers/Character Combination is only allowed" ForeColor="Red" ></asp:RegularExpressionValidator>
                <br />
                <br />
                <br />
        </center>
             <center>
                 
        <asp:Label ID="Label3" runat="server" Text="NAME OF THE USER" Font-Bold="True" Font-Size="Medium"></asp:Label>
                 <br />
                <br />
                </center>
              <center>
      <asp:TextBox ID="txtRDAName" runat="server" Width="358px" Height="34px"></asp:TextBox><br />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtRDAName" runat="server" ErrorMessage="Please Enter Your Name" ForeColor="Red"></asp:RequiredFieldValidator>
                  <br />
                <br />
                <br />
        </center>
               <center>
        <asp:Label ID="Label4" runat="server" Text="DEPARTMENT NAME" Font-Bold="True" Font-Size="Medium"></asp:Label>
                   <br />
                <br />
                </center>
              <center>
      <asp:TextBox ID="txtRDADEPName" runat="server" Width="358px" Height="34px"></asp:TextBox><br />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtRDADEPName" runat="server" ErrorMessage="Please Enter the Name of Your Department  " ForeColor="Red"></asp:RequiredFieldValidator>
                  <br />
                <br />
                <br />
        </center>
              
                 <center>
          
                   
                                          <br />
                   <center>
        <asp:Label ID="Label7" runat="server" Text="BRANCH NAME" Font-Bold="True" Font-Size="Medium"></asp:Label>
                   <br />
                <br />
                </center> 
                       <center>
      <asp:TextBox ID="txtRDABRN" runat="server" Width="358px" Height="34px"></asp:TextBox><br />
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtRDABRN" runat="server" ErrorMessage="Please Enter the District Name of Your Work Place" ForeColor="Red"></asp:RequiredFieldValidator>
                  <br />
                <br />
                <br />
        </center>
 <center>
        <asp:Label ID="Label8" runat="server" Text="DISTRICT" Font-Bold="True" Font-Size="Medium"></asp:Label>
                   <br />
                <br />
                </center> 
                      <center>
      <asp:TextBox ID="txtRDADis" runat="server" Width="358px" Height="34px" TextMode="MultiLine"></asp:TextBox><br />
 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="txtRDADis" runat="server" ErrorMessage="Please Enter the Department Name" ForeColor="Red"></asp:RequiredFieldValidator>
                  <br />
                <br />
                          
                <br />
        </center>
                     <asp:Button ID="Button1" runat="server" Text="SUBMIT" BackColor="#00CC00" Font-Bold="True" Font-Size="Medium" Height="36px" Width="118px" OnClick="Button1_Click" />


                                          <asp:Button ID="Button2" runat="server" Text="CLEAR" Font-Bold="True" Font-Size="Medium" Height="36px" Width="118px" OnClick="Button2_Click" />

</div>
    </form>
        </div>
      
</body>
</html>
