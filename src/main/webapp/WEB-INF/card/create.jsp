<%--
  Created by IntelliJ IDEA.
  User: kienroro2003
  Date: 07/05/2023
  Time: 00:02
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
          integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
            integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
            integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.0/js/bootstrap.min.js"
            integrity="sha512-XKa9Hemdy1Ui3KSGgJdgMyYlUg1gM+QhL6cnlyTe2qzMCYm4nAZ1PsVerQzTTXzonUR+dmswHqgJPuwCq1MaAg=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link href="./assets/sidebars.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <!-- Bootstrap -->
    <script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
    <script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
    <link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css' media="screen" />
    <!-- Bootstrap -->
    <!-- Bootstrap DatePicker -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.css" type="text/css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.js" type="text/javascript"></script>
    <title>Trang chu</title>
</head>
<body>
<div class="container">
    <form action="/control?action=create" method="post">
        <div class="input-group">
            <span class="input-group-addon" id="basic-addon1">ID</span>
            <input type="text" class="form-control" name="id" placeholder="Enter ID" aria-describedby="basic-addon1">
        </div>
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <label class="input-group-text" for="inputGroupSelect01">Books</label>
            </div>
            <select name="book" class="custom-select form-control" id="inputGroupSelect01">
                <option selected>Choose...</option>
                <c:forEach items="${books}" var="e">
                    <option value="${e.id}">${e.name}</option>
                </c:forEach>
            </select>
        </div>
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <label class="input-group-text" for="inputGroupSelect02">Students</label>
            </div>
            <select name="student" class="custom-select form-control" id="inputGroupSelect02">
                <option selected>Choose...</option>
                <c:forEach items="${students}" var="e">
                    <option value="${e.id}">${e.name}</option>
                </c:forEach>
            </select>
        </div>
        <div class='input-group date mb-3' id='datetimepicker1'>
            <input type='text' name="startDate" class="form-control"/>
            <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                    </span>
        </div>
        <div class='input-group date mb-3' id='datetimepicker2'>
            <input type='text' name="endDate" class="form-control"/>
            <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                    </span>
        </div>
        <button type="submit" class="btn btn-primary">Primary</button>
    </form>
</div>
<script type="text/javascript">
    $(function () {
        $('#datetimepicker1').datepicker({
            format: "dd-mm-yyyy"
        });
        $('#datetimepicker2').datepicker({
            format: "dd-mm-yyyy"
        });
    });
</script>
</body>
</html>