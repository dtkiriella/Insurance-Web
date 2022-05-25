<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfilePublic.aspx.cs" Inherits="OnlineAccidentSubmission.ProfilePublic" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
 
   
     <style type="text/css">
        .circle {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            display: inline-block;
        }
    </style>
</head>
<body>
    <center>
    <form id="form1" runat="server">
        
        <div class='row'>
    <div class='col-sm-1'>
        <div class='form-group'>
            <div class="alert alert-danger fade in" role="alert" id="divError" runat="server"
                visible="false">
                
                <a class="close" data-dismiss="alert" aria-label="close">&times;</a>
            </div>
        </div>
    </div>
    <div class='col-sm-1'>
        <div class='form-group'>
            <div class="alert alert-success fade in" role="alert" id="divSuccess" runat="server"
                visible="false">
                <a class="close" data-dismiss="alert" aria-label="close">&times;</a>
            </div>
        </div>
    </div>
</div>
<div class='row'>
    <div class='col-sm-1'>
        <div class='form-group'>
          
            <div class='form-group'>
                <div class='row'>
                    <div class='col-sm-1'>
                        <div class='form-group'>
                            <br />
                            <asp:Label ID="Label2" runat="server" Text="Complain No" Font-Bold="true"></asp:Label>
                            <br />
                            <br />
                            <br />
                            <asp:TextBox ID="txtNewComNo" runat="server" Width="266px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtNewComNo" runat="server" ErrorMessage="Please Enter the Compalain No Given" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <br />
                            <br />
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" Text="ENTER THE TIME OF THE INCIDENT"></asp:Label>
                            <br />
                            <br />
                            <asp:TextBox ID="txtNewIncidentTime" runat="server" Width="339px" TextMode="Time"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtNewIncidentTime" runat="server" ErrorMessage="Please Enter the Time the Incident Occured"  ForeColor="Red" ></asp:RequiredFieldValidator>
                            <br />
                            <br />
                            <br />
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Black" Text="DATE OF COLLISION"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtNewtDate" runat="server" TextMode="Date"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNewtDate" ErrorMessage="Please Enter the Correct day" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <br />
                            <br />
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Black" Text="DESCRIBE THE INCIDENT AGAIN"></asp:Label>
                            <br />
                            <br />
                            <br />
                            <asp:TextBox ID="txtNewDesc" runat="server" Height="85px" Rows="4" style="margin-top: 0px" TextMode="MultiLine" Width="1029px" Wrap="False"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate=  "txtNewDesc" runat="server" ErrorMessage="Please State the Incident Briefly" ForeColor="Red" ></asp:RequiredFieldValidator>
                            <br />
                            <br />
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Black" Text="STATE YOUR FULL NAME"></asp:Label>
                            <br />
                            <br />
                            <asp:TextBox ID="txtNewAcName" runat="server" Height="28px" TextMode="MultiLine" Width="625px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate= "txtNewAcName"  runat="server" ErrorMessage="Please Enter Your Name" Font-Bold="true" ForeColor="Red" ></asp:RequiredFieldValidator>
                            <br />
                            <br />
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Black" Text="HOW MANY PASSENGERS WERE INSIDE THE VEHICLE"></asp:Label>
                            <br />
                            <br />
                            <asp:TextBox ID="txtNewNoPassengers" runat="server" Height="28px" Width="625px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate= "txtNewNoPassengers"  runat="server" ErrorMessage="Please Enter a Specific Digit" Font-Bold="true" ForeColor="Red" ></asp:RequiredFieldValidator>
                            <br />
                            <br />
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Black" Text="ANY INJURED PERSON"></asp:Label>
                            <br />
                            <br />
                            <asp:TextBox ID="txtNewInjPpl" runat="server" Height="28px" Width="625px"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate= "txtNewInjPpl" runat="server" ErrorMessage= "Please State Whether there were any Injured People(Y/N)" Font-Bold="true" ForeColor="Red" ></asp:RequiredFieldValidator>
                            <br />
                            <br />
                            <br />
                            <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="Black" Text="PLEASE STATE THE LOCATION OF THE INCIDENT"></asp:Label>
                            <br />
                            <div>
                            </div>
                            <div>
                                <asp:TextBox ID="txtNew_location" TextMode="MultiLine" Width="400px" Height="70px" runat="server"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate= "txtNew_location" runat="server" ErrorMessage= "Please State the Location" Font-Bold="true" ForeColor="Red" ></asp:RequiredFieldValidator>
                                <br />
                                <br />
                                <br />
                                <asp:Button ID="Button2" runat="server" Text="UPDATE INFORMATION" ForeColor="#000000" BackColor="#0099cc" Height="45px" style="margin-top: 0px" Width="300px" Font-Bold="true" OnClick="UpdateButton" />
                             
                                <asp:Button ID="Button3" runat="server" Text="BACK" ForeColor="#000000" BackColor="#33cc33" Height="45px" style="margin-top: 0px" Width="154px" Font-Bold="true" OnClick="BACKButton" />
                             
                                <br />
                                <br />
                                <hr />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
          
    </div>
</div>
    
                                     <asp:Label ID="Label10" runat="server" Font-Bold="true" Text="PLEASE UPLOAD THE IMAGES RELEVANT TO THE ACCIDENT"></asp:Label><br />
                                 
      </div>   
                                     <asp:FileUpload ID="FileUpload1" runat="server" />
                                     <br />
        <asp:Button ID="Button4" runat="server" font-bold="true" OnClick="Button4_Click" Text="UPLOAD MORE IMAGES" />
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
    </form>
        </center>
</body>
</html>
