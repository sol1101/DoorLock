<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
* {
    margin: 0;
    padding: 0;
    font-family: sans-serif;
}
.wrap {
    height: 100%;
    width: 100%;
    background-image: url(image/backg.jpg);
    background-position: center;
    background-size: cover;
    position: absolute;
}
.form-wrap {
    width: 380px;
    height: 600px;
    position: relative;
    margin: 6% auto;
    background: #fff;
    padding: 5px;
    overflow: hidden;
}
.button-wrap {
    width: 230px;
    margin: 35px auto;
    position: relative;
    box-shadow: 0 0 600px 9px #fcae8f;
    border-radius: 30px;
}
.togglebtn {
    padding: 10px 30px;
    cursor: pointer;
    background: transparent;
    border: 0;
    outline: none;
    position: relative;
}
#btn {
    top: 0;
    left: 0;
    position: absolute;
    width: 110px;
    height: 100%;
    background: linear-gradient(to right, #ff105f, #ffad06);
    border-radius: 30px;
    transition: .5s;
}
.social-icons {
    margin: 10px auto;
    text-align: center;
}
.social-icons img {
    width: 30px ;
    cursor: pointer;
}
.input-group {
    top: 140px;
    position: absolute;
    width: 280px;
    transition: .5s;
}
.input-field {
    width: 100%;
    padding: 10px 0;
    margin: 5px 0;
    border: none;
    border-bottom: 1px solid #999;
    outline: none;
    background: transparent;
}
.submit {
    width: 85%;
    padding: 10px 30px;
    cursor: pointer;
    display: block;
    margin: auto;
    background: linear-gradient(to right, #ff105f, #ffad06);
    border: 0;
    outline: none;
    border-radius: 30px;
}
.checkbox {
    margin: 10px 10px 30px 0;
}
span {
    color: #777;
    font-size: 12px;
    bottom: 68px;
    position: absolute;
}
#login {
    left: 50px;
}
#register {
    left: 450px;
}
</style>
</head>
<body>
	<div class="wrap">
        <div class="form-wrap">
            <div class="button-wrap">
                <div id="btn"></div>
                <button type="button" class="togglebtn" onclick="login()">로그인</button>
                <button type="button" class="togglebtn" onclick="register()">회원가입</button>
            </div>
            <div class="social-icons">
                <img src="image/fb.png" alt="facebook">
                <img src="image/tw.png" alt="twitter">
                <img src="image/gl.png" alt="google">
            </div>
            <form id="login" action="hostLogin" class="input-group">
                    <input type="text" name = "host_id" class="input-field" placeholder="User name or Email" required>
                    <input type="password" name = "host_pw" class="input-field" placeholder="Enter Password" required>
                    <input type="checkbox" class="checkbox"><span>Remember Password</span>
                    <button class="submit" onclick="location.href='hostMain.jsp'">로그인</button>
                </form>
            <form id="register" action="hostJoin" class="input-group">
                <input type="text" name = "host_id" class="input-field" placeholder="User id" required>
                <input type="password" name = "host_pw" class="input-field" placeholder="Enter Password" required>
                <input type="email" name = "host_email"class="input-field" placeholder="Your Email" required>
                <input type="text" name ="host_name" class="input-field" placeholder="name" required>
                <input type="text" name ="host_phone" class="input-field" placeholder="phone_number" required><br><br>
                
               <br>
                <input type="checkbox" class="checkbox"><span>약관 확인</span>
                <button class="submit" onclick="location.href='hostMain.jsp'">가입하기</button>
                
            </form>
        </div>
    </div>
    <script>
        
    		
    	var x = document.getElementById("login");
        var y = document.getElementById("register");
        var z = document.getElementById("btn");
        
        
        function login(){
            x.style.left = "50px";
            y.style.left = "450px";
            z.style.left = "0";
        }

        function register(){
            x.style.left = "-400px";
            y.style.left = "50px";
            z.style.left = "110px";
        }
    </script>
</body>
</html>