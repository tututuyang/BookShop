<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"/>
<html>
<head>
    <title>书籍列表</title>
</head>
<body>
<div>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${pageContext.request.contextPath}/index">Books</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="${pageContext.request.contextPath}/book/allBooks">书籍列表</a></li>

                </ul>
                <form class="navbar-form navbar-left">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default">Submit</button>
                </form>

            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>

</div>
<table class="table table-striped">
    <thead>
    <tr>
        <th>编号</th>
        <th>书籍名称</th>
        <th>书籍数量</th>
        <th>书籍描述</th>
    </tr>
    </thead>
    <tbody>
        <c:forEach var="books" items="${booksList}">
            <tr>
                <td>${books.bookId}</td>
                <td>${books.bookName}</td>
                <td>${books.bookCounts}</td>
                <td>${books.detail}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>
