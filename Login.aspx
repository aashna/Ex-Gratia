<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

    
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 66%;
            height: 156px;
        }
        .style2
        {
            width: 373px;
        }
        .style3
        {
            width: 58%;
        }
    </style>
</head>
<body background="galary/ttt-06.jpg"  >
    <form id="form1" runat="server"     >
    <div>
  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <br />
        <table class="style1" frame=border align="center" bgcolor="#CCFFFF" cellpadding="1" cellspacing="0">
        <tr>
        <td colspan="2">
        
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
            <asp:Image ID="Image1" runat="server" ImageAlign= "Middle" 
                ImageUrl="~/galary/images.jpg" Height="182px" 
                Width="260px" />
            <br />
            <br />
            <br />
            </td>
        
        </tr>
            <tr >
                <td align="right" class="style2" >
        <asp:Label ID="Label1" runat="server" Text="User ID" EnableTheming="True" 
                        style="font-weight: 700"  ></asp:Label>
                </td>
                <td  class="style3">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox_uid" runat="server" BackColor="White" ></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server"
  ControlToValidate="TextBox_uid"
  ErrorMessage="User id is a required field."
  ForeColor="Red" ToolTip="User id is a required field.">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align=right class="style2">
        <asp:Label ID="Label2" runat="server" Text="Password" style="font-weight: 700"></asp:Label>
                </td>
                <td class="style3">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox_pass" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                                <td colspan="2" align="left">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." 
                                         style="font-style: italic" />
                                    &nbsp;
                                </td>
             </tr>
             <tr>
                                <td align="center" colspan="2" style="color:Red;">
                                    &nbsp;</td>
             </tr>
            <tr>
                <td align=right class="style2">
        <asp:Button ID="Button_sub" runat="server" onclick="Button1_Click" Text="Login" 
                        style="font-weight: 700" />
                </td>
                <td class="style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
                </td>
            </tr>
        </table>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="Label_err" runat="server" Text="Label"></asp:Label>
    
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
