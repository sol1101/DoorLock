<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>��������Ʈ</title>
    <link rel="stylesheet" href="css/check booking.css">
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/check booking.js">
    </script>
</head>
<body>
    <header>
        <a href="main_display.jsp"><img id="logotype" src="images/main_logo.JPG" alt="���ηΰ�"></a>
        <ul>
            <li><a href="reason.jsp">reason</a></li>
            <li><a href="notice.jsp">notice</a></li>
            <li><a href="rooms.jsp">rooms</a></li>
            <li><a href="booking.jsp">booking</a></li>
            <li><a href="check booking.jsp">check booking</a></li>
            <li><a href="q&a.php">q&a</a></li>
        </ul>
    </header>
    <section>
        <div id="sectionpart">
            <h2>����Ȯ�� <span id="smalltext">(check booking)</span></h2>
            <form action="checkbooking.php" method="post" id="checkform">
                <table cellspacing="0">
                    <colgroup>
                        <col width="20%">
                        <col width="80%">
                    </colgroup>
                    <tbody>
                        <tr>
                            <th>�����ڸ�</th>
                            <td><input type="text" name="guestname" id="user_name" class="inputtype" autocomplete="off" value="" autofocus></td>
                        </tr>
                        <tr>
                            <th>����ó</th>
                            <td>
                                <select name="guestphonenumber1" class="selecttype1">
                                    <option value="010">010</option>
                                    <option value="011">011</option>
                                    <option value="016">016</option>
                                    <option value="017">017</option>
                                    <option value="018">018</option>
                                    <option value="019">019</option>
                                </select>
                                <input type="text" name="guestphonenumber2" autocomplete="off" maxlength="4" id="user_p1" class="inputtype" value="">
                                <input type="text" name="guestphonenumber3" autocomplete="off" maxlength="4" id="user_p2" class="inputtype" value="">
                            </td>
                        </tr>
                        <tr>
                            <th>�����ȣ</th>
                            <td><input type="text" name="guestnumber" autocomplete="off" maxlength="8" id="user_booknum" class="inputtype" value=""><span style="font-size:small; font-family:none"> (�����ȣ�� �ڵ��� ��ȣ ��8�ڸ�)</span></td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <td class="tablebottom"></td>
                        <td class="tablebottom">
                            <input type="hidden" name="namedata" id="guestname" value="">
                            <input type="hidden" name="bookdata" id="bookingnumber" value="">
                            <input type="submit" value="����Ȯ��" class="buttontype">
                            <input type="button" onclick="reloading();" value="���" class="buttontype">
                        </td>
                    </tfoot>
                </table>
            </form>
        </div>
    </section>
    <footer>
        <ul>
            <li>�ּ� : ������</li>
            <li>��ǥ : �ݴް�</li>
            <li>��ȭ��ȣ : 000-0000-0000</li>
            <li>�̸��� : goodnight@naver.com</li>
            
        </ul>
    </footer>
</body>
</html>