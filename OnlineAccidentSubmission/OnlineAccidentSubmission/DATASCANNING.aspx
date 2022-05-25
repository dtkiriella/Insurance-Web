<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DATASCANNING.aspx.cs" Inherits="OnlineAccidentSubmission.DATASCANNING" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
   

      
</head>
     <style type="text/css">
         #form1 {
             height: 1300px;
         }
           #HELLO{
                background-color:slategray;
            }
  .style1  
{  
font-size: large;  
text-align: center;  
}  
.style2  
{  
width: 272px;  
}  
.style3  
{  
     </style>

<body>
    <form id="form1" runat="server">
      

                <div>

               
    
        
               <div style="height: 1204px; width: 1339px; margin-left: 109px;">
<div id="HELLO">
     <CENTER>
                     <asp:Label ID="Label7" runat="server" Text="FOR INSURANCE PERSONNEL USE ONLY" Font-Bold="true" Font-Size="X-Large" ForeColor="#ff0000"></asp:Label>  <br />
             </CENTER>
</div>
            
          
               
              

           <center style="height: 1265px">
                <br />
                <br />
&nbsp;<asp:Label ID="Label1" runat="server" Text="RE-ENTER YOUR SSN NO TO PROCEED FORWARD" Font-Bold="true" Font-Size="12"></asp:Label><br />

              <asp:TextBox ID="txtInsReSSN" runat="server" Height="63px" Width="491px"></asp:TextBox>

             

            
                <br />
                <br />


              
<br />
 <br />
                <br />

                <asp:Label ID="Label2" runat="server" Text="ENTER THE COMPLAIN REFERENCE NO" Font-Bold="true" Font-Size="12"></asp:Label><br />
                <asp:TextBox ID="txtInsCom" runat="server" Height="41px" Width="706px"></asp:TextBox><br />
                <br />
                  <asp:Label ID="Label3" runat="server" Text="*APPROVAL/REJECTION" ForeColor="Red" Font-Bold="true" Font-Size="12"> </asp:Label><br />
                <asp:TextBox ID="txtInsapp" runat="server" Height="89px" Width="794px"></asp:TextBox><br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="* DOCUMENTS REQUIRED FOR CLAIMING" ForeColor="Red" Font-Bold="true" Font-Size="12" ></asp:Label><br />
                <asp:TextBox ID="txtInsDoc" runat="server" TextMode="MultiLine" Height="160px" Width="1159px"></asp:TextBox>
                <br />
                <br />
                <br />
                <br />
               <asp:Button ID="Button2" runat="server" Text="SUBMIT" Font-Bold="true" BackColor="#00ff00" Height="46px" Width="220px" OnClick="Button2_Click"  />
               <asp:Button ID="Button3" runat="server" Text="BACK" Font-Bold="true"  Height="46px" Width="220px" OnClick="Button3_Click"  />
                <asp:Button ID="Button4" runat="server" Font-Bold="true"  Height="46px" Width="220px"  Text="CLEAR" BackColor="#0099ff" OnClick="Button4_Click" />
                <br />
                <br />
                <br />
                    
           </center>

               
   
                  
        </div>     </div>  
                    <br />
                    <br />
          
          
               
           
             

           
               
            </div>
             
         
    </form>
</body>
</html>
