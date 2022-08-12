<%--
  Created by IntelliJ IDEA.
  User: Eir Aoi
  Date: 2021/12/19
  Time: 15:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    .nav{
        font-size:20px;
        font-weight: bolder;
        display: inline-block;
        background-color: #f1f1f1;
        width: 80%;
        height:50px;
        position: absolute;
        top:30px;
        margin-top: 0px;
        margin-bottom: 0px;
        padding: 0px;
        list-style-type: none;
        text-decoration: none;
        left: 0;
        right: 0;
        margin: auto;
        border-radius: 5px;
    }

    .nav-item{
        font-size: 18px;
        float: left;
        text-align: center;
        background-color: #0743C2;
        min-width: 140px;
        padding: 5px;
        height:40px;
    }

    .nav-item-1{
        font-size: 18px;
        float: left;
        text-align: center;
        background-color: #0743C2;
        min-width: 200px;
        padding: 5px;
        height:40px;
    }

    .nav-item a:link,
    .nav-item a:visited{
        text-decoration: none;
        color: white;
        display: block;
        padding: 10px;
    }

    .nav-item-1:hover{
        background-color: orange;
    }

    .select:link,
    .select:visited{
        text-decoration: none;
        color: white;
        display: block;
        padding: 10px;
    }

    .nav-item:hover{
        background-color: orange;
    }

    .nav-child{
        display: none;
        top:0px;
        margin:0px;
        padding: 0px;
        position: relative;
        background-color: white;
        color: #3f3f3f;
        font-size: 16px;
        width: 166px;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        z-index: 2;
    }

    .nav-child a{
        color: #3f3f3f;
        font-weight: 200;
        padding: 10px;
        text-decoration: none;
        border: hidden;
        text-align: left;
        display: block;
    }

    .nav-child a:hover{
        color: #3f3f3f;
        background-color: antiquewhite;
        text-decoration: none;
        display: block;
    }

    .nav-item-1:hover .nav-child{
        display: block;
    }

    .cap{
        position: relative;
        top: 10px;
        left: 20px;
        color: orange;
        font-size: 26px;
        font-weight: bolder;
    }

    .container{
        width: 50%;
        height: 400px;
        overflow: auto;
        overflow-x: hidden;
        background-color: #b6d2ff;
        border-radius: 10px;
        left: 0;
        right: 0;
        margin: auto;
        margin-bottom: 10px;
        margin-top: 102px;
        padding: 0px;
        opacity: 0.9;
        box-sizing: border-box;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    }

    .tag{
        display: flex;
    }

    .person{
        background-color: #3f3f3f;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        color: darkorange;
        border-radius: 10px;
        width: 44%;
        margin-top: 20px;
        margin-left: 17px;
    }

    .person li{
        text-decoration: none;
        padding: 10px;
        font-size: 16px;
        font-weight: bold;
    }

    .titleicon{
        position: relative;
        top: 2px;
        left: -11px;
    }

    .profile{
        position: relative;
        top: 20px;
        left: 68px;
        background-color: #f1f1f1;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        color: darkorange;
        border-radius: 10px;
        height: 285px;
    }

    .profile-icon{
        margin: 10px;
    }

    .profile-title{
        text-align: center;
        color: darkorange;
        font-size: 16px;
        font-weight: bolder;
    }

    .info-icon{
        position: relative;
        top: 3px;
        left: -18px;
    }
</style>

<head>
    <title>Student Information</title>
</head>
<body>
<ul class="nav">
    <li class="nav-item" style="border-top-left-radius: 5px; border-bottom-left-radius: 5px;"><a href="${pageContext.request.contextPath}/account/findAllCourse"><span><img class="titleicon" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBzdGFuZGFsb25lPSJubyI/PjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+PHN2ZyB0PSIxNjQwMjQyMjUwMjI2IiBjbGFzcz0iaWNvbiIgdmlld0JveD0iMCAwIDEwMjQgMTAyNCIgdmVyc2lvbj0iMS4xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHAtaWQ9IjI4NDMiIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMjAwIiBoZWlnaHQ9IjIwMCI+PGRlZnM+PHN0eWxlIHR5cGU9InRleHQvY3NzIj48L3N0eWxlPjwvZGVmcz48cGF0aCBkPSJNOTQ5LjQ4NCA0OTUuMzI4TDgyMy4wMTggMzgyLjU1MVYyMTQuMTg0YzAtOC4wNzMtMTAuOTc1LTE0LjU0NC0yNC41MzItMTQuNTQ0aC00OS4wOTdjLTEzLjU5IDAtMjQuNTY0IDYuNDcyLTI0LjU2NCAxNC41NDR2ODAuNzU0bC03Mi41NzUtNjQuNzYzLTgxLjc2OC03Mi45NTJjLTUuMDg3LTUuMzMtMTAuMjgzLTkuOTc2LTE1LjU5LTEzLjkzNS02LjEwNC00LjU2OS0xMi4zOTItOC4xNDctMTguNzg3LTEwLjczNy03Ljg4Ny0zLjE5OC0xNS45NTUtNC45NS0yNC4xNjctNC45NS04LjIxNCAwLTE2LjI0NSAxLjc1MS0yNC4xMyA0Ljk1LTYuMzk2IDIuNTktMTIuNjg0IDYuMTY4LTE4LjgyNiAxMC43MzctNS4zMDUgMy45NTktMTAuNTAzIDguNjA1LTE1LjU1NCAxMy45MzVsLTgxLjc2OCA3Mi45NTItMTUzLjQ2OSAxMzYuOTE2TDc0LjM4OSA0OTUuMzI4Yy02LjgzMiA2LjE2Ni03LjY2OCAxNi45MDQtMS44MTcgMjQuMDYybDM5LjAzMSA0OC4wNWM1Ljg1MSA3LjE1NyAxNi4xMzUgOC4wNzMgMjIuOTMxIDEuOTA0bDgzLjY1Ny03NC42MjUgMTQ5LjA3MS0xMzMuMDMzIDE0NC42NzUtMTI5LjA3MyAxNDQuNjM3IDEyOS4wNzMgMTQ5LjEwNyAxMzMuMDMzIDgzLjY1NyA3NC42MjVjNi44MzIgNi4xNjkgMTcuMTE3IDUuMjUzIDIyLjkzMi0xLjkwNGwzOS4wMy00OC4wNWM1Ljg1My03LjE1OCA1LjAxNi0xNy44OTYtMS44MTYtMjQuMDYyeiIgZmlsbD0iI2ZmZmZmZiIgcC1pZD0iMjg0NCI+PC9wYXRoPjxwYXRoIGQ9Ik01MTMuNzg5IDI4MC44MTVMMzY5LjExNiA0MDkuODg4IDIyMC4wNDUgNTQyLjkxOVY4NTguOTRjMCA4LjUyOSA0LjA3IDE1LjQ1OCA5LjE1NyAxNS40NThoMjIzLjUzNVY2NjMuNTRoMTIyLjEwNXYyMTAuODU3aDIyMy41MzRjNS4wNTMgMCA5LjE1OC02LjkyOSA5LjE1OC0xNS40NTh2LTMxNi4wMmwtMTQ5LjA3LTEzMy4wMzEtMTQ0LjY3NS0xMjkuMDczeiIgZmlsbD0iI2ZmZmZmZiIgcC1pZD0iMjg0NSI+PC9wYXRoPjwvc3ZnPg==" width=20px height= 20px alt=""> Home</span></a></li>
    <li class="nav-item"><a href="${pageContext.request.contextPath}/account/studentInfo"><span><img class="titleicon" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBzdGFuZGFsb25lPSJubyI/PjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+PHN2ZyB0PSIxNjQwMjQyMzU0MDMxIiBjbGFzcz0iaWNvbiIgdmlld0JveD0iMCAwIDEwMjQgMTAyNCIgdmVyc2lvbj0iMS4xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHAtaWQ9IjE5MTYiIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMjAwIiBoZWlnaHQ9IjIwMCI+PGRlZnM+PHN0eWxlIHR5cGU9InRleHQvY3NzIj48L3N0eWxlPjwvZGVmcz48cGF0aCBkPSJNNjQwLjc2NjcxMiAzNjIuNDk0OTY0YzAtNzEuMzg2ODY0LTU4LjA3ODc2Ny0xMjkuNDY0NjA3LTEyOS40NjQ2MDctMTI5LjQ2NDYwNy03MS4zODY4NjQgMC0xMjkuNDY0NjA3IDU4LjA3Nzc0My0xMjkuNDY0NjA3IDEyOS40NjQ2MDdzNTguMDc3NzQzIDEyOS40NjQ2MDcgMTI5LjQ2NDYwNyAxMjkuNDY0NjA3QzU4Mi42ODc5NDYgNDkxLjk1OTU3MSA2NDAuNzY2NzEyIDQzMy44ODE4MjggNjQwLjc2NjcxMiAzNjIuNDk0OTY0eiIgcC1pZD0iMTkxNyIgZmlsbD0iI2ZmZmZmZiI+PC9wYXRoPjxwYXRoIGQ9Ik04MjkuNjUxNjQgMTk1LjY3NjYxMUM3NDQuOTk4NjM1IDExMS4wMjM2MDYgNjMyLjQ0NTE4NiA2NC40MDI3OTkgNTEyLjcyNzU3MSA2NC40MDI3OTljLTExOS43MTg2MzkgMC0yMzIuMjcyMDg4IDQ2LjYyMTgzLTMxNi45MjUwOTMgMTMxLjI3NDgzNkMxMTEuMTQ4NDQ5IDI4MC4zMzA2NCA2NC41Mjc2NDIgMzkyLjg4NDA4OSA2NC41Mjc2NDIgNTEyLjYwMjcyN2MwIDExOS43MTc2MTUgNDYuNjIxODMgMjMyLjI3MjA4OCAxMzEuMjc0ODM2IDMxNi45MjUwOTMgODQuNjU0MDI5IDg0LjY1NTA1MiAxOTcuMjA3NDc3IDEzMS4yNzU4NTkgMzE2LjkyNTA5MyAxMzEuMjc1ODU5IDExOS43MTc2MTUgMCAyMzIuMjcyMDg4LTQ2LjYyMDgwNyAzMTYuOTI1MDkzLTEzMS4yNzU4NTkgODQuNjU1MDUyLTg0LjY1MzAwNSAxMzEuMjc1ODU5LTE5Ny4yMDc0NzcgMTMxLjI3NTg1OS0zMTYuOTI1MDkzQzk2MC45Mjc0OTkgMzkyLjg4NDA4OSA5MTQuMzA2NjkyIDI4MC4zMzA2NCA4MjkuNjUxNjQgMTk1LjY3NjYxMXpNNzMyLjk3NTgxIDc2NC4wMDM0NzhjLTExLjA0OTY2IDAtMjAuMDA4NzA2LTguOTU5MDQ2LTIwLjAwODcwNi0yMC4wMDg3MDYgMC0xMTEuMTk5NjE1LTkwLjQ2NjQwOC0yMDEuNjY2MDIyLTIwMS42NjQ5OTktMjAxLjY2NjAyMlMzMDkuNjM3MTA2IDYzMi43OTUxNTcgMzA5LjYzNzEwNiA3NDMuOTk0NzcyYzAgMTEuMDQ5NjYtOC45NTgwMjIgMjAuMDA4NzA2LTIwLjAwODcwNiAyMC4wMDg3MDYtMTEuMDUwNjg0IDAtMjAuMDA4NzA2LTguOTU5MDQ2LTIwLjAwODcwNi0yMC4wMDg3MDYgMC0xMDcuMDExMjIyIDY5LjkxNjM3My0xOTcuOTg2MjEzIDE2Ni40NjIyNDMtMjI5LjY4NDE0Ni01NS44MDcwMjctMjcuNzYzMzItOTQuMjYyODc0LTg1LjM2OTMyLTk0LjI2Mjg3NC0xNTEuODE2Njg0IDAtOTMuNDUyNDE1IDc2LjAyOTYwNC0xNjkuNDgzMDQyIDE2OS40ODMwNDItMTY5LjQ4MzA0MiA5My40NTI0MTUgMCAxNjkuNDgzMDQyIDc2LjAyOTYwNCAxNjkuNDgzMDQyIDE2OS40ODMwNDIgMCA2Ni40NDYzNDEtMzguNDU1ODQ3IDEyNC4wNTIzNDEtOTQuMjYyODc0IDE1MS44MTY2ODQgOTYuNTQ1ODcgMzEuNjk3OTMzIDE2Ni40NjIyNDMgMTIyLjY3MTkgMTY2LjQ2MjI0MyAyMjkuNjg0MTQ2Qzc1Mi45ODQ1MTYgNzU1LjA0NDQzMiA3NDQuMDI1NDcxIDc2NC4wMDM0NzggNzMyLjk3NTgxIDc2NC4wMDM0Nzh6IiBwLWlkPSIxOTE4IiBmaWxsPSIjZmZmZmZmIj48L3BhdGg+PC9zdmc+" width=20px height= 20px alt="">Personal</span></a></li>
    <li class="nav-item-1">
        <a class="select" href="#"><span><img class="titleicon" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBzdGFuZGFsb25lPSJubyI/PjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+PHN2ZyB0PSIxNjQwMjQyNDYzNTQ0IiBjbGFzcz0iaWNvbiIgdmlld0JveD0iMCAwIDEwMjQgMTAyNCIgdmVyc2lvbj0iMS4xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHAtaWQ9IjI4ODkiIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMjAwIiBoZWlnaHQ9IjIwMCI+PGRlZnM+PHN0eWxlIHR5cGU9InRleHQvY3NzIj48L3N0eWxlPjwvZGVmcz48cGF0aCBkPSJNODAzLjk5OTY0NCAwSDIyMC4wMDAzNTZBMTA5LjQ2OTkzMyAxMDkuNDY5OTMzIDAgMCAwIDExMC41MzA0MjMgMTA5LjQ2OTkzM3Y4MDUuMDYwMTM0YTEwOS40Njk5MzMgMTA5LjQ2OTkzMyAwIDAgMCAxMDkuNDY5OTMzIDEwOS40Njk5MzNoNTgzLjk5OTI4OGExMDkuNDY5OTMzIDEwOS40Njk5MzMgMCAwIDAgMTA5LjQ2OTkzMy0xMDkuNDY5OTMzVjEwOS40Njk5MzNhMTA5LjQ2OTkzMyAxMDkuNDY5OTMzIDAgMCAwLTEwOS40Njk5MzMtMTA5LjQ2OTkzM3pNMjkyLjg4OTA4NyA1ODYuMTIwMjY3aDE0Ni42ODk3MWEzNi4yNTA1MTIgMzYuMjUwNTEyIDAgMSAxIDAgNzIuNDg5NjIySDI5Mi44ODkwODdhMzYuMjUwNTEyIDM2LjI1MDUxMiAwIDEgMSAwLTcyLjQ4OTYyMnpNNTg1LjM1NjI1OCA4MDQuNTY5OEgyOTIuODg5MDg3YTM2LjI1MDUxMiAzNi4yNTA1MTIgMCAwIDEgMC03Mi41MDEwMjVINTg1LjM1NjI1OGEzNi4yNTA1MTIgMzYuMjUwNTEyIDAgMSAxIDAgNzIuNTAxMDI1eiBtMTM2LjAyNzc5NS00ODQuNjMyNTE3bC02OC45NTQ2NTQtMjAuNTgyNjI4YTQ1LjYxMjQ3MiA0NS42MTI0NzIgMCAwIDAtMjYuMDkwMzM0IDBsLTY4Ljk1NDY1NSAyMC42MTY4MzdhNi44NDE4NzEgNi44NDE4NzEgMCAwIDEtOC43OTE4MDQtNi41NTY3OTNWNzIuOTc5OTU1SDczMC4xNzU4NTd2MjQwLjQzNDc0NGE2Ljg0MTg3MSA2Ljg0MTg3MSAwIDAgMS04Ljc5MTgwNCA2LjU1Njc5M3oiIGZpbGw9IiNmZmZmZmYiIHAtaWQ9IjI4OTAiPjwvcGF0aD48L3N2Zz4=" width=20px height= 20px alt="">Courses</span></a>
        <div class="nav-child">
            <div><a href="${pageContext.request.contextPath}/account/findAllCourse">All Courses</a></div>
            <div><a href="${pageContext.request.contextPath}/account/checkSelectedCourse">Selected Courses</a></div>
            <div><a href="${pageContext.request.contextPath}/account/checkFinishedCourse">Finished Courses</a></div>
        </div>
    </li>
    <li class="nav-item" style="float:right; text-align: right; border-top-right-radius: 5px; border-bottom-right-radius: 5px;"><a href="${pageContext.request.contextPath}/account/exit"><span><img class="titleicon" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBzdGFuZGFsb25lPSJubyI/PjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+PHN2ZyB0PSIxNjQwMjQyOTk5MDE2IiBjbGFzcz0iaWNvbiIgdmlld0JveD0iMCAwIDEwMjQgMTAyNCIgdmVyc2lvbj0iMS4xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHAtaWQ9IjM3NTMiIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMjAwIiBoZWlnaHQ9IjIwMCI+PGRlZnM+PHN0eWxlIHR5cGU9InRleHQvY3NzIj48L3N0eWxlPjwvZGVmcz48cGF0aCBkPSJNMCAxOTJ2NjQwYzAgNzAuNyA1Ny4zIDEyOCAxMjggMTI4aDM1MmMxNy43IDAgMzItMTQuMyAzMi0zMnMtMTQuMy0zMi0zMi0zMkgxMjhjLTM1LjMgMC02NC0yOC43LTY0LTY0VjE5MmMwLTM1LjMgMjguNy02NCA2NC02NGgzNTJjMTcuNyAwIDMyLTE0LjMgMzItMzJzLTE0LjMtMzItMzItMzJIMTI4QzU3LjMgNjQgMCAxMjEuMyAwIDE5MnoiIHAtaWQ9IjM3NTQiIGZpbGw9IiNmZmZmZmYiPjwvcGF0aD48cGF0aCBkPSJNMTAxMy4zIDUzNS43TDY1MC45IDg2My4zYy00MS4xIDM3LjItMTA2LjkgOC0xMDYuOS00Ny41VjY4NWMwLTQuNC0zLjYtOC04LThIMjI0Yy0xNy43IDAtMzItMTQuMy0zMi0zMlYzNzljMC0xNy43IDE0LjMtMzIgMzItMzJoMzEyYzQuNCAwIDgtMy42IDgtOFYyMDguMWMwLTU1LjUgNjUuOC04NC43IDEwNi45LTQ3LjVsMzYyLjQgMzI3LjZjMTQuMSAxMi44IDE0LjEgMzQuOCAwIDQ3LjV6IiBwLWlkPSIzNzU1IiBmaWxsPSIjZmZmZmZmIj48L3BhdGg+PC9zdmc+" width=20px height= 20px alt="">Exit</span></a></li>
</ul>
<div class="container">
    <div class="cap">Personal Information</div>
    <div class="tag">
        <ul class="person">
            <li><img class="info-icon" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBzdGFuZGFsb25lPSJubyI/PjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+PHN2ZyB0PSIxNjQwMjYzNjAzMzc0IiBjbGFzcz0iaWNvbiIgdmlld0JveD0iMCAwIDEwMjQgMTAyNCIgdmVyc2lvbj0iMS4xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHAtaWQ9IjE5NDQiIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMjAwIiBoZWlnaHQ9IjIwMCI+PGRlZnM+PHN0eWxlIHR5cGU9InRleHQvY3NzIj48L3N0eWxlPjwvZGVmcz48cGF0aCBkPSJNNTMzLjMzMzMzMyAxMjhhNDA1LjMzMzMzMyA0MDUuMzMzMzMzIDAgMSAwIDAgODEwLjY2NjY2NyA0MDUuMzMzMzMzIDQwNS4zMzMzMzMgMCAwIDAgMC04MTAuNjY2NjY3ek00MDIuMzg5MzMzIDY3Ni4xMzg2NjdIMzU5LjA0VjM0Ny44NjEzMzNoNDMuNDM0NjY3djMyOC4yNzczMzR6IG0zMzkuMjQyNjY3LTk5LjY2OTMzNGMtNS44MDI2NjcgMTkuMjg1MzMzLTEzLjMxMiAzNS4yLTIyLjQgNDcuNzg2NjY3YTExOC45NTQ2NjcgMTE4Ljk1NDY2NyAwIDAgMS0yOS44NjY2NjcgMjkuODI0Yy0xMC44MzczMzMgNy4yNTMzMzMtMjMuODkzMzMzIDEyLjcxNDY2Ny0zOS4yMTA2NjYgMTYuNDY5MzMzLTE1LjI3NDY2NyAzLjcxMi0zMi44NTMzMzMgNS41NDY2NjctNTIuNzM2IDUuNTQ2NjY3aC0xMTguNDQyNjY3VjM0Ny45MDRoMTEzLjA2NjY2N2MyNS41NTczMzMgMCA0NS4wMTMzMzMgMS41Nzg2NjcgNTguNDUzMzMzIDQuNjkzMzMzIDE4Ljc3MzMzMyA0LjM1MiAzNC44NTg2NjcgMTIuMjAyNjY3IDQ4LjEyOCAyMy41MDkzMzQgMTcuMzIyNjY3IDE0LjYzNDY2NyAzMC4yOTMzMzMgMzMuMzIyNjY3IDM4LjgyNjY2NyA1Ni4xMDY2NjYgOC42MTg2NjcgMjIuNzg0IDEyLjg4NTMzMyA0OC43NjggMTIuODg1MzMzIDc4LjAzNzMzNCAwIDI0LjkxNzMzMy0yLjkwMTMzMyA0Ny4wMTg2NjctOC43MDQgNjYuMjYxMzMzek02NDcuNTk0NjY3IDM5My4zODY2NjdjLTExLjY0OC00LjQ4LTMwLjM3ODY2Ny02Ljc0MTMzMy01Ni4xOTItNi43NDEzMzRoLTY4Ljk5MnYyNTAuNzk0NjY3aDcwLjEwMTMzM2MyMS42MzIgMCAzOC42MTMzMzMtMi4wMDUzMzMgNTAuOTQ0LTYuMDU4NjY3IDEyLjI4OC00LjAxMDY2NyAyMi4xMDEzMzMtOS42ODUzMzMgMjkuNDQtMTcuMDI0IDEwLjI4MjY2Ny0xMC4yODI2NjcgMTguMzQ2NjY3LTI0LjE0OTMzMyAyNC4wNjQtNDEuNTE0NjY2IDUuNzE3MzMzLTE3LjQwOCA4LjYxODY2Ny0zOC40ODUzMzMgOC42MTg2NjctNjMuMjc0NjY3IDAtMzQuMzA0LTUuNjMyLTYwLjcxNDY2Ny0xNi44OTYtNzkuMTQ2NjY3LTExLjI2NC0xOC40MzItMjQuOTYtMzAuNzYyNjY3LTQxLjA4OC0zNy4wMzQ2NjZ6IiBwLWlkPSIxOTQ1IiBmaWxsPSIjZmZmZmZmIj48L3BhdGg+PC9zdmc+" width=20px height= 20px alt="">Student id: ${studentInfo.student_id}</li>
            <li><img class="info-icon" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBzdGFuZGFsb25lPSJubyI/PjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+PHN2ZyB0PSIxNjQwMjYzNzEzNzg4IiBjbGFzcz0iaWNvbiIgdmlld0JveD0iMCAwIDEwMjQgMTAyNCIgdmVyc2lvbj0iMS4xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHAtaWQ9IjI4MjEiIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMjAwIiBoZWlnaHQ9IjIwMCI+PGRlZnM+PHN0eWxlIHR5cGU9InRleHQvY3NzIj48L3N0eWxlPjwvZGVmcz48cGF0aCBkPSJNMzA5LjQgMjQ0LjljMjIuNiAwIDQxIDE4LjMgNDEgNDF2MTcwLjhjMCAyMi42LTE4LjMgNDEtNDEgNDEtMjIuNiAwLTQxLTE4LjMtNDEtNDFWMjg1LjljMC4xLTIyLjYgMTguNC00MSA0MS00MXpNNzEzLjUgMjQwLjljMjIuNiAwIDQxIDE4LjMgNDEgNDF2MjMuNGMwIDIyLjYtMTguMyA0MS00MSA0MS0yMi42IDAtNDEtMTguMy00MS00MXYtMjMuNGMwLjEtMjIuNiAxOC40LTQxIDQxLTQxeiIgZmlsbD0iI2ZmZmZmZiIgcC1pZD0iMjgyMiI+PC9wYXRoPjxwYXRoIGQ9Ik01MTEuNSAxMjAuOWM4OSAwIDE2MS4xIDcyLjEgMTYxLjEgMTYxLjFoODEuOWMwLTEzNC4yLTEwOC44LTI0My0yNDMtMjQzcy0yNDMgMTA4LjgtMjQzIDI0M2g4MS45YzAtODkgNzIuMS0xNjEuMSAxNjEuMS0xNjEuMXpNODc3LjQgOTMyLjZWNDc2LjhjLTMuNC0zMy40LTMxLTU5LjctNjQuOS02MUgyMTIuN2MtMzcuNSAwLTY4IDMwLjQtNjguMSA2Ny45VjkyOGM0IDMwLjIgMjcuOCA1NC4yIDU3LjkgNTguNUg4MjRjMjctNS41IDQ4LjItMjYuOCA1My40LTUzLjl6IiBmaWxsPSIjZmZmZmZmIiBwLWlkPSIyODIzIj48L3BhdGg+PHBhdGggZD0iTTQzNi45IDcwMS4xYzAtMjIuNiAxOC4zLTQxIDQxLTQxaDY2LjJjMjIuNiAwIDQxIDE4LjMgNDEgNDEgMCAyMi42LTE4LjMgNDEtNDEgNDFoLTY2LjJjLTIyLjYtMC4xLTQxLTE4LjQtNDEtNDF6IiBmaWxsPSIjZmZmZmZmIiBwLWlkPSIyODI0Ij48L3BhdGg+PC9zdmc+" width=20px height= 20px alt="">Password: ${studentInfo.password}</li>
            <li><img class="info-icon" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBzdGFuZGFsb25lPSJubyI/PjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+PHN2ZyB0PSIxNjQwMjYzNzQ0MzU2IiBjbGFzcz0iaWNvbiIgdmlld0JveD0iMCAwIDEwMjQgMTAyNCIgdmVyc2lvbj0iMS4xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHAtaWQ9IjM2OTQiIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMjAwIiBoZWlnaHQ9IjIwMCI+PGRlZnM+PHN0eWxlIHR5cGU9InRleHQvY3NzIj48L3N0eWxlPjwvZGVmcz48cGF0aCBkPSJNNDUuMzIzMTMgMTAxMy4xODEyMTdBMjMuMDYyMjYxIDIzLjA2MjI2MSAwIDAgMSAyMi4yNjA4NyA5OTAuMTE4OTU3YzAtMjU1Ljg2NjQzNSAyMDIuMDM5NjUyLTQ0OC43NzkxMyA0NzAuMDE2LTQ0OC43NzkxMzEgMjY3LjkzMTgyNiAwIDQ2OS45NzE0NzggMTkyLjkxMjY5NiA0NjkuOTcxNDc4IDQ0OC43NzkxMzFhMjMuMDYyMjYxIDIzLjA2MjI2MSAwIDAgMS0yMy4wNjIyNjEgMjMuMDYyMjZINDUuMzIzMTN6TTUwMi42NTA0MzUgNDkyLjA1NDI2MWEyNDYuMzM4NzgzIDI0Ni4zMzg3ODMgMCAwIDEtMjQ2LjAyNzEzMS0yNDYuMDI3MTMxQTI0Ni4yOTQyNjEgMjQ2LjI5NDI2MSAwIDAgMSA1MDIuNjA1OTEzIDBhMjQ2LjMzODc4MyAyNDYuMzM4NzgzIDAgMCAxIDI0Ni4wNzE2NTIgMjQ2LjAyNzEzIDI0Ni4yOTQyNjEgMjQ2LjI5NDI2MSAwIDAgMS0yNDYuMDcxNjUyIDI0Ni4wMjcxMzF6IiBwLWlkPSIzNjk1IiBmaWxsPSIjZmZmZmZmIj48L3BhdGg+PC9zdmc+" width=20px height= 20px alt="">Student Name: ${studentInfo.name}</li>
            <li><img class="info-icon" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBzdGFuZGFsb25lPSJubyI/PjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+PHN2ZyB0PSIxNjQwMjYzNzc4NTA3IiBjbGFzcz0iaWNvbiIgdmlld0JveD0iMCAwIDEwMjQgMTAyNCIgdmVyc2lvbj0iMS4xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHAtaWQ9IjQ1NTIiIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMjAwIiBoZWlnaHQ9IjIwMCI+PGRlZnM+PHN0eWxlIHR5cGU9InRleHQvY3NzIj48L3N0eWxlPjwvZGVmcz48cGF0aCBkPSJNODI4Ljc5MiAwSDE5NC4xMDhjLTUxLjQ5OSAwLTY2LjM5OSAxNy4zLTY2LjM5OSA2Ny45OTh2NjYwLjI4NGMwIDYuNSAyIDEyLjggNS4zIDE4LjUgMS40IDkuMiA2LjMgMTcuNyAxNC41IDIzLjZMNDkxIDEwMTcuMTc0YzEyLjYgOS4xIDI5LjY5OSA5LjEgNDIuMjk4IDBsMzQzLjQ5Mi0yNDYuNzk0YzcuOS01LjYgMTIuNi0xMy44IDE0LjItMjIuNSAyLjYtNC45IDQuMS0xMC4yOTkgNC4xLTE2LjA5OWwxLjMtNjY1LjE4NEM4OTYuMzkgMTguNCA4NzcuNzkgMCA4MjguNzkyIDB6TTM1Mi45MDQgNDY1LjY4OVMyOTAuMjA1IDM5NS42OSAyNTIuNTA2IDM1My4yOWMtMTMuMi0xNS41LTQuNi0zNy4zOTkgMjEuNi00MS40OTkgNTMuNTk4LTkuNSAxMzYuNDk2LTI3Ljc5OSAxMzYuNDk2LTI3Ljc5OXM0Mi4yLTc1LjI5OCA3MC44OTktMTIzLjM5N2MxNy45LTMzLjQgMjIuMy0zNi44OTkgMzEuNzk5LTM2Ljg5OSA5LjQgMCAxMS43IDEuMyAzMi4zIDM2LjkgMjguNDk4IDQ4LjA5OCA3MC4wOTcgMTIzLjQ5NiA3MC4wOTcgMTIzLjQ5NnM4MS44OTggMTUuMSAxMzQuODk3IDI0LjZjMjUuOSA0LjEgMzQuNCAzMi40OTkgMjEuMyA0Ny44OTgtMzcuMiA0Mi41LTk1Ljk5OCAxMDkuNDk4LTk1Ljk5OCAxMDkuNDk4czkuNSA3Ny4wOTggMTUuNiAxMjkuNzk2YzEuOCAyMC4zLTE4LjMgMzUtMzQgMzUtNS4xIDAtMTAuNy0xLjItMTYuNS0zLjgtNDQuMzk4LTIwLjktMTExLjk5Ni01My40OTktMTI3LjE5Ni02MC42OTktMTUuNCA3LjMtODMuNjk4IDM5LjEtMTI4LjY5NyA2MC4wOTktNS44IDIuNi0xMS40IDMuOC0xNi42IDMuOC0xNiAwLTM3LjU5OS0xNC44LTM1LjY5OS0zNSA2LTUyLjQ5OCAyMC4xLTEyOS41OTYgMjAuMS0xMjkuNTk2eiBtMCAwIiBwLWlkPSI0NTUzIiBmaWxsPSIjZmZmZmZmIj48L3BhdGg+PC9zdmc+" width=20px height= 20px alt="">Grade: ${studentInfo.student_grade}</li>
            <li><img class="info-icon" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBzdGFuZGFsb25lPSJubyI/PjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+PHN2ZyB0PSIxNjQwMjYzODIyODgxIiBjbGFzcz0iaWNvbiIgdmlld0JveD0iMCAwIDEwMjQgMTAyNCIgdmVyc2lvbj0iMS4xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHAtaWQ9IjU0NjQiIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMjAwIiBoZWlnaHQ9IjIwMCI+PGRlZnM+PHN0eWxlIHR5cGU9InRleHQvY3NzIj48L3N0eWxlPjwvZGVmcz48cGF0aCBkPSJNNTEyIDI1LjkxNTU2N0MyNDMuNTQ2NTE3IDI1LjkxNTU2NyAyNS45MTY2ODEgMjQzLjU0NTQwMyAyNS45MTY2ODEgNTExLjk5ODg4NiAyNS45MTY2ODEgNzgwLjQ2MDE2MyAyNDMuNTQ2NTE3IDk5OC4wODIyMDQgNTEyIDk5OC4wODIyMDQgNzgwLjQ1MzQ4NCA5OTguMDgyMjA0IDk5OC4wODMzMTggNzgwLjQ2MTI3OSA5OTguMDgzMzE4IDUxMiA5OTguMDgzMzE4IDI0My41NDY1MTcgNzgwLjQ1MzQ4NCAyNS45MTU1NjcgNTEyIDI1LjkxNTU2N0w1MTIgMjUuOTE1NTY3Wk03MTguMjIxOTkgNjY1LjE5MDI2NCA1MTIgNzc3LjEzODU4MyAzMDUuNzc4MDEgNjY1LjE5MDI2NCAzMDUuNzc4MDEgNTQ3LjM1NTk2OCA1MTIgNjU5LjMwNDI4NCA3MTguMjIxOTkgNTQ3LjM1NTk2OCA3MTguMjIxOTkgNjY1LjE5MDI2NCA3MTguMjIxOTkgNjY1LjE5MDI2NFpNODM2LjA1NTE3NiA2NTkuMzA0Mjg3IDc3Ny4xMzA3ODggNjU5LjMwNDI4NyA3NzcuMTMwNzg4IDQ1Ni4wMjUyODUgNTEyIDYwMC4zNzk4OTkgMTg3Ljk0MzcxMiA0MjMuNjIwMTAxIDUxMiAyNDYuODYxNDE4IDgzNi4wNTYyODkgNDIzLjYyMDEwMSA4MzYuMDU2Mjg5IDY1OS4zMDQyODcgODM2LjA1NTE3NiA2NTkuMzA0Mjg3WiIgcC1pZD0iNTQ2NSIgZmlsbD0iI2ZmZmZmZiI+PC9wYXRoPjwvc3ZnPg==" width=20px height= 20px alt="">Total Credit: ${studentInfo.total_credit}</li>
            <li><img class="info-icon" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBzdGFuZGFsb25lPSJubyI/PjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+PHN2ZyB0PSIxNjQwMjYzODY4NDQyIiBjbGFzcz0iaWNvbiIgdmlld0JveD0iMCAwIDEwMjQgMTAyNCIgdmVyc2lvbj0iMS4xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHAtaWQ9IjY0OTgiIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMjAwIiBoZWlnaHQ9IjIwMCI+PGRlZnM+PHN0eWxlIHR5cGU9InRleHQvY3NzIj48L3N0eWxlPjwvZGVmcz48cGF0aCBkPSJNNTEyIDBjMjgyLjc3NzYgMCA1MTIgMjI5LjIyMjQgNTEyIDUxMnMtMjI5LjIyMjQgNTEyLTUxMiA1MTJTMCA3OTQuNzc3NiAwIDUxMiAyMjkuMjIyNCAwIDUxMiAweiBtMjcwLjEzMTIgMzU1LjI3NjhMNDU4LjM5MzYgNjEwLjMwNGwtMTI5LjUzNi0xNjcuMjE5Mi00MC41NTA0IDMxLjMzNDRMNDQ5LjUzNiA2ODIuNDk2bDM2NC4yODgtMjg3LjAyNzItMzEuNjkyOC00MC4xOTJ6IiBwLWlkPSI2NDk5IiBmaWxsPSIjZmZmZmZmIj48L3BhdGg+PC9zdmc+" width=20px height= 20px alt="">Selected Credit: ${studentInfo.selected_credit}</li>
            <li><img class="info-icon" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBzdGFuZGFsb25lPSJubyI/PjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+PHN2ZyB0PSIxNjQwMjYzODk5MzA3IiBjbGFzcz0iaWNvbiIgdmlld0JveD0iMCAwIDEwMjQgMTAyNCIgdmVyc2lvbj0iMS4xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHAtaWQ9Ijc0NDIiIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMjAwIiBoZWlnaHQ9IjIwMCI+PGRlZnM+PHN0eWxlIHR5cGU9InRleHQvY3NzIj48L3N0eWxlPjwvZGVmcz48cGF0aCBkPSJNNzE2LjkwNjY2NyAyNzEuMjMybDExMS4xNDY2NjYgNjYuNjg4QTk2IDk2IDAgMCAxIDg3NC42NjY2NjcgNDIwLjI0NTMzM1Y3NjhhOTYgOTYgMCAwIDEtOTYgOTZoLTUxMkE5NiA5NiAwIDAgMSAxNzAuNjY2NjY3IDc2OFY0MjAuMjQ1MzMzYTk2IDk2IDAgMCAxIDQ2LjYxMzMzMy04Mi4zNDY2NjZsMTExLjE0NjY2Ny02Ni42NjY2NjcgMzIuOTE3MzMzIDU0Ljg2OTMzMy0xMTEuMTQ2NjY3IDY2LjY4OEEzMiAzMiAwIDAgMCAyMzQuNjY2NjY3IDQyMC4yNjY2NjdWNzY4YTMyIDMyIDAgMCAwIDMyIDMyaDUxMkEzMiAzMiAwIDAgMCA4MTAuNjY2NjY3IDc2OFY0MjAuMjQ1MzMzYTMyIDMyIDAgMCAwLTE1LjUzMDY2Ny0yNy40NTZsLTExMS4xNDY2NjctNjYuNjg4IDMyLjkxNzMzNC01NC44NjkzMzN6TTUyMi42NjY2NjcgMTQ5LjMzMzMzM2wxMjggNzYuOC01NC41MDY2NjcgMTE1LjJoLTEuODU2TDYyOS4zMzMzMzMgNjM0LjM4OTMzMyA1MjIuNjY2NjY3IDcyNS4zMzMzMzNsLTEwNi42NjY2NjctOTAuOTQ0TDQ1MS4wMDggMzQxLjMzMzMzM2gtMS40OTMzMzNMMzk0LjY2NjY2NyAyMjYuMTMzMzMzbDEyOC03Ni44eiBtMTUuMzgxMzMzIDE5MmgtMzAuNzg0bC0zMi4yNTYgMjY5Ljk3MzMzNCA0Ny42NTg2NjcgNDAuNjE4NjY2IDQ3LjY1ODY2Ni00MC42MTg2NjZMNTM4LjAyNjY2NyAzNDEuMzMzMzMzeiBtLTE1LjM4MTMzMy0xMTcuMzU0NjY2bC00NS4yMjY2NjcgMjcuMTM2IDEyLjQ4IDI2LjIxODY2Nmg2NS43MDY2NjdsMTIuMzczMzMzLTI2LjE1NDY2Nkw1MjIuNjY2NjY3IDIyNHoiIHAtaWQ9Ijc0NDMiIGZpbGw9IiNmZmZmZmYiPjwvcGF0aD48L3N2Zz4=" width=20px height= 20px alt="">Major: ${studentInfo.major}</li>
        </ul>
    <div class="profile">
        <img class="profile-icon" src="https://www.salisburyut.com/wp-content/uploads/2020/09/avatar-1-2048x2048.jpeg" width=200px height= 200px alt="">
        <div class="profile-title">Your Profile</div>
    </div>
    </div>
</div>

</body>
</html>
