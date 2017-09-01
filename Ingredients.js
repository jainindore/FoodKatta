$(document).ready(
    function () {

        function populateSearchResultCallback(recipe) {
            console.log(recipe);
            var $body = $("#searchResult tbody");
            $body.empty();
            var $tr = $("<tr></tr>").appendTo($body);
            $("<div></div>").text("Rating: " + "  " + new Array(recipe.rating).join("*")).appendTo($tr);
            $td = $("<div></div>").text("Time: " + new Date(2000, 1, 1, 0, 0, recipe.totalTimeInSeconds, 0).toTimeString().split(" ")[0]).appendTo($tr);
            //$td = $("<td></td>").appendTo($tr);
            $("<div></div>").text("Ingredients:").appendTo($tr);
            var $ul = $("<ul></ul>").appendTo($tr);
            for (var j = 0; j < recipe.ingredientLines.length; j++) {
                var $li = $("<li></li>");
                $li.text(recipe.ingredientLines[j]);
                $ul.append($li);
            }
            $tr = $("<tr></tr>").appendTo($body);
            $("<div></div>").text("Nutrients:").appendTo($tr);
            var $ul = $("<ul style='font:normal 50% Arial, sans-serif'></ul>").appendTo($tr);
            for (var j = 0; j < recipe.nutritionEstimates.length; j++) {
                var $li = $("<li></li>");
                $li.text(recipe.nutritionEstimates[j].attribute + ": " + recipe.nutritionEstimates[j].value);
                $ul.append($li);
            }
            var recipeButton = "<a class=" + "inspiredRecipeButton id=" + "recipeButton" + " href='" + recipe.source.sourceRecipeUrl + "'> Go to Recipe </a>";
            $(recipeButton).appendTo($tr);
        }

        function populateResult(recipeId) {
            Yummly.Recipe(recipeId, populateSearchResultCallback)
        }

        function populateSearchResult(data) {
            var $body = $("#searchResult tbody");
            $body.empty();
            for (var i = 0; i < data.matches.length; i++) {
                (function (recipe) {

                    var $tr = $("<tr></tr>").appendTo($body);
                    var $td = $("<td><img /></td>").appendTo($tr);
                    $td.find('img').attr("src", recipe.smallImageUrls[0]);
                    $td = $("<td></td>").appendTo($tr);
                    $td = $("<td><a href='#'></a></td>");
                    $tr.append($td);
                    $td.find("a").text(recipe.recipeName).click(
                        function (e) {
                            e.preventDefault();
                            populateResult(recipe.id);
                        }
                        );

                
                })(data.matches[i]);
            }
        }

        $("#searchButton").click(
            function () {
                var searchText = $("#searchText").val();
                $("#findRecipeContainer").empty();
                $("#searchResult").css("display", "block");
                Yummly.SearchIngredients(searchText, populateSearchResult);
            }
            )
    }
);