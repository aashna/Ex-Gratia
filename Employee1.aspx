<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Employee1.aspx.cs" Inherits="Employee1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 415px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:Label ID="Label9" runat="server" Text="Empno"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="empno" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="empno" ErrorMessage="Empno is a required field." ForeColor="Red">
</asp:RequiredFieldValidator>
                <th align=left>
                    <asp:Button ID="fetch" runat="server" Text="Fetch" 
                        onclick="fetch_Click" CausesValidation="False" /></th>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
  ControlToValidate="name"
  ErrorMessage="Name is a required field."
  ForeColor="Red">
</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label3" runat="server" Text="DOB"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="dob" runat="server"></asp:TextBox>
                <asp:Label ID="Label10" runat="server" Text="(mm/dd/yyyy)"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label4" runat="server" Text="Last grade"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="l_grade" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server"
  ControlToValidate="l_grade"
  ErrorMessage="Grade is a required field."
  ForeColor="Red">
</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label5" runat="server" Text="Last designation"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="l_designation" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label6" runat="server" Text="Last Unit"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="l_unit" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label7" runat="server" Text="Last Location"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="l_location" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label8" runat="server" Text="Parent Division"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="p_division" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2" align=right>
                <br />
                <br />
                <asp:Button ID="submit" runat="server" onclick="Button1_Click" Text="Submit"  />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                &nbsp;&nbsp;<br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="cancel" runat="server" Text="Cancel" onclick="cancel_Click" />
                &nbsp;&nbsp;&nbsp;
                </td>
        </tr>
    </table>
    <br />
    <br />
    <p>
                <asp:Label ID="Labelresult" runat="server" Text="" 
            style="font-weight: 700"></asp:Label>
    </p>
    <p>
                <asp:Label ID="Label_err" runat="server" Text=""></asp:Label>
    </p>
</asp:Content>

