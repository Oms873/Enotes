<%@ page import="java.util.ArrayList, uploads.Image" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>

table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 16px;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}
        
    </style>
    
</head>
<body>
    

<% ArrayList<String> img = (ArrayList <String>)request.getAttribute("image"); %>

    <% int i = 1; %>
    
    <table>
        <tr>
          <th>Sr No.</th>
          <th>Image Name</th>
        </tr>

 <% for(String im : img)  {  %>       
        
        <tr>
          <td><%= i++ %></td>
          <td><a href="images/<%= im %>"><%= im %></a></td>
        </tr>

        <% } %>
    </table>
    
</body>
</html>