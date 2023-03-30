<%@ page import="java.sql.Connection, comDb.DBconnect" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Home Page</title>

  <style type="text/css">
    .back-img {

      background: url(images/images.jpg);
      background-repeat: no-repeat;
      background-size:cover;
      width: 100%;
      height: 100vh;
      margin:0;
    }
  </style>

  <%@ include file="all_component/allcss.jsp" %>

</head>

<body>
  <%@ include file="navbar.jsp" %>


 

  
  

    <div class="container-fluid back-img">
      <br>
      <div class="text-center">
        <h1 class="text-black bg-orange"><i class="fa fa-book" aria-hidden="true"></i>ENotes- Save Your Notes</h1>
        <a href="Login.jsp" class="btn btn-dark"><i class="fa fa-user" aria-hidden="true"></i>&nbsp;Login</a>
        <a href="Register.jsp" class="btn btn-dark"><i class="fa fa-user-plus" aria-hidden="true"></i>&nbsp;Register</a>
      </div>



    </div>

    <%@ include file="footer.jsp" %>

</body>

</html>