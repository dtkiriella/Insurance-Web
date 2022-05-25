<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PUBLIC.aspx.cs" Inherits="OnlineAccidentSubmission.PUBLIC" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
     <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <link href = "https://maps/documentation/javascript/examples/default.css" rel = "stylesheet"/> 
         
   

        
     <style>
         #colorback
      {
          background-color:black;
             margin-left: 12px;
             margin-right: 0px;
             width: 1042px;
         }
 #pubbackcolor{
     background-color:darkgrey;
             margin-left: 134px;
             margin-right: 4px;
         }
 #hh{
     background-color:black;
             width: 747px;
         }

 #coldiv{
     background-color:black;
             width: 625px;
         }
    </style>

      
   <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />


   
</head>
<body>
   
         
  
    <div style="width: 290px; height: 744px; margin-top: 0px">
        
        
                             <form id="Form2" runat="server" style="font-family: 'Times New Roman', Times, serif; font-size: medium; color: #FF0000; height: 2189px; width: 1403px; margin-top: 0px;">
                      
                                 
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
                        <li><a runat="server" href="~/">Home</a></li>
                        <li><a runat="server" href="~/About">About</a></li>
                        <li><a runat="server" href="~/ProfilePublic.aspx">Profile</a></li>
                         <li><a runat="server" href="~/Loginother.aspx">Logout</a></li>
                          <li><a runat="server" href="~/RESULTS.aspx">Case Results</a></li>
                      
                         &nbsp;
                         &nbsp;
                         &nbsp;
                         &nbsp;

                    
                       </ul>
                    
                      
                </div>
            </div>
          
        </div>   
                                <div id="pubbackcolor">
                                 <center>
<br /><div id="coldiv">
    
                                     <asp:Label ID="Label10" runat="server" Font-Bold="true" Text="PLEASE UPLOAD THE IMAGES RELEVANT TO THE ACCIDENT"></asp:Label><br />
                                 <asp:Label ID="Label11" runat="server" Font-Bold="true" Text="PLEASE SAVE THE IMAGE NAME WITH THE COMPLAINT NO ISSUED"></asp:Label><br />
      </div>   
                                     <asp:FileUpload ID="FileUpload1" runat="server" />
                                     <br />

<asp:GridView ID="gvImages" runat="server" AutoGenerateColumns="false" OnRowDataBound="OnRowDataBound" Height="144px" Width="202px">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Image Id" />
        <asp:BoundField DataField="Name" HeaderText="Name" />
        <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<div id="dialog" style="display: none">
</div><br />
                                    
                                 <br />
                                     
                                 <br />
<asp:Label ID="lblMessage" ForeColor="Green" runat="server" />
                                 <br />

    

                                 <br />
                                   

                                  <div id="colorback">
                                 <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="PLEASE UPLOAD THE IMAGES ONE BY ONE THAT ARE RELEVANT FOR THE PARTICULAR ACCIDENT"></asp:Label>
                                 <br />
                                 <br />
                                 *IMPORTANT<br />
                                 <br />
                                 THE INSURANCE PERSON INCHARGE MUST VERIFY THE SOURCE OF THE IMAGES BEFORE UPLOADING<br />
                                 THE RELEVANT COMPLAIN NUMBER RELEVANT TO THE INCIDENT MUST BE INCLUDED (ASSISTANT INCHARGE REF NO)<br />
                                   </div>
                                 <br />
                                 <br />
                                 <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Black" Text="ENTER THE TIME OF THE INCIDENT"></asp:Label>
                                 <br />
                                 <br />
                                 <asp:TextBox ID="txtIncidentTime" runat="server" Width="339px" TextMode="Time"></asp:TextBox><br />
                                     
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtIncidentTime" runat="server" ErrorMessage="Please Enter the Time the Incident Occured" Font-Bold="true" ForeColor="Red" ></asp:RequiredFieldValidator>

                             
         
                                 
                             
                                 <br />

                  

                                 <br />
                                 <br />
                                 
        <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Black" Text="DATE OF COLLISION"></asp:Label><br />
                                 <asp:TextBox ID="txtDate" runat="server" TextMode="Date"></asp:TextBox><br />
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate= "txtDate" runat="server" ErrorMessage="Please Select the Date" Font-Bold="true" ForeColor="Red" ></asp:RequiredFieldValidator>
                                     

                                 <br />
                                 <br />
                                 <br />
                                 <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Black" Text="DESCRIBE THE INCIDENT BRIEFLY"></asp:Label>
                                 <br />
                                 <br />
                                 <br />
                                 <asp:TextBox ID="txtDesc" runat="server" Height="85px" Rows="4" style="margin-top: 0px" TextMode="MultiLine" Width="1029px" Wrap="False"></asp:TextBox><br />
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate=  "txtDesc" runat="server" ErrorMessage="Please State the Incident Briefly" Font-Bold="true" ForeColor="Red" ></asp:RequiredFieldValidator>

                                 <br />
                                 <br />
                                 <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Black" Text="STATE YOUR FULL NAME"></asp:Label>
                                 <br />
                                 <br />
                                 <asp:TextBox ID="txtAcName" runat="server" Height="28px" TextMode="MultiLine" Width="625px"></asp:TextBox><br />
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate= "txtAcName"  runat="server" ErrorMessage="Please Enter Your Name" Font-Bold="true" ForeColor="Red" ></asp:RequiredFieldValidator>
                                     
                                 <br />
                                 <br />
                                 <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Black" Text="HOW MANY PASSENGERS WERE INSIDE THE VEHICLE"></asp:Label>
                                 <br />
                                 <br />
                                 <asp:TextBox ID="txtNoPassengers" runat="server" Height="28px" Width="625px"></asp:TextBox><br />
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate= "txtNoPassengers"  runat="server" ErrorMessage="Please Enter a Specific Digit" Font-Bold="true" ForeColor="Red" ></asp:RequiredFieldValidator>
                                      
                                 <br />
                                 <br />
                                 <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Black" Text="ANY INJURED PERSON"></asp:Label>
                                 <br />
                                 <br />
                                 <asp:TextBox ID="txtInjPpl" runat="server" Height="28px" Width="625px"></asp:TextBox><br />
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate= "txtInjPpl" runat="server" ErrorMessage= "Please State Whether there were any Injured People(Y/N)" Font-Bold="true" ForeColor="Red" ></asp:RequiredFieldValidator>
                                   
                                 <br />
                                 <br />
                                 <br />
                                 <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="Black" Text="PLEASE STATE THE LOCATION OF THE INCIDENT"></asp:Label>
                                 <br />
                                 <div>  
            
        </div>  
        <div>  
            <asp:TextBox ID="txt_location" TextMode="MultiLine" Width="400px" Height="70px" runat="server"></asp:TextBox>  <br />
             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate= "txt_location" runat="server" ErrorMessage= "Please State the Location" Font-Bold="true" ForeColor="Red" ></asp:RequiredFieldValidator>
             

   
           
        </div>  
 
  
                             <br />
            <br />
            <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="Black" Text="PLEASE ENTER THE COMPLAIN NUMBER GIVEN BY THE INSURANCE COMPANY"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="txtInsComplain" runat="server" Height="24px" Width="625px"></asp:TextBox><br />
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate= "txtInsComplain" runat="server" ErrorMessage="Please Enter the Complain Reference No" Font-Bold="true" ForeColor="Red" ></asp:RequiredFieldValidator>
  
            <br />
            <br />
            <br />
            <br />
            <CENTER>
                  <asp:Button ID="Button1" runat="server" Text="SUBMIT ALL" BackColor="#00CC00" BorderStyle="Ridge" BorderWidth="4px" Font-Bold="True" Font-Overline="False" Font-Size="Large" ForeColor="Black" Height="44px" Width="157px" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="CLEAR ALL" ForeColor="Black" Height="44px" Width="157px"  Font-Bold="true" OnClick="Button2_Click1"/>
    </CENTER>
                
  
          
          </center>
</div>
                             </form>

                      

                    


    </div>
       
</body>
</html>
