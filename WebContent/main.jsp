<%@page import="com.VO.userVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����</title>
<style>
*{
    font-family: 'Noto Sans KR', sans-serif;
    list-style: none;
    text-decoration: none;
    border-collapse: collapse;
    margin:0px;
    padding: 0px;
    color: #000;

  
  }
  body{
    margin: auto;
  }

  h1 {
    font-size: 130px;
    font-weight: 200;
  }
  h2{
    text-align: center;
    font-size: 60px;
    font-weight: 100;
  }
 
  .contents2{
    font-size: 10px;
  }
  .contents3 {
    font-size: 14px;
    font-weight: 100;
  }
  .contents1_bold{
    font-size: 40px;
    font-weight: bold;
  }

  /* ���ȭ�� */
  .intro_bg{
    background-image: url(image/leave.jpg);
    -webkit-background-size: cover;
    -moz-background-size: cover;
    background-size: 100%;
    background-repeat: no-repeat;

    /* background-attachment: fixed; */
    background: radial-gradient(rgb(114, 108, 108));
    height: 1500px;
  }
  
  .header{
    width:100%;
    margin:auto;
    display:flex;
    height: 86px;
  }


  .nav{
    display: flex;
    justify-content: flex-end;
    width:100%;
    line-height: 86px;
  }

  .nav > li {
    margin-right:200px;
  }
  
  .nav > li > a {
    color: rgb(0, 0, 0);
    font-size: 35px;
    
  }
  
  /*------�˻�-------*/
  .searchArea{
    width:50%;
    height:80px;
    text-align: center;
    
    background: rgba(226, 206, 189, 0);
    border-radius: 5px;
    margin: auto;
  }
  .searchArea > form > input{
    margin-top: 40px;
    border: 5px;
    border-color: black;
    width:100%;
    height:50%;
    
    background: rgba(238, 146, 92, 0.741);
    color:#fff;
    font-size: 40px;
    text-align: center;
    padding-left:10px;
  }
  .searchArea > form > span{
    width:50px;
    font-size: 30px;
    color:#fff;
  }
/*------�˻�-------*/
  
  .intro_text{
    width:100%;
    margin:231px auto 231px auto;
    text-align: center;
  }

  .intro_text > h2{
    margin-top: 400px;
    font-size: 80px;
    color: rgb(155, 155, 155);
  }


  .intro_text > h1{
    margin-top: 30px;
    font-size: 170px;
    font-family:'Times New Roman', Times, serif;
    color: rgb(255, 255, 255);
  }
  .intro_text > h4{
    color:#fff;
  }
  
  
  /* --------���� ������ ----------*/
  .section{
    margin: auto;
    width: 100%;
    height: 500px;
  }


  .icons{
    display: flex;
    justify-content: center;
    width:50%;
    height: 502px;
    /* background: orange; */
    margin:auto;
  }
  .icons > li {
    flex: 1;
    background: rgba(65, 65, 65, 0);
    margin-top:100px;
    height:830px;
    text-align: center;
    
  }
  
  .icons > li > .icon_img{
    margin-top:18px;
  }
  
  .icons > li:not(:last-child){
     margin-right: 100px;
  }
  
   .nav a:hover{
    color: #1fdfdf;
  }

a:hover{
    color: #1fdfdf;
}

  .more{
    width:250px;
    height: 50px;
    background: #e4b06d6b;
    color: rgb(0, 0, 0);
    font-size: 25px;
    line-height: 50px;
    margin:25px auto;
    border: 0px;
  }
  /* --------���� ������ ----------*/
  
  /* main_text1 ȣ�� ��õ�ϴ� ��*/
  
.section2{
  width: 100%;
  height: 100%;
  margin: auto;
}

  .main_text1{
    margin:auto;
    

    width: 100%;
    margin-top: 100px;
    /* background: #2F7AF4 */
  }
  .section2 > h2{
    padding-top:100px;
    margin-bottom: -30px;
  }
  .main_text1 >h2 {
    width: 100%;
    text-align: center;
    margin-top: 150px;
    margin-bottom: -30px;
  }

  
  /* section2�� ��õ �Խ��� */

  .service {
    justify-content: center;
    display: flex;
    margin: 60px auto;
    height:427px;
    text-align: center;
    font-size: 25px;
    font-style:inherit;
  }
  
  .service > .contents2 {

    margin-left: 25px;
    
  }
  .service > .contents2 > h2{
    margin-bottom: 20px;
  }

  .service > .contents2 > a{
    text-align: center;
    font-size: 30px;
    font-style:inherit;
  }


    /* �� �ؿ� �ٴ� �κ� */
  .footer{
    display: flex;
    background: rgba(255, 166, 0, 0.692);
    margin-top: 150px;
    padding:30px;
    
  }
  .footer > a {
    font-size: 30px;
    flex:3;
    text-align: center;
    color: rgb(255, 255, 255);
  }

  .intro_text>h2 {
    font-size: 45px;
    font-family: "sans-serif";
    font-weight: normal;
}

    </style>

</head>
<body>
    <%	
    userVO vo = (userVO)session.getAttribute("user");	
 %>
    <div class="intro_bg">
        <div class="header">
            <ul class="nav">

                <%if(vo==null){%>
                <li><a href="#">HOME</a></li>
                <li><a href="join.jsp">ȸ������/�α���</a></li>
                <li><a href="hostJoin.jsp">��ü��ϰ���</a></li>
			    	 <%}%>

                     <%if(!(vo==null)){%>
                     <li><a href="#">HOME</a></li>
                        <li><a href="WebContent/homepage/include/booking.jsp">�����ϱ�</a></li>
                        <li><a href="UserReservation.jsp">����Ȯ��</a></li>
                        <li><a href="#">������</a></li>
                        
                         <%}%>
            </ul>

        </div>
        <div class="intro_text">
            <h2>�װ� ã�� ����? ���� ���־�!!</h2>
            <h1>���� �?</h1>
        </div>
    </div>

    <div class="section">
        <ul class="icons">
            <li>
                <div class="icon_img">
                    <img src="image/dok.png" width="250px" height="250px">
                </div>

                <div class="contents1_bold">
                    <button class="more "> <a href="#"> ��ä ����</a></button>
                </div>
            </li>
            <li>

                <div class="icon_img">
                    <img src="image/jib.png" width="250px" height="250px">
                </div>

                <div class="contents1_bold">
                    <button class="more"> <a href="#"> ȣ�� ����</a></button>
                </div>

            </li>

            <li>
                <div class="icon_img">
                    <img src="image/house.png" width="250px" height="250px">
                </div>
                <div class="contents1_bold">
                    <button class="more"> <a href="#"> �Խ�Ʈ�Ͽ콺 ����</a></button>
                </div>

            </li>

            <li>
                <div class="icon_img">
                    <img src="image/full.png" width="250px" height="250px">
                </div>
                <div class="contents1_bold">
                    <button class="more"> <a href="#"> Ǯ���� ���� </a></button>
                </div>
            </li>
        </ul>
    </div>

    <div class="searchArea">
        <form>
            <input type="search" placeholder="search">
            <span>�˻�</span>
        </form>
    </div>

    <div class="section2">
        <div class="main_text1">
            <h2>ȣ�� ��õ</h2>
            <div class="service">
                <div class="backpicture">
                    <img src="image/ho1.JPG" width="630px" height="400px"><br>
                    <a
                        href="Santorini.jsp">���丮��
                        300,000�� ���� ~ </a>
                </div>

                <div class="contents2">
                    <img src="image/ho2.jpg" width="630px" height="400px"><br>
                    <a href="#">�ϳ���ȣ�� 230,000�� ���� ~ </a>
                </div>

                <div class="contents2">
                    <img src="image/ho3.jpg" width="630px" height="400px"><br>
                    <a href="#">���ֽ����� 250,000�� ���� ~ </a>
                </div>

                <div class="contents2">
                    <img src="image/ho4.jpg" width="630px" height="400px"><br>
                    <a href="#">�ƴ���ȣ�� 170,000�� ���� ~ </a>
                </div>
            </div>

            <h2>�Խ�Ʈ �Ͽ콺 ��õ</h2>
            <div class="service">
                <div class="backpicture">
                    <img src="image/ge1.jpg" width="630px" height="400px"><br>
                    <a href="WebContent/homepage/include/index.jsp">������ �˴޼���� 15,000�� ���� ~ </a>
                </div>
                <div class="contents2">
                    <img src="image/ge2.jpg" width="630px" height="400px"><br>
                    <a href="#">ǳ���� �Խ�Ʈ�Ͽ콺 25,000�� ���� ~ </a>
                </div>

                <div class="contents2">
                    <img src="image/ge3.jpg" width="630px" height="400px"><br>
                    <a href="#">���� �Խ�Ʈ�Ͽ콺 20,000�� ���� ~ </a>
                </div>

                <div class="contents2">
                    <img src="image/ge4.jpg" width="630px" height="400px"><br>
                    <a href="#">���� �Խ�Ʈ�Ͽ콺 17,000�� ���� ~ </a>
                </div>
            </div>

            <h2>Ǯ���� ��õ</h2>
            <div class="service">
                <div class="backpicture">
                    <img src="image/full1.jpg" width="630px" height="400px"><br>
                    <a href="#">����ƹ븮 150,000�� ���� ~ </a>
                </div>
                <div class="contents2">
                    <img src="image/full2.jpg" width="630px" height="400px"><br>
                    <a href="#">Ǯ�������� 110,000�� ���� ~ </a>
                </div>

                <div class="contents2">
                    <img src="image/full3.png" width="630px" height="400px"><br>
                    <a href="#">��������Ǯ���� 99,000�� ���� ~ </a>
                </div>

                <div class="contents2">
                    <img src="image/full4.png" width="630px" height="400px"><br>
                    <a href="#">������ 199,000�� ���� ~ </a>
                </div>
            </div>
        </div>
    </div>
    <div class="footer">
        <a href="#">�� ��</a>
    </div>

</body>
</html>