<%--
  Created by IntelliJ IDEA.
  User: cvzvb
  Date: 2016/12/26
  Time: 16:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <script type="text/javascript">
        function checkname(){
            var xmlhttp;
            var name=document.getElementById("name").value;

            if(window.XMLHttpRequest){
                xmlhttp= new XMLHttpRequest;
            }else{
                xmlhttp=new ActiveXObject("MicrosoftXMLHTTP");
            }
            xmlhttp.onreadystatechange=function (){
                if(xmlhttp.readyState==4&&xmlhttp.status==200){

                    var exist=eval("("+xmlhttp.responseText+")");
                    if(exist.exist){
                        alert("exist");
                    }else {
                        alert("not exist");
                    }

                }
            }
            xmlhttp.open("post","checkName",true);
            xmlhttp.setRequestHeader("content-type","application/x-www-form-urlencoded");
            xmlhttp.send("name="+name+"");


        }
    </script>
</head>
<body>
<table>
    <tr>
        <td>name:</td>
        <td><input type="text" id="name"/></td>
    </tr>
    <tr>
        <td><button onclick="checkname()">ok</button></td>
    </tr>
</table>
</body>
</html>
