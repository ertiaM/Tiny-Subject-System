<%--
  Created by IntelliJ IDEA.
  User: Eir Aoi
  Date: 2021/12/19
  Time: 15:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

    .course{
        margin: auto;
        padding: 0px;
        left: 0px;
        right: 0px;
        width:95%;
        position: relative;
        top: 20px;
        overflow-y: auto;
        overflow-x: hidden;
    }

    .title{
        background-color: #216BD2;
        padding: 10px;
        font-size:16px;
        color:white;
    }

    .title th{
        padding: 10px;
    }

    .info{
        background-color: #E1E5FE;
        font-size: 14px;
        font-weight: bold;
        padding: 10px;
    }

    .info th{
        padding: 6px;
    }
    .info:hover{
        background-color: #f2d8ff;
    }

    .container{
        width: 80%;
        height: 610px;
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

    .titleicon{
        position: relative;
        top: 2px;
        left: -11px;
    }

    .person_bar{
        font-size: 16px;
        font-weight: bold;
        float: right;
        color: orange;
        top: 7px;
        right: 10px;
        padding: 8px;
        position: relative;
    }

    .welcome{
        float: left;
        color: orange;
        top: 2px;
        left: 10px;
        position: relative;
        font-size: 16px;
        font-weight: bold;
    }

    .icon{
        position: relative;
        top: 8px;
        left: 5px;
        border-radius: 100%;
    }
</style>

<head>
    <title>finished course</title>
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
    <li class="welcome">Welcome, ${stuInformation.name}<img class="icon" src="https://www.salisburyut.com/wp-content/uploads/2020/09/avatar-1-2048x2048.jpeg" width=30px height= 30px alt=""></li>
    <li class="person_bar">Total Credit: ${stuInformation.total_credit}</li>
    <li class="person_bar">Selected Credit: ${stuInformation.selected_credit}</li>
</ul>
<div class="container">
    <div class="cap">Finished Courses</div>
    <table class="course">
        <tr class="title">
            <th>Course Name</th>
            <th>Class Date</th>
            <th>Start Time</th>
            <th>Ending Time</th>
            <th>Credit</th>
            <th>Grade</th>
            <th>Teacher</th>
            <th>Major</th>
        </tr>

        <c:forEach items="${finishedCourseList}" var="course">
            <tr class="info">
                <th>${course.course}</th>
                <th>${course.class_date}</th>
                <th>period ${course.start_time}</th>
                <th>period ${course.end_time}</th>
                <th>${course.credit}</th>
                <c:choose>
                    <c:when test="${course.grade==0}">
                        <th>no limit</th>
                    </c:when>
                    <c:otherwise>
                        <th>No. ${course.grade} grade and above</th>
                    </c:otherwise>
                </c:choose>
                <th>${course.teacher_name}</th>
                <th>${course.major}</th>
            </tr>
        </c:forEach>


    </table>
</div>


</body>
</html>
