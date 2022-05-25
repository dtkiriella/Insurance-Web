<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccountPol.aspx.cs" Inherits="OnlineAccidentSubmission.AccountPol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    

</head>
<body>
    <form id="form1" runat="server">
        <div>
        <center>
            <br />
            <br />
            <br />
            <br />
 <asp:Label ID="Label1" runat="server" Text="ENTER YOUR SOCIAL SECURITY NUMBER" Font-Bold="True" ForeColor="Black" Font-Size="Medium"></asp:Label>
                <br />
                <br />
                </center>
            <center>
        <asp:TextBox ID="txtNewRDASSN" runat="server" Width="358px" Height="34px"></asp:TextBox><br />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtNewRDASSN" runat="server" ErrorMessage="Please Enter a Combination of 12 Digits or Lesser" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
         <asp:Label ID="Label3" runat="server" Text="ENTER YOUR NAME" Font-Bold="True" Font-Size="Medium"></asp:Label>
                 <br />
                <br />
               
              <center>
      <asp:TextBox ID="txtNewPOName" runat="server" Width="358px" Height="34px"></asp:TextBox><br />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtNewPOName" runat="server" ErrorMessage="Please Enter Your Name" ForeColor="Red"></asp:RequiredFieldValidator>
                  <br />
                <br />
                <br />
        </center>
               <center>
        <asp:Label ID="Label4" runat="server" Text="ENTER LOCATION OF THE DEPARTMENT" Font-Bold="True" Font-Size="Medium"></asp:Label>
                   <br />
                <br />
                </center>
              <center>
      <asp:TextBox ID="txtNewLocDep" runat="server" Width="358px" Height="34px"></asp:TextBox><br />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtNewLocDep" runat="server" ErrorMessage="Please Enter the Location of Your Work Place  " ForeColor="Red"></asp:RequiredFieldValidator>
                  <br />
                <br />
                <br />
        </center>
              
                 <center>
          
                   
                                          <br />
                   <center>
        <asp:Label ID="Label7" runat="server" Text="ENTER THE DISTRICT" Font-Bold="True" Font-Size="Medium"></asp:Label>
                   <br />
                <br />
                </center> 
                       <center>
      <asp:TextBox ID="txtNewDis" runat="server" Width="358px" Height="34px"></asp:TextBox><br />
  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtNewDis" runat="server" ErrorMessage="Please Enter the District Name of Your Work Place" ForeColor="Red"></asp:RequiredFieldValidator>
                  <br />
                <br />
                <br />
        </center>
 <center>
        <asp:Label ID="Label8" runat="server" Text="RE-ENTER THE NAME OF THE DEPARTMENT" Font-Bold="True" Font-Size="Medium"></asp:Label>
                   <br />
                <br />
                </center> 
                      <center>
      <asp:TextBox ID="txtNewNameDep" runat="server" Width="358px" Height="34px" TextMode="MultiLine"></asp:TextBox><br />
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="txtNewNameDep" runat="server" ErrorMessage="Please Enter the Department Name" ForeColor="Red"></asp:RequiredFieldValidator><br />
                  <br />
                <br />

                           <asp:Button ID="Button1" runat="server" Text="UPDATE INFORMATION" BackColor="#9933ff" Font-Bold="True" Font-Size="Medium" Height="36px" Width="248px" OnClick="Button1_Click" />

                     <asp:Button ID="Button2" runat="server" Text="BACK" Font-Bold="True" Font-Size="Medium" Height="36px" Width="118px" OnClick="Button2_Click"  />



                <br />
        </center>
</div>
    </form>
</body>
</html>
