<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>LNCT Quiz Portal</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">

    <link rel="stylesheet" href="bootstrap/css/custom-theme.css">


    <!-- Latest compiled and minified JavaScript -->
    <script src="bootstrap/js/jquery-2.2.2.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <header>
        <jsp:include page="header.jsp"/>
        <jsp:include page="nav_user.jsp">
            <jsp:param name="page" value="user_index"/>
        </jsp:include>
    </header>
    <form class="form-horizontal" action="AddTopic" method="post">
        <fieldset>
            <legend>
                <ul>
                <li>  We have designed this website with the purpose of allowing the students to give exams and view their results. </li>
            <li>    This site is an attempt to remove the existing flaws in the manual system of conducting exams.</li>
<li>Students are provided the flexibility to choose among different types of subjects on which they want to give the test.
    Providing an online comprehensive solution to manage quiz.</li>

<li>The ONLINE QUIZ is a web application for students to take online test in an efficient manner and no time wasting for checking the paper and automated gives fast results.
Students they give papers according to their convenience and time and there is no need of using extra thing like paper, pen etc.
This can be used in educational institutions as well as in corporate world.
Can be used anywhere any time as it is a web based application(user location doesn't matter).
</li>
            </ul>


            </legend>
   
    </form>
</div>
</body>
<script>
    $('.nav-collapse').click('li', function () {
        $('.nav-collapse').collapse('hide');
    });
</script>
</html>