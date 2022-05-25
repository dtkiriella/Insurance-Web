<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="charts.aspx.cs" Inherits="OnlineAccidentSubmission.charts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
  

    <style type="text/css">
        #form1 {
            height: 779px;
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
        </asp:ScriptManager><br />
        <br />
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
                        <li><a runat="server" href="~/Statistics.aspx">ANALYSIS</a></li>
                        <li><a runat="server" href="~/DATASCANNING.aspx">FOR INSURANCE PERSONNEL USE ONLY</a></li>
                 <li><a runat="server" href="~/select.aspx">MORE INFORMATION</a></li>

                        </ul>
                    </div>
                 <br/>
                <br />
                <br />

        <div style="width: 1695px">
            <br />
            
             
          
                <center style="width: 1173px; height: 502px; margin-left: 0px;">
                   <asp:Label ID="Label1" runat="server" Text="REPRESENTING DETAILS OF NO PASSENGERS INVOLVED IN EACH AREA" Font-Bold="true" Font-Size="Larger"></asp:Label>
                  
                    <asp:Chart ID="Chartdetails" runat="server" Height="478px" Width="727px">
                        <Series>
                            <asp:Series Name="Series1"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                    <br />
                
                    <br />
                
</center>
        </div>

                
                </div>
                </div>
                   
                
                </form>
                
                   
        </body>
</html>
