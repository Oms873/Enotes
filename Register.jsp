<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Page</title>

    <%@ include file="all_component/allcss.jsp" %>

</head>

<body>
    <%@ include file="navbar.jsp" %>

        <div class="container-fluid div-color" id="color">
            <div class="row">
                <div class="col-md-4 offset-md-4 ">
                    <div class="card mt-4">
                        <div class="card-header text-center text-white bg-custom"><i class="fa fa-user-plus fa-3x"
                                aria-hidden="true"></i>
                            <h4>Register</h4>
                        </div>

                        
                        <% String regMsg = (String)session.getAttribute("reg-sucess"); %>

                         <% if(regMsg!=null) {  %>

                            <div class="alert alert-success" roles="alert"><%= regMsg %>&nbsp;Login<a href="Login.jsp">click here</a></div>
                            
                            <% } %>

                            <% session.removeAttribute("reg-sucess"); %>
                        
                        <% String regMsg2 = (String)session.getAttribute("failed"); %>

                         <% if(regMsg2!=null) {  %>

                            <div class="alert alert-success " roles="alert" style="color:red;"><%= regMsg2 %></div>
                            
                            <% } %>
                        
                            <% session.removeAttribute("failed"); %>
                        
                        <div class="card-body">
                            <form action="UserServlet" method="post">
                                <div class="form-group">
                                    <label>Enter Full Name</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1"
                                        aria-describedby="emailHelp" placeholder="Enter Name" name="fname" >
                                    <%    String  name_error = (String)request.getAttribute("name_error"); %>
                                        
                                    <% if(name_error!=null) {  %>
                                        <small style="color:red"><%= name_error %></small>

                                     <% } %>   
                                </div>
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

                                <button type="submit" class="btn btn-primary badge-pill btn-block">Register</button>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <%@ include file="footer.jsp" %>

</body>

</html>