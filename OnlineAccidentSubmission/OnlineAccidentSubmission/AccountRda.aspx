<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccountRda.aspx.cs" Inherits="OnlineAccidentSubmission.AccountRda" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>

                <br />
                <br />
                <br />
                <br />
                <center>
            <asp:Label ID="Label1" runat="server" Text="ENETR YOUR SOCIAL SECURITY NUMBER" Font-Bold="True" ForeColor="Black" Font-Size="Medium"></asp:Label>
                <br />
                <br />
                </center>
            <center>
        <asp:TextBox ID="txtNewRDASSN" runat="server" Width="358px" Height="34px"></asp:TextBox><br />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtNewRDASSN" runat="server" ErrorMessage="Please Enter a Combination of 12 Digits or Lesser" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
              <asp:Label ID="Label3" runat="server" Text="NAME OF THE USER" Font-Bold="True" Font-Size="Medium"></asp:Label>
                 <br />
                <br />
                </center>
              <center>
      <asp:TextBox ID="txtNewRDAName" runat="server" Width="358px" Height="34px"></asp:TextBox><br />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtNewRDAName" runat="server" ErrorMessage="Please Enter Your Name" ForeColor="Red"></asp:RequiredFieldValidator>
                  <br />
                <br />
                <br />
        </center>
               <center>
        <asp:Label ID="Label4" runat="server" Text="ENTER THE SPECIFIC DEPARTMENT NAME" Font-Bold="True" Font-Size="Medium"></asp:Label>
                   <br />
                <br />
                </center>
              <center>
      <asp:TextBox ID="txtNewRDADEPName" runat="server" Width="358px" Height="34px"></asp:TextBox><br />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtNewRDADEPName" runat="server" ErrorMessage="Please Enter the Name of Your Department  " ForeColor="Red"></asp:RequiredFieldValidator>
                  <br />
                <br />
                <br />
        </center>
              
                 <center>
          
                   
                                          <br />
                   <center>
        <asp:Label ID="Label7" runat="server" Text="ENTER THE CORRECT BRANCH NAME" Font-Bold="True" Font-Size="Medium"></asp:Label>
                   <br />
                <br />
                </center> 
                       <center>
      <asp:TextBox ID="txtNewRDABRN" runat="server" Width="358px" Height="34px"></asp:TextBox><br />
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtNewRDABRN" runat="server" ErrorMessage="Please Enter the District Name of Your Work Place" ForeColor="Red"></asp:RequiredFieldValidator>
                  <br />
                <br />
                <br />
        </center>
 <center>
        <asp:Label ID="Label8" runat="server" Text="ENTER YOUR DISTRICT" Font-Bold="True" Font-Size="Medium"></asp:Label>
                   <br />
                <br />
                </center> 
                      <center>
      <asp:TextBox ID="txtNewRDADis" runat="server" Width="358px" Height="34px" TextMode="MultiLine"></asp:TextBox><br />
 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="txtNewRDADis" runat="server" ErrorMessage="Please Enter the Department Name" ForeColor="Red"></asp:RequiredFieldValidator>
                  <br />
                <br />
                          
                <br />
                          <asp:Button ID="Button1" runat="server" Text="UPDATE INFORMATION" BackColor="#ff6600" Font-Bold="True" Font-Size="Medium" Height="36px" Width="239px" OnClick="Button1_Click" />


                                          <asp:Button ID="Button2" runat="server" Text="BACK" Font-Bold="True" Font-Size="Medium" Height="36px" Width="118px" OnClick="Button2_Click" />
        </div>
    </form>
</body>
</html>
