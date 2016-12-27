<%--
  Created by IntelliJ IDEA.
  User: cvzvb
  Date: 2016/12/26
  Time: 13:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Ajax</title>

  <style type="text/css">
    *{
      margin-top: 20px;;
    }
  </style>

  <script type="text/javascript">
    function getinfo(){
      var xmlhttp;
      if(window.XMLHttpRequest){
        xmlhttp= new XMLHttpRequest;
      }else{
        xmlhttp=new ActiveXObject("MicrosoftXMLHTTP");
      }
      xmlhttp.onreadystatechange=function (){
        if(xmlhttp.readyState==4&&xmlhttp.status==200){

          var user=eval("("+xmlhttp.responseText+")");
          document.getElementById("name").value=user.name;
          document.getElementById("age").value=user.age;
        }
      }
      xmlhttp.open("post","getAjax",true);
      xmlhttp.setRequestHeader("content-type","application/x-www-form-urlencoded");
      xmlhttp.send("action=getjsonobject");
    }

    function  getjsonarray(){
      var xmlhttp;
      if(window.XMLHttpRequest){
        xmlhttp= new XMLHttpRequest;
      }else{
        xmlhttp=new ActiveXObject("MicrosoftXMLHTTP");
      }
      xmlhttp.onreadystatechange=function (){
        if(xmlhttp.readyState==4&&xmlhttp.status==200){
          var user=eval("("+xmlhttp.responseText+")");
          var tab=document.getElementById("table");
          var hang;
          var lie1;
          var lie2;
          for(var i=0;i<user.user.length;i++){
            var u=user.user[i];
            hang=tab.insertRow();
            lie1=hang.insertCell();
            lie2=hang.insertCell();
            lie1.innerHTML= u.name;
            lie2.innerHTML= u.age;
          }
        }
      }
      xmlhttp.open("post","getAjax",true);
      xmlhttp.setRequestHeader("content-type","application/x-www-form-urlencoded");
      xmlhttp.send("action=getjsonarray");
    }
  </script>
</head>
<body>
<button onclick="getinfo()">getAjax</button>
name:
<input type="text" id="name" name="name"/>
age:
<input type="text" name="age" id="age"/>

<div>
  <table  align="center" id="table">
    <button onclick="getjsonarray()">getInfo</button>
    <tr>
      <th>name</th><th>age</th>
    </tr>
  </table>
</div>
<a href="register.jsp">checkname</a>
</body>
</html>
