 <%@ Page Title="Login" Language="C#" MasterPageFile="~/MasterPage.master"  AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="Scripts/jquery-2.1.4.js"></script>
    <link href="user.css" rel="stylesheet" />
     </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="user.css" rel="stylesheet" />
    <br />
    <br />
    <div class="border">

        <div class="registration1">
       
            <br />
            <asp:Label ID="lblUserName" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="txtUserName" runat="server" Width="250px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server"
                ControlToValidate="txtUserName" ForeColor="red"
                ErrorMessage="Username is a required field."> </asp:RequiredFieldValidator>

            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server"
                ControlToValidate="txtPassword" ForeColor="red"
                ErrorMessage="Password is a required field."> </asp:RequiredFieldValidator><br />
            <asp:Button ID="btnLogin" runat="server" CssClass="loginbutton" Text="Login" Font-Bold="True"  Height="43px" BackColor="Goldenrod"/>
            


        </div>
    </div>

</asp:Content>

