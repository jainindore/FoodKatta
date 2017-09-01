<%@ Page Language="C#" MasterPageFile="~/MasterPage.master"  AutoEventWireup="true" CodeFile="Cuisine.aspx.cs" Inherits="ExpertAdvice" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="Scripts/jquery-2.1.4.js"></script>
    <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js" ></script>
    <link href="autocomplete.css" rel="stylesheet" />
    <link href="recipeMenu.css" rel="stylesheet" />
    <link href="headerCss.css" rel="stylesheet" />
    <script src="yummly.js"></script>
    <script src="cuisine.js"></script>
    <style type="text/css">
        .auto-style1 {
            height: 1px;
        }
        .auto-style2 {
            height: 74px;
        }
        .auto-style3 {
            left: 0px;
            top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
         <table id="searchResult" class="pacifico tableStyle" style="display:none; text-decoration-color:coral; align-content:center">
            <thead>
                <tr>
                   
                </tr>
            </thead>
            <tbody></tbody>
        </table>   
             
        </div>
        <div class="search-moment-container" id="findRecipeContainer">
    <figure class="main">
        <img src="Images/Cookbook_critic.jpg" style="width:100%" />
    </figure>
    <div class="search-moment dark" >
        <div class="findRecipe" style="width:44.375rem"><h2>Search Cuisine</h2>
        <form name="search-moment-form" action="/tools/searchresults" method="get">
            <fieldset>
                    <input type="text" id="searchText" name="search" autocomplete="off"/>
            </fieldset>
        </form>
        <button class="inspired" id="searchButton"><div>Search</div></button>
    </div>
    
    </div>
       
  <script>   
     $( "#searchText" ).autocomplete({
         source: ["american", "italian", "asian", "english", "indian", "french", "japanese"]
     });
   

</script>
            </asp:Content>