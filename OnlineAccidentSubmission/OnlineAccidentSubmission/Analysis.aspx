<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Analysis.aspx.cs" Inherits="OnlineAccidentSubmission.Analysis" %>

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
            height: 1014px;
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
                        <li><a runat="server" href="~/charts">PICTORIAL REPRESENTATION</a></li>
               

                        </ul>
                    </div>
                 <br/>
                <br />
                <br />

                 <asp:Button ID="Back" runat="server" Text="BACK" BackColor="AliceBlue" OnClick="Back_Click" Height="29px" Width="132px" /> 
        <center>
            <asp:Label ID="Label2" runat="server" Text="USER REGISTRATION INFORMATION" Font-Bold="true" Font-Size="X-Large" ForeColor="#003399"></asp:Label><br />
            <br />
            <asp:GridView ID="GridView1" runat="server" Height="74px" Width="939px">
                     </asp:GridView><br />
            <br />
<br />
            <asp:Label ID="Label1" runat="server" Text="INFORMATION OF THE ACCIDENTS POSTED BY THE DRIVERS" Font-Bold="true" Font-Size="X-Large" ForeColor="#003399"></asp:Label>
              <br />
<br />


            <asp:ListView ID="lvCustomers" runat="server" GroupPlaceholderID="groupPlaceHolder1"
ItemPlaceholderID="itemPlaceHolder1" OnPagePropertiesChanging="OnPagePropertiesChanging">
<LayoutTemplate>
    <table cellpadding="2" cellspacing="2"  >
        <tr>
            <th colspan = "4">
              ComplainNo
            </th>

            <th colspan = "4">
               Date
            </th>
            <th colspan = "4">
               Name
            </th>
             <th colspan = "4">

               Describe

            </th>

            <th colspan = "4">

              Time

            </th>
            <th colspan = "4">
               Location
            </th>
             <th colspan = "4">
               Injury
            </th>
            <th colspan = "4">
               Passenger_No
            </th>
        </tr>
        <asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>
        <tr>
            <td colspan = "4" >
                <asp:DataPager ID="DataPager1" runat="server" PagedControlID="lvCustomers" PageSize="5">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="false" ShowPreviousPageButton="false"
                            ShowNextPageButton="true" />
                        <asp:NumericPagerField ButtonType="button" />
                        <asp:NextPreviousPagerField ButtonType="Link" ShowNextPageButton="FALSE" ShowLastPageButton="false" ShowPreviousPageButton = "false" />
                    </Fields>
                </asp:DataPager>
            </td>
        </tr>
    </table>
</LayoutTemplate>
<GroupTemplate>
    <tr>
        <asp:PlaceHolder runat="server" ID="itemPlaceHolder1"></asp:PlaceHolder>
    </tr>
</GroupTemplate>
<ItemTemplate>
    <td colspan = "4" >
        <%# Eval("Complain_No") %>
    </td>
    <td colspan = "4"  >
        <%# Eval("Collision_Date") %>
    </td>
    <td colspan = "4" >
        <%# Eval("Name") %>
    </td>
     <td colspan = "4" >
        <%# Eval("describe") %>
    </td>
    <td colspan = "4" >
        <%# Eval("Incident_Time") %>
    </td>
    <td colspan = "4" >
        <%# Eval("Incident_Location") %>
    </td>
     <td colspan = "4">
        <%# Eval("Injury_Count") %>
    </td>
    <td colspan = "4" >
        <%# Eval("Passenger_No") %>
    </td>
</ItemTemplate>
</asp:ListView>
        </center>
               <br />
                <div style="width: 1431px; margin-left: 0px; height: 498px;">

            
    </div>
    </form>
</body>
</html>
