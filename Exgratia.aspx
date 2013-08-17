<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Exgratia.aspx.cs" Inherits="Exgratia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 391px;
        }
        .style3
        {
            width: 284px;
        }
        .style4
        {
            width: 391px;
            height: 26px;
        }
        .style5
        {
            width: 284px;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <br />
    <table class="style1">
        <tr>
            <td class="style2">
    <asp:Label ID="Label1" runat="server" Text="Empno"></asp:Label>
            </td>
            <td class="style3">
    <asp:TextBox ID="empno" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
  ControlToValidate="empno"
  ErrorMessage="Empno is a required field."
  ForeColor="Red">
</asp:RequiredFieldValidator>
    
    <td>
    <asp:Button ID="fetch" runat="server" Text="Fetch" 
    onclick="Button1_Click" />
    </td>
            </td>
        </tr>
        <tr>
            <td class="style2">
    <asp:Label ID="Label2" runat="server" Text="Status"></asp:Label>
            </td>
            <td class="style3">
                <asp:DropDownList ID="status" runat="server">
                    <asp:ListItem>---Select---</asp:ListItem>
                    <asp:ListItem>Spouse</asp:ListItem>
                    <asp:ListItem>Employee</asp:ListItem>
                    <asp:ListItem>Stop</asp:ListItem>
                </asp:DropDownList>
     
            </td>
        </tr>
        <tr>
            <td class="style4">
    <asp:Label ID="Label3" runat="server" Text="Initial Document Submission"></asp:Label>
            </td>
            <td class="style5">
    <asp:TextBox ID="initial_d" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
    <asp:Label ID="Label4" runat="server" Text="Payment_mode"></asp:Label>
            </td>
            <td class="style3">
    <asp:TextBox ID="payment" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
    <asp:Label ID="Label5" runat="server" Text="Date of Joining"></asp:Label>
            </td>
            <td class="style3">
    <asp:TextBox ID="doj" runat="server"></asp:TextBox>
                <asp:Label ID="Label7" runat="server" Text="(mm/dd/yyyy)"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
    <asp:Label ID="Label6" runat="server" Text="Payment_Unit"></asp:Label>
            </td>
            <td class="style3">
    <asp:DropDownList ID="paymentunit" runat="server" 
       >
        <asp:ListItem>---select---</asp:ListItem>
        <asp:ListItem>PLHO</asp:ListItem>
        <asp:ListItem>ERPL</asp:ListItem>
        <asp:ListItem>WRPL</asp:ListItem>
    </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td align=right class="style2">
                <br />
                <asp:Button ID="submit" runat="server" Text="Submit" onclick="submit_Click" 
                    Height="26px" Width="77px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
            </td>
            <td class="style3">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="cancel" runat="server" Text="Cancel" 
    onclick="cancel_Click" Width="77px" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
    </table>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Labelresult" runat="server" Text="" style="font-weight: 700"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label_err" runat="server" Text=""></asp:Label>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;
    &nbsp;
    &nbsp;&nbsp;
&nbsp;
    </asp:Content>

