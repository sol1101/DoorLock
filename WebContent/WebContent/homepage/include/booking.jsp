<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>��������Ʈ</title>
    <link rel="stylesheet" href="css/booking.css">
    <script type="text/javascript" src="js/jquery-3.2.1.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="js/booking.js" charset="utf-8"></script>
	
</head>
<body>
    <div id="container">
       <!-- <header>
            <a href="main_display.jsp"><img id="logotype" src="images/P202011017/logo/log.png" alt="���ηΰ�"></a>
        </header>-->


        <section>
            <div id="firstarticle">
                <h2>�����ϱ�</h2>
                <img src="images/booking_picture.gif">
            </div>
            <div id="secondarticle">
                <form action="../../../User_Reservation" method="post" id="bookform">
                    <table cellspacing="0">
                        <colgroup>
                            <col width="25%">
                            <col width="20%">
                            <col width="25%">
                        </colgroup>
                        <tr>
                            <th class="borderright">��¥</th>
                            <th class="borderright">��</th>
                            <th>�ð�</th>
                        </tr>
                        <tr>
                            <td class="borderright">
                            <input type="date" name="inputDate"  id="bookdate">�Խ���
                            <input type="date" name="outputDate"  id="bookdate">�����
                            </td>
                            <td class="borderright">
                                <ul id="themalist">
                                    <li>
                                        
                          
                                        
                                                                    <!--�ʱ�-->
                                     <p id="imglist"><img src="images/P202011017/service/41607/017696.jpg" width="300px"></p>
                                    </li>
                                    <li>
                                        <a class='myImage' href="images/P202011017/room/41595/00.jpg" id="0">101 �˴޻�</a>
                                    </li>
                                    <li>
                                        <a class='myImage'  href="images/P202011017/room/41596/00.jpg" id="1">102 �ܴ���</a>
                                    </li>
                                    <li>
                                        <a class='myImage'  href="images/P202011017/room/41597/00.jpg" id="2">201 �ܱݰ�</a>
                                    </li>     
                                         
                                </ul>
                            </td>
                            <td>
                                <ul id="timelist">
                                    <li><a href="#" id="0">9:00</a></li>
                                    <li><a href="#" id="1">12:00</a></li>
                                    <li><a href="#" id="2">15:00</a></li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                          
                            <td>
                                
                                <input type="hidden" id="thematext" name="thema" value="">
                                <input type="hidden" id="timetext" name="time" value="">
                                <input type="submit"  class="buttontype" value="��������" >
                            </td>
                            
                        </tr>
                    </table>
                </form>
            </div>
        </section>
        <script type="text/javascript">
        	//$('.myImage').click(function(){
        		//var value = $(this).attr('id');
        		//$('#thematext').attr('value',value);
        	//});
        
        
        
        </script>
        
        
        
        <footer>
            <ul>
                <li>�ּ� : ������</li>
                <li>��ǥ : �ݴް�</li>
                <li>��ȭ��ȣ : 000-0000-0000</li>
                <li>�̸��� : goodnight@naver.com</li>
            </ul>
        </footer>
    </div>
</body>
</html>