<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>��������Ʈ</title>
    <link rel="stylesheet" href="css/writing.css">
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/writing.js"></script>
</head>
<body>
    <div id="container">
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
        <h1>q&a</h1>
        <form action="writing.php" method="post" id="writeform">
            <table cellspacing="0">
                <tr>
                    <th>����</th>
                    <td><input type="text" name="title" autocomplete="off" class="texttype" id="title" autofocus></td>
                </tr>
                <tr>
                    <th>�ۼ���</th>
                    <td><input type="text" name="name" autocomplete="off" class="texttype" id="name"></td>
                </tr>
                <tr>
                    <th>��й�ȣ</th>
                    <td><input type="password" name="pw" autocomplete="off" class="pwtype" id="pw"></td>
                </tr>
                <tr>
                    <th>�׸�</th>
                    <td>
                        <select name="thema" class="selecttype" id="themas">
                            <option value="0">�׸��� �������ּ���.</option>
                            <option value="��ũ����Ʈ">��ũ����Ʈ</option>
                            <option value="������1">������ 1</option>
                            <option value="���">���</option>
                            <option value="Ʈ���̾ޱ�">Ʈ���̾ޱ�</option>
                            <option value="28����">28����</option>
                            <option value="�ȷ�Ȩ��">�ȷ�Ȩ��</option>
                            <option value="����ο�">����ο�</option>
                            <option value="������2">������ 2</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <textarea rows="10" cols="80" id="areatype" name="textarea"></textarea>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center;">
                        <input type="submit" value="����ϱ�" class="buttontype">
                        <input type="button" value="�������" onclick="backpage();" class="buttontype">
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
    </div>
</body>
</html>