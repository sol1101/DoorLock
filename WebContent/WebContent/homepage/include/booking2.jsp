<%@page import="com.VO.userVO"%>
<%@page import="com.controller.User_Reservation"%>
<%@page import="com.controller.User_Reservation2"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="ko">
<head>

    <meta charset="utf-8">
    <title>��������Ʈ</title>
    <link rel="stylesheet" href="css/booking2.css">
    <script type="text/javascript" src="js/jquery-3.2.1.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="js/booking2.js" charset="utf-8"></script>
</head>
<body>
    <%
    userVO vo = (userVO)session.getAttribute("user");  
    String a = (String)session.getAttribute("room_num");
    String b = (String)session.getAttribute("inTime");
	String c = (String)session.getAttribute("in_date");
	String d = (String)session.getAttribute("out_date");
	String e = (String)session.getAttribute("customer_name");
	String f = (String)session.getAttribute("customer_phone");
	String h = (String)session.getAttribute("customer_email");
    %>
    
    <div id="container">
    <!--<header>
        <a href="main_display.jsp"><img id="logotype" src="images/main_logo.JPG" alt="���ηΰ�"></a> -->
        <!--<ul>
            <li><a href="reason.jsp">reason</a></li>
            <li><a href="notice.jsp">notice</a></li>
            <li><a href="rooms.jsp">rooms</a></li>
            <li><a href="booking.jsp">booking</a></li>
            <li><a href="check booking.jsp">check booking</a></li>
            <li><a href="q&a.jsp">q&a</a></li>
        </ul>
    </header>-->
    <section>
        <div id="firstarticle" style="width:100%">
            <h2>�����ϱ�</h2>
            <img src="images/booking2_picture.gif" style="margin-bottom:30px">
        </div>
        <div id="secondarticle">
            <form action="../../../User_Reservation2" method="post" name="info" id="info">
                <table cellspacing="0">
                    <colgroup>
                        <col width="20%">
                        <col width="80%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>room</th>
                            <td id="th"><%=a %></td>
                        </tr>
                        <tr>
                            <th>�����Ͻ�(date)</th>
                            <td>�Խ�&emsp;<%=c %>&emsp;&emsp;��� &emsp;<%=d %></td>
                        </tr>
                        <tr>
                            <th>�ð�</th>
                            <td><%=b %></td>
                        </tr>
                        <tr>
                            <th>�ο�</th>
                            <td>
                               <select name="guestnumber" class="selecttype" id="price">
                                    <option id="opt0" value="">�ο��� �������ּ���.</option>
                                    <option id="opt1" value="1">1</option>
                                    <option id="opt2" value="2">2</option>
                                    <option id="opt3" value="3">3</option>
                                    <option id="opt4" value="4">4</option>
                                    <option id="opt5" value="5">5</option>
                                    <option id="opt6" value="6">6</option>
                                    <option id="opt7" value="7">7</option>
                                    <option id="opt8" value="8">8</option>
                                    <option id="opt9" value="9">9</option>
                                    <option id="opt10" value="10">10</option>
                                    
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>�����ڸ�</th>
                            <td><%=e %>
                                <!--  <input type="text" id="user_name" class="inputtype" autocomplete="off" value="<%=d %>">-->
                            </td>
                        </tr>
                        <tr>
                            <th>����ó</th>
                            <td><%=f %>
                               
                               
                               <!-- <select name="guestphonenumber1" class="selecttype">
                                    <option value="010">010</option>
                                    <option value="011">011</option>
                                    <option value="016">016</option>
                                    <option value="017">017</option>
                                    <option value="018">018</option>
                                    <option value="019">019</option>
                                </select>
                                <input type="text" name="guestphonenumber2" autocomplete="off" maxlength="4" class="inputtype" id="user_p1" value="">
                                <input type="text" name="guestphonenumber3" autocomplete="off" maxlength="4" class="inputtype" id="user_p2" value="">-->
                            </td>
                        </tr>
                        <tr>
                            <th>�̸���</th>
                            <td><%=h %>
                               <!--   <label>
                                    <input type="email" class="inputtype" autocomplete="off" id="user_prevemail" value="">
                                    @
                                    <select name="emailselect" class="selecttype" id="user_nextemail">
                                        <option value="selectingemail">�ּҸ� ����ּ���.</option>
                                        <option value="naver.com">naver.com</option>
                                        <option value="nate.com">nate.com</option>
                                        <option value="gmail.com">gmail.com</option>
                                        <option value="hanmail.net">hanmail.net</option>
                                        <option value="hotmail.com">hotmail.com</option>
                                    </select>
                                </label>-->
                            </td>
                        </tr>
                        <tr>
                            <th>�����</th>
                            <td>10,000��</td>
                        </tr>
                        
                        <tr>
                            <th>�������</th>
                            <td>
                                
                                <label><input type="radio" name="payment" value="creditcard" id="creditcard">�ſ�ī��</label>
                                <label><input type="radio" name="payment" value="accounttransfer" id="accounttransfer">������ü</label>
                                <label><input type="radio" name="payment" value="virtualaccount" id="virtualaccount">�������</label>
                                <label><input type="radio" name="payment" value="noaccountdeposit" id="noaccountdeposit">�������Ա�</label>
                            </td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="2">
                                <ul id="warningtype">
                                    <li>����ݸ� ������ �Ͻ� ��쿡��, ���忡�� �������Ͻ� ������� ������ ���׸� �߰� �����Ͻø� �˴ϴ�.</li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td style="border:none" colspan="2">
                                <textarea rows="12" class="areatype" readonly>
�������� ����, �̿� �� ���� � ���� ��������
�̿��� ������ �Ʒ��� ���������� ������� Ȯ���ϸ�, �Ʒ��� ���� ���������� ���� �� �̿��ϴ� �Ϳ� �����մϴ�.

[���������� ���� �� �̿����]
- ��ȸ�� ���༭�� ����
- ���� ������ Ȯ�� �� �����ϰ�, �ʿ� �� ���� ���� ���� Ȯ���� ���� �����ڿ��� ������ ���� ���� ��

[�����ϴ� ���������� �׸�]
- �ʼ��Է»��� : �̿����� �ĺ��� ���� ����
- �Է����� : �̸�, �޴�����ȣ, �̸��� �ּ�

[���������� ���� �� �̿�Ⱓ]
���������� �������� �Ǵ� ���� ���� ������ �޼��Ǹ� ��� �ı��մϴ�. �ٸ�, ��� �� ���� ������ ������ ���Ͽ� �ŷ����� ���� �ǹ� ������ Ȯ�� ���� ������ ��ݰ�������ȭ�� �ǰ��޿����ѱ�Ͽ� �ǰ� 5�Ⱓ �����մϴ�.
* ���� ���� ������ �������� ���� �Ǹ��� ������ ���� ���� ������ �������� ���� ��� ��ȸ�� ���񽺴� �������� �ʽ��ϴ�.

[�����/������ ��ȣ��å]
- ������ ���� �� ��Ʈ��ũ ���� ���Ƚý����� ���߰� �ֽ��ϴ�. ��ȭ�� �� ��ŷ �� �ܺ�ħ�Կ� ����Ͽ� �� �������� ħ�����ܽý��� �� ����� �м��ý��� ���� ���߾� ���̿��ڡ��� ������ ����������ȣ�� ������ ���ϰ� �ֽ��ϴ�. ���� ���� ������� �ּ�ȭ�� ���� �� ������ �������� ���ٱ����� �޸��ϰ�, ���ú��ȱ����� ���� �� ��ħ�� �ؼ��� �����ϰ� �ֽ��ϴ�.
- ������ ���̿��ڡ� ������ �Ǽ��� �⺻���� ���ͳ��� ���輺 ������ �Ͼ�� �ϵ鿡 ���� å���� ���� �ʽ��ϴ�.
- �� �� ���� �������� �Ǽ��� ������� ���� ���� ���� ���������� ���, ����, ����, �Ѽ��� ���ߵ� ��� ��ť�̽��������� �ﰢ���̿��ڡ����� ����� �˸��� ������ ��å�� ������ ������ ���Դϴ�.
                                </textarea>
                            </td>
                        </tr>
                        <tr>
                            <td class="finaletype" colspan="2">
                                <label><input type="checkbox" name="agreeing" id="agreeing">��������ó����ħ�� �����մϴ�.</label>
                            </td>
                        </tr>
                       <!-- <tr>
                            <td class="finaletype" colspan="2">
                                <input type="text" id="datetext" name="date" value="��¥">
                                <input type="text" id="thematext" name="thema" value="�׸�">
                                <input type="text" id="timetext" name="time" value="�ð�">
                                <input type="text" id="persontext" name="person" value="�ο�">
                                <input type="text" id="pricetext" name="price" value="����">
                                <input type="text" id="deposittext" name="deposit" value="����">
                                <input type="text" id="nametext" name="name" value="�̸�">
                                <input type="text" id="depositdatetext" name="depositdate" value="�Աݳ�¥">-->
                            
                               
                            </td>
                        </tr>
                    </tfoot>
                </table>    
                
            
        </div>
        <input type="button" onclick="firstbooking();" class="buttontype" value="ó������" href="booking.jsp">
        <input type="button" onclick="prevbookingpage();" class="buttontype" value="��������" href="booking.jsp">
        <input type="submit"  class="buttontype" value = "��������">
 </form>
        <!--<input type="submit" class="buttontype" value="��������" href="booking3.jsp">-->
    </section>
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