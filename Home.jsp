<%@ page import="comUser.UserDetails" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Ms+Madi&display=swap" rel="stylesheet">
        <%@ include file="all_component/allcss.jsp" %>

            <style>
                .pos {

                    position: absolute;
                    bottom: 500px;
                    left: 15px;
                    border: 1px solid;
                    border-radius: 8px;
                }

                body {
                    font-family: Arial, Helvetica, sans-serif;
                }

                /* Full-width input fields */
                /* input[type=text],
                input[type=password] {
                    width: 100%;
                    padding: 12px 20px;
                    margin: 8px 0;
                    display: inline-block;
                    border: 1px solid #ccc;
                    box-sizing: border-box;
                } */

                /* Set a style for all buttons */
                /* button {
                    background-color:#be2282;
                    color: white;
                    padding: 14px 20px;
                    margin: 8px 0;
                    border: none;
                    cursor: pointer;
                    width: 100%;
                }

                button:hover {
                    opacity: 0.8;
                } */

                /* Extra styles for the cancel button */
                /* .cancelbtn {
                    width: auto;
                    padding: 10px 18px;
                    background-color: #f44336; */
                /* } */

                /* Center the image and position the close button */
                /* .imgcontainer {
                    text-align: center;
                    margin: 24px 0 12px 0;
                    position: relative;
                }

                img.avatar {
                    width: 40%;
                    border-radius: 50%;
                }

                .container {
                    padding: 16px;
                }

                span.psw {
                    float: right;
                    padding-top: 16px;
                } */

                /* The Modal (background) */
                /* .modal { */
                    /* display: none; */
                    /* Hidden by default */
                    /* position: fixed; */
                    /* Stay in place */
                    /* z-index: 1; */
                    /* Sit on top */
                    /* left: 0; */
                    /* top: 0; */
                    /* width: 100%; */
                    /* Full width */
                    /* height: 100%; */
                    /* Full height */
                    /* overflow: auto; */
                    /* Enable scroll if needed */
                    /* background-color: rgb(0, 0, 0); */
                    /* Fallback color */
                    /* background-color: rgba(0, 0, 0, 0.4); */
                    /* Black w/ opacity */
                    /* padding-top: 60px; */
                }

                /* Modal Content/Box */
                /* .modal-content { */
                    /* background-color: #fefefe; */
                    /* margin: 5% auto 15% auto; */
                    /* 5% from the top, 15% from the bottom and centered */
                    /* border: 1px solid #888; */
                    /* width: 80%; */
                    /* Could be more or less, depending on screen size */
                /* } */

                /* The Close Button (x) */
                /* .close {
                    position: absolute;
                    right: 25px;
                    top: 0;
                    color: #000;
                    font-size: 35px;
                    font-weight: bold;
                }

                .close:hover,
                .close:focus {
                    color: red;
                    cursor: pointer;
                } */

                /* Add Zoom Animation */
                /* .animate {
                    -webkit-animation: animatezoom 0.6s;
                    animation: animatezoom 0.6s
                }

                @-webkit-keyframes animatezoom {
                    from {
                        -webkit-transform: scale(0)
                    }

                    to {
                        -webkit-transform: scale(1)
                    }
                }

                @keyframes animatezoom {
                    from {
                        transform: scale(0)
                    }

                    to {
                        transform: scale(1)
                    }
                } */

                /* Change styles for span and cancel button on extra small screens */
                /* @media screen and (max-width: 300px) {
                    span.psw {
                        display: block;
                        float: none;
                    }

                    .cancelbtn {
                        width: 100%;
                    }
                } */
            </style>

    </head>

    <body>

        <% UserDetails usa=(UserDetails)session.getAttribute("user"); %>

            <% if(usa!=null) { %>



                <div class="container-fluid">
                    <%@ include file="navbar.jsp" %>
                        <div class="card py-3">
                            <div class="card-body text-center">
                                <img src="images/paper.jpg" alt="" class="img-fluid mx-auto" style="width:400px; ">

                                <h1 class="py-2" style="font-family:Ms-Madi">START TAKING YOUR NOTES</h1>

                                <a href="addNotes.jsp" class="btn btn-outline-primary">Start Here</a>
                            </div>
                        </div>
                </div>


                 <!-- <div class="pos">


                    <button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Upload
                        Your Documents</button>

                    <div id="id01" class="modal">

                        <form class="modal-content animate" action="image.do" method="post"
                            enctype="multipart/form-data">


                            <div class="container">
                                <label for="uname"><b>Upload Image</b></label>
                                <input type="file" placeholder="Enter Us" name="uimage" required> -->

                                <!-- <label for="psw"><b>Upload Pdf</b></label>
      <input type="file" placeholder="Enter Password" name="psw" required> -->

                                <!-- <button type="submit">Save</button> 

                            </div>


                        </form>
                    </div>

                    <script>
                        // Get the modal
                        var modal = document.getElementById('id01');

                        // When the user clicks anywhere outside of the modal, close it
                        window.onclick = function (event) {
                            if (event.target == modal) {
                                modal.style.display = "none";
                            }
                        }
                    </script> -->



                    <!-- <button onclick="document.getElementById('id02').style.display='block'" style="width:auto;">View
                        Your Documents</button>

                    <div id="id02" class="modal">

                        <form class="modal-content animate" action="showimage.do">


                            <div class="container">
                                <label for="uname"><b>View Your Images</b></label> -->

                                <!-- <label for="psw"><b>Upload Pdf</b></label>
      <input type="file" placeholder="Enter Password" name="psw" required> -->

                                <!-- <button type="submit">view</button>

                            </div>


                        </form>
                    </div>

                    <script> -->
                        <!-- // Get the modal
                        var modal = document.getElementById('id02');

                        // When the user clicks anywhere outside of the modal, close it -->
                        <!-- window.onclick = function (event) {
                            if (event.target == modal) {
                                modal.style.display = "none";
                            }
                        }
                    </script> -->

                <!-- </div>  -->

                <%@ include file="footer.jsp" %>
                    <% } else { session.setAttribute("expire", "Your session is expire" );
                        response.sendRedirect("Login.jsp"); } %>



    </body>

    </html>