<%@page import="com.VO.ReservationVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.controller.ReservationDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
 <style>
        /* GOOGLE FONTS */
@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap");

/* VARIABLES CSS */
:root {
    --nav--width: 92px;

    /* Colores */
    --first-color: #0c5df4;
    --bg-color: #12192c;
    --sub-color: #b6cefc;
    --white-color: #fff;

    /* Fuente y tipografia */
    --body-font: 'Poppins', sans-serif;
    --normal-font-size: 1rem;
    --small-font-size: .875rem;

    /* z index */
    --z-fixed: 100;
}

/* BASE */
*, ::before, ::after {
    box-sizing: border-box;
}

body {
    position: relative;
    margin: 0;

    padding: 2rem 0 0 6.75rem;
    font-family: var(--body-font);
    font-size: var(--normal-font-size);
    transition: .5s;
}

h1 {
    margin: 0;
}

ul {
    margin: 0;
    padding: 0;
    list-style: none;
}

a {
    text-decoration: none;
}

/* l NAV */
.l-navbar {
    position: fixed;
    top: 0;
    left: 0;
    width: var(--nav--width);
    height: 100vh;
    background-color: rgba(255, 166, 0, 0.823);
    color: var(--white-color);
    padding: 1.5rem 1.5rem 2rem;
    transition: .5s;
    z-index: var(--z-fixed);
}

/* NAV */
.nav {
    height: 100%;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    overflow: hidden;
}

.nav__brand {
    display: grid;
    grid-template-columns: max-content max-content;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 2rem;
}

.nav__toggle {
    font-size: 1.25rem;
    padding: .75rem;
    cursor: pointer;
}

.nav__logo {
    color: var(--white-color);
    font-weight: 600;
}

.nav__link {
    display: grid;
    grid-template-columns: max-content max-content;
    align-items: center;
    column-gap: .75rem;
    padding: .75rem;
    color: var(--white-color);
    border-radius: .5rem;
    margin-bottom: 1rem;
    transition: .3s;
    cursor: pointer;
}

.nav__link:hover {
    background-color: var(--first-color);
}

.nav__icon {
    font-size: 1.25rem;
}

.nav_name {
    font-size: var(--small-font-size);
}

/* Expander menu */
.expander {
    width: calc(var(--nav--width) + 9.25rem);
}

/* Add padding body*/
.body-pd {
    padding: 2rem 0 0 16rem;
}

/* Active links menu */
.active {
    background-color: var(--first-color);
}

/* COLLAPSE */
.collapse {
    grid-template-columns: 20px max-content 1fr;
}

.collapse__link {
    justify-self: flex-end;
    transition: .5;
}

.collapse__menu {
    display: none;
    padding: .75rem 2.25rem;
}

.collapse__sublink {
    color: var(--sub-color);
    font-size: var(--small-font-size);
}

.collapse__sublink:hover {
    color: var(--white-color);
}

/* Show collapse */
.showCollapse {
    display: block;
}

/* Rotate icon */
.rotate {
    transform: rotate(180deg);
    transition: .5s;
}

#body-pd{
    width: 100%;
    height: 100%;
    margin-top: -32px;
    margin-left: -16px;
    background-image:url(image/shdmf.jpg);
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
}
.icon_img{
    text-align: center;
  }
        table, th, td {
            border: 1px solid black;
            border-collapse:collapse;
        }
        th{
            background-color: rgba(255, 178, 35, 0.836);
            color: white;
        }
        th, td {padding: 15px;}
        td{background-color: rgba(255, 255, 255, 0.823);}
        caption >h2{color: rgb(255, 255, 255); font-size: 35px;} 
 body{
 	background-image:url(image/shdmf.jpg);
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
 }       
        </style>
<body>
<%
		ReservationDAO dao= new ReservationDAO();
		ArrayList<ReservationVO> al = new ArrayList<ReservationVO>();
		al = dao.Reservation_info("A1");
		System.out.print(al.size());
%>
	 <div class="l-navbar" id="navbar">
        <nav class="nav">
            <div>
                <div class="nav__brand">
                    <ion-icon name="menu-outline" class="nav__toggle" id="nav-toggle"></ion-icon>
                    <a href="#" class="nav__logo">관리자 모드</a>
                </div>
                <div class="nav__list">
                    <a href="#" class="nav__link active">
                        <ion-icon name="home-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">등록 관리</span>
                    </a>


                    <div href="#" class="nav__link collapse">
                        <ion-icon name="people-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">현황</span>

                        <ion-icon name="chevron-down-outline" class="collapse__link"></ion-icon>

                        <ul class="collapse__menu">
                            <a href="#" class="collapse__sublink">Data</a>
                            <a href="#" class="collapse__sublink">Group</a>
                            <a href="#" class="collapse__sublink">Members</a>
                        </ul>
                    </div>

                    <a href="#" class="nav__link">
                        <ion-icon name="settings-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name">설정</span>
                    </a>
                </div>
                <a href="#" class="nav__link">
                    <ion-icon name="log-out-outline" class="nav__icon"></ion-icon>
                    <span class="nav_name">로그아웃</span>
                </a>
            </div>
        </nav>
    </div>

    <div class="tablebg">
    <table align="center" width = 80%; class = "tablein">
        <div class="icon_img">
            <img src="image/cheak.png" width="100px" height="100px">
        </div>
        <caption><h2>저기 어때?  숙소 등록 관리</h2>
        </caption>
        <thead>
            <tr>
                <th>예약번호</th>
                <th>방 번호</th>
                <th>예약자 명</th>
                <th>연락처</th>
                <th>체크인 날짜</th>
                <th>체크아웃 날짜</th>
                <th>예약 상태</th>
                <th>성별/인원</th>
                <th>체크인여부</th>
            </tr>
        </thead>
        <tbody align="center">
        <% for(ReservationVO vo:al){ %>
            <tr>
                <td><%=vo.getReservation_num()%></td>
                <td><%=vo.getRoom_num()%></td>
                <td><%=vo.getCustomer_name()%></td>
                <td><%=vo.getCustomer_phone()%></td>
                <td><%=vo.getCheckin_date()%> 15:00</td>
                <td><%=vo.getCheckout_date()%> 14:00</td>
                <td><% if(vo.getStatus().equals("1")){
                	%> 확약 <%
                }else{%>
                	결제 확인 중
                <%}%>
                </td>
                <td><% if(vo.getCustomer_sex()){%>
                	남/
                <% }else{%>
					여 /
                <%} %> <%=vo.getNum_of_people()%>
                </td>
                <td><%if(vo.getIs_checkin()){%>
                		Y
                <%}else{%>
                		N
                <%} %>
                </td>
            </tr>
            <%} %>
        </tbody>
    </table>
    </div>
</div>
    <!-- IONICONS -->
    <script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
    <!-- JS -->
    <script src="assets/js/main.js"></script>
</body>
</body>
</html>