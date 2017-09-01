<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ingredients.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="Ingredients" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="Scripts/jquery-2.1.4.js"></script>
    <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js" ></script>
    <link href="autocomplete.css" rel="stylesheet" />
    <script src="yummly.js"></script>
    <script src="Ingredients.js"></script>
    <link href="headerCss.css" rel="stylesheet" />
    <link href="recipeMenu.css" rel="stylesheet" />
     </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        
    <div>
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
        <img src="Images/sandwich.jpg" style="width:100%" />
    </figure>
    <div class="search-moment dark" >
        <div class="findRecipe" style="width:52.375rem"><h2>Search Ingredient</h2>
        <form name="search-moment-form" action="/tools/searchresults" method="get">
            <fieldset>
                    <input type="text" id="searchText" name="search" autocomplete="off"/>
            </fieldset>
        </form>
        <button class="inspired" id="searchButton"><div>Search</div></button>
    </div>
    
    </div>
    </div>
 <script>
     
     $( "#searchText" ).autocomplete({
         source: ["pepper", "onion", "egg", "butter", "cinnamon", "salt"]
     });
   

</script>
        </asp:Content>
