<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>��������Ʈ</title>
    <link rel="stylesheet" type="text/css" href="css/q&a.css">
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
            <li><a href="q&a.jsp">q&a</a></li>
        </ul>
    </header>
    <section>
        <h1>q&a</h1>
        <form action="" method="post">
            <table cellspacing="0">
                <colgroup>
                    <col width="10%">
                    <col width="50%">
                    <col width="15%">
                    <col width="10%">
                    <col width="15%">
                </colgroup>
                <tr id="firstrow">
                    <td colspan="5">
                        <select name="category" class="selecttype">
                            <option value="title">����</option>
                            <option value="writer">�ۼ���</option>
                            <option value="theme">���׸�</option>
                        </select>
                        <input type="text" name="search" class="inputtype" autofocus autocomplete="off">
                        <input type="submit" value="�˻�" class="buttontype1">
                    </td>
                </tr>
                <tr id="secondrow">
                    <th>��ȣ</th>
                    <th>����</th>
                    <th>�ۼ���</th>
                    <th>��¥</th>
                    <th>���׸�</th>
                </tr>
                <tr>
                    <td colspan="3"></td>
                    <td colspan="2">
                        <div id="writingtype"><a href="writing.jsp">�� �ø���</a></div>
                    </td>
                </tr>
            </table>
        </form>
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