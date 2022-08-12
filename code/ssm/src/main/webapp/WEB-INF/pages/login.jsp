<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    body{
        background-image: url(https://www.qs.com/wp-content/uploads/2015/07/student-subject-choices-stem-drift-bobbed.jpg);
        background-repeat: no-repeat;
        background-attachment:fixed;
        background-position: center;
        background-size: cover;
    }

    .subject{
        text-align: center;
        font-size: 88px;
        top: 35px;
        color: orange;
        font-weight: bolder;
        position: relative;
    }

    .cap{
        position: relative;
        top: 10px;
        left: 173px;
        color: orange;
        font-size: 34px;
        font-weight: bolder;
    }

    .button{
        position: relative;
        top: 32px;
        margin: auto;
        background-color: #1e7be3;
        color: white;
        font-size: 16px;
        border: none;
        border-radius: 8px;
        padding: 15px 31px;
        font-weight: bold;
    }

    .button:hover{
        background-color: orange;
    }

    .input{
        width: 240px;
        height: 35px;
        background-color: #f1f1f1;
        border-radius: 10px;
        margin: 10px;
        margin-top: 29px;
        position: relative;
    }

    .container{
        width: 480px;
        height: 325px;
        overflow: auto;
        overflow-x: hidden;
        background-color: rgba(255, 255, 255, 0.86);
        border-radius: 10px;
        left: 0;
        right: 0;
        margin: auto;
        margin-bottom: 10px;
        margin-top: 105px;
        padding: 0px;
        opacity: 0.95;
        box-sizing: border-box;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    }

    .formmer{
        color: orange;
        font-weight: bolder;
        font-size: 19px;
        text-align: center;
        top: 23px;
        position: relative;
    }

</style>
<head>
    <title>Login</title>
</head>
<body>
<div class="subject">Subject System</div>
<div class="container">
    <div class="cap">Login in</div>
    <form class="formmer" name="accountForm" action="${pageContext.request.contextPath}/account/login" method="post">
        Student ID:<input class="input" type="text" name="id"><br>
        Password:<input class="input" type="password" name="password"><br>
        <input class="button" type="submit" value="Login"><br>
    </form>
</div>
</body>
</html>
