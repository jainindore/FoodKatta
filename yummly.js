 
//main javascript file consuming yummly.com API and getting the data from GET HTTP method in JSON format.

(function (global, $) {
    function YummlyRequest(data) {
        if (typeof (data) == "object" && data !== null) {
            for (var i in data) {
                this[i] = data[i];
            }
        }
    }

    YummlyRequest.prototype._app_id = "f6106aa9";
    YummlyRequest.prototype._app_key = "024a0a3fdb27e364ceb6732cd28e267d";
    YummlyRequest.URL = "http://api.yummly.com/v1/api/";
    function getUrl(method, data, path) {
        if (typeof (data) == "string") {
            path = data;
            data = undefined;
        }
        var request = new YummlyRequest(data);

        var url = YummlyRequest.URL + method;
        if (path) {
            url += "/" + path;
        }
        url += "?" + $.param(request);
        return url;
    }

    function Yummly() {

    }

    Yummly.Search = function Yummly_Search(query, callback) {
        var url = getUrl("recipes", { q: query });
        var options = {
           // data = new YummlyRequest({q: query}),
            dataType: "jsonp",
            type: "GET",
            jsonp: "callback",
            success: callback
        };
        $.ajax(url, options);
    }
    Yummly.SearchCuisine = function Yummly_SearchCuisine(query, callback) {
            var url1 = "http://api.yummly.com/v1/api/recipes?_app_id=f6106aa9&_app_key=024a0a3fdb27e364ceb6732cd28e267d&q=%22%22&allowedCuisine[]=cuisine^cuisine-" + query;

       
        var options = {
            // data = new YummlyRequest({q: query}),
            dataType: "jsonp",
            type: "GET",
            jsonp: "callback",
            success: callback
        };
        $.ajax(url1, options);
    }
   
    Yummly.Recipe = function Yummly_Recipe(recipeId, callback) {
        var url = getUrl("recipe", recipeId);
        var options = {
            dataType: "jsonp",
            type: "GET",
            jsonp: "callback",
            success: callback
        };
        $.ajax(url, options);
    }
    Yummly.SearchHolidays = function Yummly_SearchHolidays(query, callback) {
        var url1 = "http://api.yummly.com/v1/api/recipes?_app_id=f6106aa9&_app_key=024a0a3fdb27e364ceb6732cd28e267d&q=&allowedHoliday[]=holiday^holiday-" + query;
        var options = {
            dataType: "jsonp",
            type: "GET",
            jsonp: "callback",
            success: callback
        };
        $.ajax(url1, options);
    }
    Yummly.SearchIngredients = function Yummly_SearchIngredients(query, callback) {
        var url1 = "http://api.yummly.com/v1/api/recipes?_app_id=f6106aa9&_app_key=024a0a3fdb27e364ceb6732cd28e267d&q=&allowedIngredient[]="+query;
        var options = {
            dataType: "jsonp",
            type: "GET",
            jsonp: "callback",
            success: callback
        };
        $.ajax(url1, options);
    }
    Yummly.SearchDiet = function Yummly_SearchDiet(query, callback) {
        var url1 = "http://api.yummly.com/v1/api/recipes?_app_id=f6106aa9&_app_key=024a0a3fdb27e364ceb6732cd28e267d&q=&allowedDiet[]=390^Pescetarian&allowedDiet[]=388^Lacto vegetarian";
        var options = {
            dataType: "jsonp",
            type: "GET",
            jsonp: "callback",
            success: callback
        };
        $.ajax(url1, options);
    }

    global.Yummly = Yummly;
})(window, jQuery);