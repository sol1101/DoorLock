<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>��������</title>
    <link rel="stylesheet" href="css/css.css">
</head>
<body>
    <div class="board_wrap">
        <div class="board_title">
            <strong>��������</strong>
            <p>���������� ������ ��Ȯ�ϰ� �ȳ��ص帳�ϴ�.</p>
        </div>
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title">
                    <dl>
                        <dt>����</dt>
                        <dd><input type="text" placeholder="���� �Է�" value="�� ������ ���ϴ�"></dd>
                    </dl>
                </div>
                <div class="info">
                    <dl>
                        <dt>�۾���</dt>
                        <dd><input type="text" placeholder="�۾��� �Է�" value="���̸�"></dd>
                    </dl>
                    <dl>
                        <dt>��й�ȣ</dt>
                        <dd><input type="password" placeholder="��й�ȣ �Է�" value="1234"></dd>
                    </dl>
                </div>
                <div class="cont">
                    <textarea placeholder="���� �Է�">
�� ������ ���ϴ�.
�� ������ ���ϴ�.
�� ������ ���ϴ�.
�� ������ ���ϴ�.
�� ������ ���ϴ�.
�� ������ ���ϴ�.
�� ������ ���ϴ�.
�� ������ ���ϴ�.</textarea>
                </div>
            </div>
            <div class="bt_wrap">
                <a href="view.jsp" class="on">����</a>
                <a href="view.jsp">���</a>
            </div>
        </div>
    </div>
</body>
</html>