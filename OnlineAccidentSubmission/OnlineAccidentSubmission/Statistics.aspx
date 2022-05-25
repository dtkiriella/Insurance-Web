<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Statistics.aspx.cs" Inherits="OnlineAccidentSubmission.Statistics" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

     <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
   

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <
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
                        <li><a runat="server" href="~/">DASHBOARD</a></li>
                        <li><a runat="server" href="~/Analysis.aspx">STATISTICS</a></li>
                        <li><a runat="server" href="~/PoliceandRda.aspx">MAIN PAGE</a></li>
                        

                      </ul>
                        </div>
        <div style="height: 788px; width: 1094px; margin-left: 0px">
            <br />
              <br />
            <br />
              <br />

            <center>
                <asp:Label ID="Label1" runat="server" Font-Bold="true" Font-Size="Larger" Text="PLEASE ENTER THE SPECIFIC IMAGE ID NUMBER TO RETRIEVE THE IMAGES POSTED BY THE DRIVER"></asp:Label><br />
           
              <asp:TextBox ID="Id" runat="server"></asp:TextBox>

                     <asp:Button ID="txtGetImage" runat="server" Text="Show" OnClick="txtGetIamge_Click"/>
                   
                     <br />
                   
                     <br />
                       <asp:Image ID="Image1" runat="server" length="100px" Width="1026px" Height="541px" ClientIDMode="Predictable" ViewStateMode="Enabled"/>
                     <br />
                 </center>

        </div>
    </form>
</body>
</html>
