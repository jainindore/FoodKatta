<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Project.aspx.cs" Inherits="Project" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script src="Scripts/jquery-2.1.4.js"></script>
    <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js" ></script>
    <link href="autocomplete.css" rel="stylesheet" />
    <script src="yummly.js"></script>
    <script src="Demo.js"></script>
    <link href="recipeMenu.css" rel="stylesheet" />
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
        <img src="LasVegasFood0.jpg" style="width:100%"/>
    </figure>
    <div class="search-moment dark" style="top: -717px;" >
        <div class="findRecipe"><h2>Find Recipe!</h2>
        <form name="search-moment-form" action="/tools/searchresults" method="get">
            <fieldset>
                    <input type="text" id="searchText" name="search" autocomplete="off"/>
            </fieldset>
        </form>
        <button class="inspired" id="searchButton"><div>Search</div></button>
    </div>
    
</div>
            
</div>
    </div>
    </form>
     <script>
     
     $( "#searchText" ).autocomplete({
         source: [ "cheese", "cake", "egg", "peanuts", "pepper", "deserts", "tomatoes" ]
     });
   

</script>

</asp:Content>
   

