<%@ Page Title="Register" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="Scripts/jquery-2.1.4.js"></script>
    <link href="registeration.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="registeration">
        <h2 style="width: 100%;">&nbsp; &nbsp; &nbsp; &nbsp; Fill in the following details to register</h2>
    </div>
    <br /><br /><br /><br />
    <div class="registration1">
        <div class="left">
            <ul class="list" />
        </div>
        <div>
            <ul class="right">
                <asp:Label ID="Label1" runat="server" Text="Full Name"></asp:Label>
                <li>
                    <asp:TextBox ID="txtName" runat="server" CssClass="right"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server"
                        ControlToValidate="txtName" ForeColor="red"
                        ErrorMessage="Please enter your Full Name"> </asp:RequiredFieldValidator></li>
                <asp:Label ID="Label3" runat="server" Text="Email Address"></asp:Label>
                <li>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server"
                        ControlToValidate="txtEmail" ForeColor="red"
                        ErrorMessage="Please enter your Email Address" Display="Dynamic"> </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Please enter a valid Email Address" ControlToValidate="txtEmail" ForeColor="red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></li>
                <asp:Label ID="lblPhone" runat="server" Text="Phone"></asp:Label>
                <li>
                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox><br />
                    <asp:CompareValidator ID="CompareValidatorPhone" runat="server" ErrorMessage="Please enter a valid phone number"
                        ControlToValidate="txtPhone" Operator="DataTypeCheck" Type="Integer" ForeColor="red" Display="Dynamic"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhone" runat="server" ErrorMessage="Please enter a valid phone number"
                        ControlToValidate="txtPhone" ForeColor="red" Display="Dynamic"></asp:RequiredFieldValidator></li>
                <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
                <li>
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server"
                        ControlToValidate="txtAddress" ForeColor="red"
                        ErrorMessage="Please enter your Address"> </asp:RequiredFieldValidator></li>
                <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                <li>
                    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCity" runat="server"
                        ControlToValidate="txtCity" ForeColor="red"
                        ErrorMessage="Please enter your City"> </asp:RequiredFieldValidator></li>
                <asp:Label ID="lblState" runat="server" Text="State"></asp:Label>
                <li>
                    <asp:DropDownList ID="ddlState" runat="server" Font-Names="Segoe UI" Height="40px">
                        <asp:ListItem Text="Select State" Value="-1"></asp:ListItem>
                        <asp:ListItem Text="Texas"></asp:ListItem>
                        <asp:ListItem Text="Tennessee"></asp:ListItem>
                        <asp:ListItem Text="Washington"></asp:ListItem>
                        <asp:ListItem Text="Milwaukee"></asp:ListItem>
                        <asp:ListItem Text="Arkansas"></asp:ListItem>
                    </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidatorState" runat="server"
                        ControlToValidate="ddlState" InitialValue="-1" ForeColor="red"
                        ErrorMessage="Please select your State"> </asp:RequiredFieldValidator></li>
                <asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label>
                <li>
                    <asp:DropDownList ID="ddlCountry" runat="server" Font-Names="Segoe UI" Height="40px">
                        <asp:ListItem Text="Select Country" Value="-1"></asp:ListItem>
                        <asp:ListItem Text="India"></asp:ListItem>
                        <asp:ListItem Text="United States of America"></asp:ListItem>
                        <asp:ListItem Text="Australia"></asp:ListItem>
                        <asp:ListItem Text="Spain"></asp:ListItem>
                        <asp:ListItem>South Africa</asp:ListItem>
                    </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ControlToValidate="ddlCountry" InitialValue="-1" ForeColor="red"
                        ErrorMessage="Please select your Country"> </asp:RequiredFieldValidator></li>
                <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                <li>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server"
                        ControlToValidate="txtPassword" ForeColor="red"
                        ErrorMessage="Please enter a password"> </asp:RequiredFieldValidator></li>
                <asp:Label ID="Label2" runat="server" Text="Re-Enter Password"></asp:Label>
                <li>
                    <asp:TextBox ID="txtReenterPassword" runat="server" TextMode="Password">            
                    </asp:TextBox><asp:CompareValidator ID="CompareValidatorPasswords" runat="server" ErrorMessage="Password and Re-Enter Passwords must match"
                        ControlToValidate="txtReenterPassword" ControlToCompare="txtPassword" Operator="Equal" Type="String" ForeColor="red" Display="Dynamic"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorReenterPassword" runat="server"
                        ControlToValidate="txtReenterPassword" ForeColor="red"
                        ErrorMessage="Please enter a password" Display="Dynamic"> </asp:RequiredFieldValidator></li>
                <li>
                    <asp:Button ID="Button1" runat="server" Text="Register" /></li>
            </ul>
        </div>
    </div>
</asp:Content>



