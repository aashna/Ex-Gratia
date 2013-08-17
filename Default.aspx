<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" MasterPageFile=""  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Empno"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="empno" runat="server" ></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="display" runat="server" Text="Display" BackColor="#CCCCFF" 
                        CausesValidation="False" onclick="display_Click" 
                        />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

