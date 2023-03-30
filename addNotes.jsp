<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Notes</title>

    <style>
        .margin{

            margin-bottom: 110px;
            color: red;
            
        }
    </style>


    <%@ include file="all_component/allcss.jsp" %>

</head>

<body>

    <div class="container-fluid">
        <%@ include file="navbar.jsp" %>

        <h1 class="text-center">Add Your Notes</h1>

        <%  
                 if(us == null) {
                    response.sendRedirect("index.jsp");
                 } else {
        %>
        
            <div class="container">
                <div class="row">
                    <div class="col-md-12">

                        <form action="AddNotesServlet" method="post">
                            <div class="form-group">
                               

                                <input type="hidden" name="id" value="<%= us.getId() %>">
                                
                                <label for="exampleInputEmail1">Enter Title</label>
                                <input type="text" class="form-control" id="exampleInputEmail1"
                                    aria-describedby="emailHelp" name="title" required>
                            </div>
    
                            <div class="form-group">
                                <label for="exampleInputEmail1">Enter Content</label>
                                <textarea  id=""rows="10" cols=""  class="form-control" name="content" required> </textarea>
                            </div>
    
                            <div class="container-fluid text-center">
                                <button type="submit" class="btn btn-primary margin" >Add Notes</button>
                            </div>
    
                        </form>
                    </div>

                    

                </div>
            </div>

  <% }  %>
    </div>

    
    <%@ include file="footer.jsp" %>
    
</body>

</html>