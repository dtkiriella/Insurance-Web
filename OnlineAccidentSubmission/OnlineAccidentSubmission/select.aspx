<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="select.aspx.cs" Inherits="OnlineAccidentSubmission.select" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
  

    <style type="text/css">
        .auto-style1 {
            width: 965px;
        }

   
        #form1 {
            height: 662px;
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
                    
                  <li><a runat="server" href="~/charts">PICTORIAL REPRESENTATION</a></li>
               

                        </ul>
                    </div>
        <CENTER>
            <br />
             <br />
             <br />
        <div style="width: 1114px">
            <br />

   <div class="style1">  
       <CENTER>
           <b> <strong><H1 id="HELLO">MORE INFORMATION REGARDING THE ACCIDENT EVENTS</H1></strong>  </b>
           
       </CENTER>
               
            </div>  
            <table style="width:100%;">  
                <tr>  
                    <td class="style2">  
 </td>  
                    <td class="auto-style1">  
                        <br />
                        <br />
                        <br />
                        <br />
 </td>  
                    <td>  
 </td>  
                </tr>  
                <tr>  
                    <td class="style2">  
 </td>  
                    <td class="auto-style1">  
                        <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True"   
AutoPostBack="True" DataTextField="Passenger_No" DataValueField="Passenger_No" Height="19px"   
Width="913px">  
                            <asp:ListItem Value="0">SELECT THE PASSENGER COUNT</asp:ListItem>  
                        </asp:DropDownList>  
                    </td>  
                    <td>  
                        <asp:Button ID="Button1" runat="server" BackColor="#FFFF66"   
BorderColor="#CC3300" ForeColor="#6600FF" onclick="Button1_Click"   
Text="ENTER" Height="35px" style="margin-left: 0px" Width="132px" />  
                    </td>  
                </tr>  
                <tr>  
                    <td class="style2">  
 </td>  
                    <td class="auto-style1">  
 </td>  
                    <td>  
 </td>  
                </tr>  
                <tr>  
                    <td class="style2">  
 </td>  
                    <td class="auto-style1">  
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"   
BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px"   
CellPadding="4" DataKeyNames=" Passenger_No" GridLines="Horizontal" Height="365px" Width="929px">  
                            <Columns>  
                                <asp:TemplateField HeaderText="Passenger_No">  
                                    <EditItemTemplate>  
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Passenger_No") %>'>  
                                        </asp:TextBox>  
                                    </EditItemTemplate>  
                                    <ItemTemplate>  
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Passenger_No") %>'>  
                                        </asp:Label>  
                                    </ItemTemplate>  
                                </asp:TemplateField>  
                                <asp:TemplateField HeaderText="CollisionDate">  
                                    <EditItemTemplate>  
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Collision_Date") %>'>  
                                        </asp:TextBox>  
                                    </EditItemTemplate>  
                                    <ItemTemplate>  
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Collision_Date") %>'>  
                                        </asp:Label>  
                                    </ItemTemplate>  
                                </asp:TemplateField>  
                                <asp:TemplateField HeaderText="Location">  
                                    <EditItemTemplate>  
                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Incident_Location") %>'>  
                                        </asp:TextBox>  
                                    </EditItemTemplate>  
                                    <ItemTemplate>  
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Incident_Location") %>'>  
                                        </asp:Label>  
                                    </ItemTemplate>  
                                </asp:TemplateField>  
                            </Columns>  
                            <FooterStyle BackColor="White" ForeColor="#333333" />  
                            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />  
                            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />  
                            <RowStyle BackColor="White" ForeColor="#333333" />  
                            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />  
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />  
                            <SortedAscendingHeaderStyle BackColor="#487575" />  
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />  
                            <SortedDescendingHeaderStyle BackColor="#275353" />  
                        </asp:GridView>  
                    </td>  
                    <td>  
 </td>  
                </tr>  
                <tr>  
                    <td class="style2">  
 </td>  
                    <td class="auto-style1">  
 </td>  
                    <td>  
 </td>  
                </tr>  
            </table>  
                
        </div>
        </CENTER>
    </form>
</body>
</html>
