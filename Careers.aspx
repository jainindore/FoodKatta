<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Careers.aspx.cs" Inherits="Careers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
    .career{
        background-color:lightpink;
        height:840px;
        margin-top:-10px;
        margin-left:-5px;
    }
    .heder1{
        font-family:'Times New Roman', Times, serif;
    }
         .auto-style1 {
             font-family: 'Times New Roman', Times, serif;
             width: 1280px;
             height: 61px;
             font-size:50px;
             text-align:center;
         }
        </style>
</head>
<body>
    <form id="form1" class ="career" runat="server">
        <header class ="auto-style1">
            <b>Career opportunities </b>
        </header>
    <div>
    send your resume to <a href ="mailto:careeriad25@gmail.com">careeriad25@gmail.com</a> 
        <p>      OR </p>
    <p> uplaod here <input type="file"  name="pic" accept ="image" />
          <input type="submit" class="button" style="font-weight: normal" value="submit" onclick="btnOk()" />
</p>
    </div>
    </form>

    <script>
        function btnOk() {
            
            alert("We will contact you soon");
}
</script>

</body>
</html>
