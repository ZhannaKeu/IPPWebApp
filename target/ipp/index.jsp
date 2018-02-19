
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ResourceBundle" %>
<% ResourceBundle resourceBundle = ResourceBundle.getBundle("i18n", response.getLocale());%>
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
			pozition: fixed;
            font-size: 3em;
        }
        .login-box{
            width: 380px;
            height: 240px;
            text-align: center;
			pozition: fixed;
            background: rgba(0,0,0,0.5);
            color:#fff;
            border-radius: 4px;
            margin: 0 auto;
            margin-top: 150px;
        }
        h1{
            margin:0;
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

        .loginInputText
        {
            border:none;
            border-bottom: 1px solid #fff;
            background: transparent;
            outline: none;
            height: 40px;
            color: #fff;
            font-size:16px;
        }

		.loginButton
		{
            border: none;
            outline:none;
            height:40px;
            background:white;
            color:#000000;
            width: 100px;
            font-size:15px;
            border-radius:18px;
            pozition:center;
            margin: 10px;
		}
    </style>
</head>
<body>
<p class="shadowtext" align="center">Электронный<br>
    индивидуальный план<br>
    работы преподавателя</p>
<div class="login-box">
    <h1>Авторизация</h1>
    <form name="login" action="controller" method="post">
        <table >
            <tr>
                <td><p align="left">Логин</p></td>
                <td><input type="text" name= "userName" class="loginInputText" placeholder="Введите логин"></td>
            </tr>
            <tr>
                <td><p align="left"> Пароль</p></td>
                <td><input type="password" name= "password" class="loginInputText" placeholder="Введите пароль"></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <input type="hidden" name="action" value="login">
                    <input type="submit" name="submit" class="loginButton" value= "Вход">
                </td>
                <td style="text-align: right">
                    <t:locale path="/index.jsp"/>
                </td>
            </tr>
        </table>
    </form>

</div>
</body>
</html>

