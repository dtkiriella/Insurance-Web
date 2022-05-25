<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PoliceandRda.aspx.cs" Inherits="OnlineAccidentSubmission.PoliceandRda" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
   

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <script runat="server">

public void LoginLink_OnClick(object sender, EventArgs args)
{
  FormsAuthentication.SignOut();
  FormsAuthentication.RedirectToLoginPage();
}

</script>
    <style>
             
        body {  
      font-family: Arial, Helvetica, sans-serif;  
      font-size: 19px;
            height: 33px;
        }  
    svg {  
      cursor: pointer;  
      margin: 15px;  
    }  
    .top - nav {  
      height: 50px;  
      background - color: #1e90ff;  
      position: fixed;  
      left: 0;  
      width: 100%;  
      margin: 0px 5px;  
      z-index: 1;  
    }  
    .top-nav h2 {  
      margin: auto;  
    }  
    .side-nav {  
      height: 100%;  
      position: fixed;  
      width: 0px;  
      top: 58px;  
      left: 0;  
      bottom: 0;  
      margin: 0px 5px;  
      background-color: #d3d3d3;  
      transition: 1s;  
    }  
    .side-nav ul {  
      padding: 0;  
      list-style: none;  
      margin: 0;  
    }  
    .side-nav ul li {  
      background-color: grey;  
      cursor: pointer;  
      border-radius: 2px;  
      margin: 0px 2px 2px 2px;  
      padding: 5px 0px;  
      text-align: center;  
    }  
    .side - nav ul li:hover {  
      background-color: #008080;  
    }  
    .side-nav ul li a {  
      text-decoration: none;  
      color: #f9f9f9;  
    }  
    #body-content {  
      position: absolute;  
      top: 58px;  
      transition: margin-left 1s;  
    }   
   

    </style>
</head>
    <body>
         <form runat="server" style="height: 1626px">
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
                     <a class="navbar-brand" runat="server" href="~/">ACCIDENT REPORTS</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        
                        <li><a runat="server" href="~/Analysis.aspx">STATISTICS</a></li>
                        <li><a runat="server" href="~/Statistics.aspx">ANALYSIS</a></li>
                          <li><a runat="server" href="~/AccountPol.aspx">ACCOUNT(FOR POLICE)</a></li>
                           <li><a runat="server" href="~/AccountRda.aspx">ACCOUNT(FOR RDA)</a></li>


                         
                        </ul>  
                    </div>  
                     
                    <script src="work.js"></script> 

                    


                      </div>
             <b><%=User.Identity.Name%></b> <b><%=User.Identity.Name%></b>
CLICK <asp:LinkButton id="LoginLink" Text="HERE" 
                      OnClick="LoginLink_OnClick" runat="server" />
TO SIGN OUT.
             <div style="height: 1307px; margin-left: 8px">
                 <center style="height: 609px">
                     <
                 
                     <br />
                     <br />
                    <asp:GridView ID="gvImages" runat="server" AutoGenerateColumns="false" Height="144px" Width="1005px">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Image Id" />
        <asp:BoundField DataField="Name" HeaderText="Complain_No" />
       
    </Columns>
</asp:GridView>
                     <br />
                   
                     <br />
                     <br />
                     <br />
                     
                     <br />
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
