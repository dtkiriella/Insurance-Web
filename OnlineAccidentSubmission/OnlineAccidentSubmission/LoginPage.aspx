<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="OnlineAccidentSubmission.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

      <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <title></title>
   

    <style>
        
   #divcolor{
       background-color:darkgrey
   }
   

    </style>
</head>
<body style="height: 765px" id="bb1">
     
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

        <br />

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
        <div id="divcolor" style="width: 598px; margin-left: 467px; margin-right: 354px">
            <center>
            <asp:Label ID="Label1" runat="server" Text="NIC No" Font-Bold="True" ForeColor="Black" Font-Size="Medium"></asp:Label>
                <br />
                <br />
                </center>
            <center>
        <asp:TextBox ID="txtNiC" runat="server" Width="358px" Height="34px" MaxLength="12"></asp:TextBox><br />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNiC"  ErrorMessage="Please Enter Your NIC Number" ForeColor="Red"></asp:RequiredFieldValidator><br />
             <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtNiC" ID="RegularExpressionValidator1" ValidationExpression = "^[\s\S]{0,12}$" runat="server" ErrorMessage="Maximum 12 Numbers/Character Combination is only allowed" ForeColor="Red" ></asp:RegularExpressionValidator>
            
                <br />
                <br />
                <br />
                </center>
            <center>
        <asp:Label ID="FullName" runat="server" Text="FULL NAME OF THE USER" Font-Bold="True" Font-Size="Medium"></asp:Label>
             
                <br />
                <br />
                </center>

            <center>
      <asp:TextBox ID="txtName" runat="server" Width="358px" Height="34px"></asp:TextBox><br />
   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName"  ErrorMessage="Please Enter Your Name" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                <br />
        </center>
             <center>
                 
        <asp:Label ID="Label3" runat="server" Text="CLASS OF VEHICLE" Font-Bold="True" Font-Size="Medium"></asp:Label>
                 <br />
                <br />
                </center>
              <center>
      <asp:TextBox ID="txtClassVehcile" runat="server" Width="358px" Height="34px"></asp:TextBox><br />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtClassVehcile"  ErrorMessage="Please Enter Your Vehicle type" ForeColor="Red"></asp:RequiredFieldValidator>
                  <br />
                <br />
                <br />
        </center>
               <center>
        <asp:Label ID="Label4" runat="server" Text="STATUS OF REGISTRATION(REG NO)" Font-Bold="True" Font-Size="Medium"></asp:Label>
                   <br />
                <br />
                </center>
              <center>
      <asp:TextBox ID="txtStatReg" runat="server" Width="358px" Height="34px"></asp:TextBox><br />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtStatReg"  ErrorMessage="Please Enter Your Vehicle Registration No" ForeColor="Red"></asp:RequiredFieldValidator>     
                  <br />
                <br />
                <br />
        </center>
               <center>
        <asp:Label ID="Label5" runat="server" Text="INSURANCE NUMBER" Font-Bold="True" Font-Size="Medium"></asp:Label>
                   <br />
                <br />
                </center>
              <center>
      <asp:TextBox ID="txtInsNo" runat="server" Width="358px" Height="34px"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtInsNo"  ErrorMessage="Please Enter the Inusrance No" ForeColor="Red"></asp:RequiredFieldValidator> <br />
                  <br />
                <br />
                <br />
        </center>
               <center>
        <asp:Label ID="Label6" runat="server" Text="INSURANCE CATEGORY" Font-Bold="True" Font-Size="Medium"></asp:Label>
                   <br />
                <br />
                </center>

                 <center>
             <asp:DropDownList id="txtInsCat"
                   
                    runat="server" Width="368px" Height="34px">

                  <asp:ListItem Selected="True" Value="White">INSURANCE TYPE</asp:ListItem>
                  <asp:ListItem Value="Liability Coverage"> Liability Coverage </asp:ListItem>
                  <asp:ListItem Value="Collision Insurance"> Collision Insurance.</asp:ListItem>
                  <asp:ListItem Value="Comprehensive Insurance">Comprehensive Insurance  </asp:ListItem>
                 <asp:ListItem Value="Uninsured Motorist Isurance"> Uninsured Motorist Isurance </asp:ListItem>
                 <asp:ListItem Value="Underinsured Motorist Insurance"> Underinsured Motorist Insurance </asp:ListItem>
                 <asp:ListItem Value="Medical Payments Coverage"> Medical Payments Coverage </asp:ListItem>
                  <asp:ListItem Value="Personal Injury Protection Insurance"> Personal Injury Protection Insurance </asp:ListItem>
                  <asp:ListItem Value="Gap Insurance">Gap Insurance  </asp:ListItem>
                  <asp:ListItem Value="Towing and Labor Coverage "> Towing and Labor Coverage </asp:ListItem>
                  <asp:ListItem Value=" Rental Reimbursement Coverage"> Rental Reimbursement Coverage </asp:ListItem>
                  <asp:ListItem Value="Classic Car Insurance ">Classic Car Insurance  </asp:ListItem>
                 
                 
             </asp:DropDownList><br />
                      <asp:RequiredFieldValidator
             ID="RequiredFieldValidator6"
             runat="server"
             ControlToValidate="txtInsCat"
             
             ErrorMessage="* Please Select the Relevant Insurance type."
             ForeColor="Red"  >
        </asp:RequiredFieldValidator>

                     <br />
                     <br />
                     <br />
                   <center>
        <asp:Label ID="Label7" runat="server" Text="VEHICLE NO" Font-Bold="True" Font-Size="Medium"></asp:Label>
                   <br />
                <br />
                </center> 
                       <center>
      <asp:TextBox ID="txtVehicleNo" runat="server" Width="358px" Height="34px"></asp:TextBox><br />
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtVehicleNo"  ErrorMessage="Please Enter the Vehicle No" ForeColor="Red"></asp:RequiredFieldValidator><br />
                                <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "txtVehicleNo" ID="RegularExpressionValidator2" ValidationExpression = "^[\s\S]{0,8}$" runat="server" ErrorMessage="Please Enter the Licenses Plate Number Carefully" ForeColor="Red"></asp:RegularExpressionValidator>
                  <br />
                <br />
                <br />
        </center>
 <center>
        <asp:Label ID="Label8" runat="server" Text="ENGINE NO" Font-Bold="True" Font-Size="Medium"></asp:Label>
                   <br />
                <br />
                </center> 
                      <center>
      <asp:TextBox ID="txtEngNo" runat="server" Width="358px" Height="34px" TextMode="MultiLine"></asp:TextBox><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtEngNo"  ErrorMessage="Please Enter the Engine No" ForeColor="Red"></asp:RequiredFieldValidator>
                  <br />
                <br />





                <br />
        </center>
                     <asp:Button ID="Button1" runat="server" Text="SUBMIT" BackColor="#00CC00" Font-Bold="True" Font-Size="Medium" Height="36px" Width="118px" OnClick="Button1_Click" />
                       <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="CLEAR" Font-Bold="True" Font-Size="Medium" Height="36px" Width="118px" />
                      






                     <br />
                     <br />
                     </div>
 

                  </form>  
    
                    
</body>
</html>
