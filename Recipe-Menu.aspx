<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Recipe-Menu.aspx.cs" Inherits="Recipe_Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="Scripts/jquery-2.1.4.js"></script>
    <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
    <link href="autocomplete.css" rel="stylesheet" />
    <link href="recipeMenu.css" rel="stylesheet" />
    <script src="yummly.js"></script>
    <script src="recipeMenu.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <table id="searchResult" class="pacifico tableStyleOther" ; style=" text-decoration-color:darkslateblue; text-decoration:none; align-content:center">
            <thead>
                <tr>                   
                </tr>
            </thead>
            <tbody></tbody>
        </table> 
    </div>
    <script>
        $("#searchText").autocomplete({
            source: ["cheese", "cake", "egg", "peanuts", "pepper", "deserts", "tomatoes"]
        });
    </script>
</asp:Content>
