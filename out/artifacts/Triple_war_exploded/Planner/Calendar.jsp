<%--
  Created by IntelliJ IDEA.
  User: yjw8459
  Date: 2020/07/14
  Time: 12:26 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>testCalendar</title>
    <script
            src="https://code.jquery.com/jquery-3.5.1.min.js"
            integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
            crossorigin="anonymous">
    </script>
    <style>
        table
        {
            border:1px solid #BDBDBD;
            text-align:center;

        }
        .day{
            cursor: pointer;
            width: 100px;
            height: 100px;
            font-size: 30px;
            font-style: italic;
            font-weight: bold;

        }
    </style>

    <script language="javascript">
        var today = new Date(); // 오늘 날짜
        var date = new Date();

        function beforem() //이전 달을 today에 값을 저장
        {
            today = new Date(today.getFullYear(), today.getMonth() - 1, today.getDate());
            build(); //만들기
        }

        function nextm()  //다음 달을 today에 저장
        {
            today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
            build();
        }

        function build()
        {
            var nMonth = new Date(today.getFullYear(), today.getMonth(), 1); //현재달의 첫째 날
            var lastDate = new Date(today.getFullYear(), today.getMonth() + 1, 0); //현재 달의 마지막 날
            var tbcal = document.getElementById("calendar"); // 테이블 달력을 만들 테이블
            var yearmonth = document.getElementById("yearmonth"); //  년도와 월 출력할곳
            yearmonth.innerHTML = today.getFullYear() + "년 "+ (today.getMonth() + 1) + "월"; //년도와 월 출력

            if(today.getMonth()+1==12) //  눌렀을 때 월이 넘어가는 곳
            {
                before.innerHTML=(today.getMonth())+"월";
                next.innerHTML="1월";
            }
            else if(today.getMonth()+1==1) //  1월 일 때
            {
                before.innerHTML="12월";
                next.innerHTML=(today.getMonth()+2)+"월";
            }
            else //   12월 일 때
            {
                before.innerHTML=(today.getMonth())+"월";
                next.innerHTML=(today.getMonth()+2)+"월";
            }


            // 남은 테이블 줄 삭제
            while (tbcal.rows.length > 2)
            {
                tbcal.deleteRow(tbcal.rows.length - 1);
            }
            var row = null;
            row = tbcal.insertRow();
            var cnt = 0;

            // 1일 시작칸 찾기
            for (i = 0; i < nMonth.getDay(); i++)
            {
                cell = row.insertCell();
                cnt = cnt + 1;
            }

            // 달력 출력
            for (i = 1; i <= lastDate.getDate(); i++) // 1일부터 마지막 일까지
            {
                cell = row.insertCell();
                cell.innerHTML = i;
                cnt = cnt + 1;
                if (cnt % 7 == 1) {//일요일 계산
                    cell.innerHTML = "<font color=#FF9090>" + i//일요일에 색
                }
                if (cnt % 7 == 0) { // 1주일이 7일 이므로 토요일 계산
                    cell.innerHTML = "<font color=#7ED5E4>" + i//토요일에 색
                    row = calendar.insertRow();// 줄 추가
                }
                if(today.getFullYear()==date.getFullYear()&&today.getMonth()==date.getMonth()&&i==date.getDate())
                {
                    cell.bgColor = "#BCF1B1"; //오늘날짜배경색
                }
                cell.id=(today.getMonth()+1)+'_'+i;
                cell.className ="day";

            }

        }

    </script>
    <script>
        $(function () {
            $('.day').each(function (index) {
                $(this).click(function (index) {
                    $(this).toggleClass('btn-success');
                })
            })

        })

    </script>

</head>

<body onload="build();">
<table align="center" id="calendar">
    <tr>
        <td><font size=1%; color="#B3B6B3"><label onclick="beforem()" id="before" ></label></font></td>
        <td colspan="5" align="center" id="yearmonth"></td>
        <td><font size=1%; color="#B3B6B3"><label onclick="nextm()" id="next"></label></font></td>
    </tr>
    <tr>
        <td align="center"> <font color="#FF9090">일</font></td>
        <td align="center"> 월 </td>
        <td align="center"> 화 </td>
        <td align="center"> 수 </td>
        <td align="center"> 목 </td>
        <td align="center"> 금 </td>
        <td align="center"><font color=#7ED5E4>토</font></td>
    </tr>
</table>

</body>

</html>
