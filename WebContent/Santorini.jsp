<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
 <style type = "text/css">
    .intro_text > h1{
        font-size: 170px;
        font-family: "Ink free";
    }
    *{
    font-family: 'Noto Sans KR', sans-serif;
    list-style: none;
    text-decoration: none;
    border-collapse: collapse;
    margin:0px;
    padding: 0px;
    color: #000;
    
  
  }
  
  h1 {
    font-size: 70px;
    font-weight: 100;
  }
  h2{
    text-align: center;
    font-size: 50px;
    font-weight: 100;
  }
 
  .contents2{
    font-size: 18px;
  }
  .contents3 {
    font-size: 14px;
    font-weight: 100;
  }
  .contents1_bold{
    font-size: 18px;
    font-weight: bold;
  }
  /* --- */
  
  .result{
    font-size: 24px;
  }
  
  .intro_bg{
    background-image: url(image/darkmain.jpg);
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
    background-position: center;
    width: 100%;    
    height: 840px;
    }
  
  .header{
    
    width:1280px;
    margin:auto;
    display:flex;
    height: 86px;
  }
  .searchArea{
    width:300px;
    height:40px;
    background: rgba(0, 0, 0, 0.5);
    border-radius: 5px;
    margin-top:24px;
  }
  .searchArea > form > input{
    border:none;
    width:250px;
    height:40px;
    background: rgba(0, 0, 0, 0.0);
    color:#fff;
    padding-left:10px;
  }
  .searchArea > form > span{
    width:50px;
    color:#fff;
  }
  .nav{
    
    display: flex;
    justify-content: flex-end;
    width:calc(1280px - 300px);
    line-height: 86px;
  }
  .nav > li {
    margin-left:84px;
  }
  
  .nav > li > a {
    color: #fff;
    font-size: 25px;
  }
  
  .amount{
    position: relative;
    top:-66px;
    display: flex;
    width:1280px;
    background: #fff;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    margin: auto;
  }
  .amount > li {
    flex: 1;
    height: 132px;
  }
  .amount > li > div {
    text-align: center;
    margin-top:37px;
    height:57px;
  }
  
  .amount > li:not(:last-child) > div{
    border-right:1px solid #E1E1E1;
  }
  .intro_text{
    width:100%;
    margin:231px auto 231px auto;
    font-family: cursive;
    text-align: center;
  }
  .intro_text > h1,
  .intro_text > h4{
    color:#fff;
  }
  
  /* main_text0 */
  
  .main_text0{
    width: 100%;
    height:601px;
    margin-bottom:-50px;
    background: #f7f7f7;
  }
  .main_text0 > h1{
    padding-top:116px;
    text-align: center;
  }
  .main_text0 > .contents1 {
    text-align: center;
  }
  
  .icons{
    display: flex;
    width:1280px;
    height: 302px;
    /* background: orange; */
    margin:auto;
  }
  .icons > li {
    flex: 1;
    background: white;
    margin-top:49px;
    height:330px;
    text-align: center;
  }
  .icons > li > .icon_img{
    margin-top:18px;
  }
  
  .icons > li:not(:last-child){
    margin-right: 20px;
  }
  
  .icons .contents2 {
    width:280px;
    margin:auto;
    letter-spacing: -1px;
  }
  .button{
      font-size: 20px;
      color: #80acf3;
  }

  .nav a:hover{
    color: #1fdfdf;
  }

a:hover{
    color: #1fdfdf;
}

  .more{
    width:100px;
    height: 30px;
    background: #a7c2ee;
    color: rgb(0, 0, 0);
    font-size: 15px;
    line-height: 30px;
    margin:25px auto;
    border: 0px;
  }
  
  /* main_text1*/
  
  .main_text1{
    width: 100%;
    height:659px;
    /* margin-top:-132px; */
    /* background: #2F7AF4 */
  }
  .main_text1 > h1{
    padding-top:40px;
    text-align: center;
  }
  .main_text1 > .contents1 {
    text-align: center;
  }
  .service {
    width:1280px;
    display: flex;
    margin: 49px auto;
    height:427px;
  }
  
  .service > .contents2 {
    padding: 0px;
    margin-left: 20px;
  }
  .service > .contents2 > h2{
    margin-bottom: 27px;
  }
  
  /* main_text2 */
  .main_text2 {
    width:100%;
    height:500px;
    background-image: url("image/contact.png");
  }
  
  .main_text2 > ul {
    display: flex;
    padding-top:138px;
  }
  
  .main_text2 > ul > li {
    flex: 1;
    text-align: center;
  }
  .main_text2 > ul > li > div,
  .main_text2 > ul > li > div > h1{
    color: #fff;
  }
  .more2{
    width:220px;
    height:40px;
    border: 1px solid #fff;
    color: rgb(0, 0, 0);
    line-height: 40px;
    cursor: pointer;
    margin:16px auto;
  }
  .more2 a{
      color: white;
  }

  .footer{
    display: flex;
    background: #9aecea;
    padding:30px;
  }
  .footer > div:first-child {
    flex:3;
    text-align: center;
    color: rgb(0, 0, 0);
  }
  .footer > div:last-child {
    flex:9;
    color: rgb(0, 0, 0);
  }

  /* �湮 �ı� �Խ��� ���̺� ���� */
  table{
  width:100%;
  border-collapse: collapse;
  line-height: 24px;
  }
  table td,th {
    border-top:1px solid black;
    border-bottom:1px solid black;
    border-collapse: collapse;
    text-align: center;
    padding: 10px;
    font-size: 20px;
}
th {
	background: rgba(181, 223, 228, 0.398);
}
a{
    text-decoration: none;
    color: black;
}
a:hover{
    text-decoration: underline;
}
    
    </style>

    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="Santorini.css">
</head>

<body>
    <div class="wrap">
        <div class="intro_bg">
            <div class="header">
                <div class="searchArea">
                    <form>
                        <input type="search" placeholder="search">
                        <span>�˻�</span>
                    </form>
                </div>
                <ul class="nav">
                    <li><a href="#">���ư���</a></li>
                    <li><a href="#">HOME</a></li>
                    <li><a href="#">�� ���� ����</a></li>
                    <li><a href="#">���๮��</a></li>
                </ul>
            </div>
            <div class="intro_text">
                <h1>Santorini Pension</h1>
            </div>
        </div>
    </div>
    <!-- intro end-->

    <div class="main_text1">
        <h2>��������</h2>
        <div class="service">
            <div class="backpicture">
                <img src="image/santoria.JPG" width="630px" height="400px">
                <p>�������</p>
            </div>
            <div class="contents2">
                <img src="image/shdmf.jpg" width="630px" height="400px">
                <p>��������</p>
            </div>            
        </div>
    </div>

    <!-- --------�Խ��� ����------------->
    <div class="main_text1">
        <h2>�湮 �ı�</h2>
        <div class="service">
            <table class = "table">
                <thead>
                    <tr>
                        <th>��ȣ</th>
                        <th>����</th>
                        <th>�ۼ���</th>
                        <th>��¥</th>
                        <th>��ȸ��</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>100</td>
                        <td>�����ϰ� �䰡 ���Ƽ� �ٽ� ���� �;��!</td>
                        <td>������</td>
                        <td>2021.09.25</td>
                        <td>268</td>
                    </tr>
                    <tr>
                        <td>101</td>
                        <td>�������� ���� ������ �Ф�</td>
                        <td>�̼־�</td>
                        <td>2021.10.01</td>
                        <td>213</td>
                    </tr>
                    <tr>
                        <td>102</td>
                        <td>���� ������ ģ���ؼ� ���Ҿ��!</td>
                        <td>�ѽ���</td>
                        <td>2021.10.05</td>
                        <td>199</td>
                    </tr>
                    <tr>
                        <td>104</td>
                        <td>������ ���� ���־�� �� ì�� �弼�䤾��</td>
                        <td>������</td>
                        <td>2021.10.10</td>
                        <td>173</td>
                    </tr>
                    <tr>
                        <td>105</td>
                        <td>�����忡�� ���� ���� �λ��� ������ �־��~</td>
                        <td>������</td>
                        <td>2021.10.12</td>
                        <td>133</td>
                    </tr>
                    <tr>
                        <td>106</td>
                        <td>���Ұ� �ʹ� ���Ƽ� �� �ٽ� �湮�ϰ� �;��!</td>
                        <td>������</td>
                        <td>2021.10.20</td>
                        <td>97</td>
                    </tr>
                    <tr>
                        <td colspan="5"><a href = "#">�۾���</a></td>
                    </tr>
                </tbody>
            </table>
            <!-- --------�Խ��� ����------------->
                 
        </div>
    </div>




    <div class="main_text0">
        <h2>���� ����</h2>
        <ul class="icons">
            <li>

                <div class="icon_img">
                    <img src="image/ghome.png" width="200px" height="200px">
                </div>

                <div class="contents1_bold">
                    <button class="more"> <a href="#"> �� ��������</a></button>
                </div>

            </li>

            <li>
                <div class="icon_img">
                    <img src="image/call.png" width="200px" height="200px">
                </div>
                <div class="contents1_bold">
                    <button class="more"> <a href="#"> ��ȭ ����</a></button>
                </div>

            </li>

            <li>
                <div class="icon_img">
                    <img src="image/calendar.png" width="200px" height="200px">
                </div>
                <div class="contents1_bold">
                    <button class="more"> <a href="#"> ���� �ϱ� </a></button>
                </div>
            </li>
        </ul>
    </div>
    <div class="footer">
        <div>���ֽ� ���� �嵿 123-4567</div>
    </div>
    </div>

</body>
</html>