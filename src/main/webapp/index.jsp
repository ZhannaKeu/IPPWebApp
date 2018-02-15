
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset= "UTF-8"/>
    <title>Авторизация</title>
    <style>
        body {
            margin: 0 auto;
            background-image: url(image/aut.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            font-family: sans-serif;
        }
        .shadowtext {
            text-shadow: #B0E0E6 2px 2px 0, #B0E0E6 2px -2px 0,
            #B0E0E6 -2px 2px 0, #B0E0E6 -2px -2px 0;
            color: black;
            font-size: 3em;
        }
        .login-box{
            width: 380px;
            height: 240px;
            text-align: center;
            background: rgba(0,0,0,0.5);
            color:#fff;
            border-radius: 4px;
            margin: 0 auto;
            margin-top: 150px;
        }
        h1{
            margin:0;
            /*padding:0,0,20px;*/
            text-align: center;
            font-size:22px;
        }
        .login-box p{
            margin: 10px;
            padding:0;
            font-weight: bold;
        }
        .login-box input{
            margin: 10px;
            width:100%;
            margin-bottom:20px;
        }
        .login-box input[type="text"], input [type="password"]
        {
            border:none;
            border-bottom: 1px solid #fff;
            background: transparent;
            outline: none;
            height: 40px;
            color: #fff;
            font-size:16px;
        }
    </style>
</head>
<body>
<p class="shadowtext" align="center">Индивидуальный<br>
    план<br>
    преподавателя</p>
<div class="login-box">
    <h1>Авторизация</h1>
    <form>
        <p></p>
        <p align="left">Логин</p>
        <input type="text" name= "Логин" placeholder="Введите логин">
        <p align="left"> Пароль</p>
        <input type="text" name= "Пароль" placeholder="Введите пароль">
        <input type="button" name="button" value= "Вход">
    </form>
</div>
</body>
</html>

