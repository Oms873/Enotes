<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>

    <%@ include file="all_component/allcss.jsp" %>

</head>

<body>
    <%@ include file="navbar.jsp" %>

        <div class="container-fluid div-color" id="color">
            <div class="row">
                <div class="col-md-4 offset-md-4 ">
                    <div class="card mt-5">
                        <div class="card-header text-center text-white bg-custom"><i class="fa fa-sign-in fa-3x" aria-hidden="true"></i>
                            <h4>Login Page</h4>
                        </div>
                        <% String error = (String)session.getAttribute("error"); %>

                        <% if(error!=null) { %>

                           <div class="alert alert-danger" roles=alert><%= error %></div>

                      <% }  %>

                      <%  session.removeAttribute("error"); %>

                      <% String expire = (String)session.getAttribute("expire"); %>

                      <% if(expire!=null) {  %> 

                        <div class=" alert alert-secondary"><%= expire %></div>
                      
                       <% } %>
                       
                       <% session.removeAttribute("expire"); %>
                        <div class="card-body">
                            <form action="loginServlet" method="post">
                                
                                <div class="form-group">
                                    <label>Enter Email</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1"
                                        aria-describedby="emailHelp" placeholder="Enter email" name="uemail">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" class="form-control" id="exampleInputPassword1"
                                        placeholder="Password" name="upassword">
                                </div>

                                <button type="submit" class="btn btn-primary badge-pill btn-block">Login</button>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <%@ include file="footer.jsp" %>

</body>

</html>