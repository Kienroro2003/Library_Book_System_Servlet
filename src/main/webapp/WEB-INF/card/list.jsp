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
    <title>Trang chu</title>
</head>
<body>
<div class="container">
    <div class=" pt-20" style="width: 100%; ">
        <table class="table table-striped table-bordered" style="width: 100%;" id="tableEmployee">
            <thead>
            <tr style="background-color: #FF2C2B;">
                <th>Mã thẻ</th>
                <th>Tên sách</th>
                <th>Tên học sinh</th>
                <th>Tình trạng</th>
                <th>Ngày mượn</th>
                <th>Ngày trả</th>
                <th>Thao tác</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${cards}" var="e">
                <tr>
                    <td>${e.getId()}</td>
                    <td>${e.getIdBook()}</td>
                    <td>${e.getIdStudent()}</td>
                    <td>${e.isStatus()}</td>
                    <td>${e.getStartDate()}</td>
                    <td>${e.getEndDate()}</td>
                    <td>
                        <a class="btn btn-primary btn-card"
                           href="/control?action=create"
                           style="margin-bottom:10px "><i class="fa-solid fa-pen-to-square"
                                                          style="pointer-events: none"></i></a>
                        <!-- Button trigger modal -->
                            <%--                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">--%>
                            <%--                            Launch demo modal--%>
                            <%--                        </button>--%>

                        <!-- Modal -->
                            <%--                        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">--%>
                            <%--                            <div class="modal-dialog" role="document">--%>
                            <%--                                <div class="modal-content">--%>
                            <%--                                    <div class="modal-header">--%>
                            <%--                                        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>--%>
                            <%--                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
                            <%--                                            <span aria-hidden="true">&times;</span>--%>
                            <%--                                        </button>--%>
                            <%--                                    </div>--%>
                            <%--                                    <div class="modal-body">--%>
                            <%--                                        ...--%>
                            <%--                                    </div>--%>
                            <%--                                    <div class="modal-footer">--%>
                            <%--                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>--%>
                            <%--                                        <button type="button" class="btn btn-primary">Save changes</button>--%>
                            <%--                                    </div>--%>
                            <%--                                </div>--%>
                            <%--                            </div>--%>
                            <%--                        </div>--%>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<script>
    // window.addEventListener("DOMContentLoaded", (event) => {
    //     const btn = document.querySelectorAll(".btn-card");
    //     console.log(btn)
    //     btn.forEach(item => item.addEventListener("click", e => {
    //         e.preventDefault()
    //         if (e.target.dataset.count == 0) {
    //             $('.modal').modal('show')
    //         } else {
    //             window.location.href = e.target.href
    //         }
    //     }))
    // });

</script>
</body>
</html>