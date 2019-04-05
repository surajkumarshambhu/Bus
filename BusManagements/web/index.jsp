<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<title>Bus Managment</title>
	<style type="text/css">
		body{
			margin: 0;
			padding: 0;
			background-color: #252525;
			font-family: sans-serif;
		}
		.main-tag{
			position: relative;
			top: 30px;
			text-align: center;
		}
		.box{
			width: 300px;
			padding: 40px;
			position: relative;
            float: right;
			/*
			top: 50%;
			left: 50%;
			transform: translate(-50%,-50%);*/
			background-color: #191919;
			text-align: center;
		}
		.box input[type="text"],input[type="password"]{
			border: 0;
			background:none;
			display: block;
			margin: 20px auto;
			text-align: center;
			border: 2px solid #3498db;
			padding: 14px 10px;
			width: 200px;
			color: white;
			outline: none;
			border-radius:24px; 
			transition: .5s;
		}
		.box h1{
			text-transform: uppercase;
			color: white;
			font-weight: 500;
		}
		.box input[type="text"]:focus,input[type="password"]:focus{
			/*width: 280px;*/
			border-color: #2ecc71;
		}
		.box input[type="submit"]{
			border: 0;
			background:none;
			display: block;
			margin: 20px auto;
			text-align: center;
			border: 2px solid #2ecc71;
			padding: 14px 40px;
			color: white;
			outline: none;
			border-radius:24px; 
			transition: .5s;
			cursor: pointer;
		}
		.box a{
			text-decoration: none;
            color: white;
            cursor: pointer;
		}
		.box input[type="submit"]:hover{
			border-color:#3498db;
		}
		.slideshow{
			transition: 2s;
			width: 300px;
			position: relative;
			top: 50%;
			border: 40px solid #191919;
			overflow: hidden;
            background-color: #191919;
			text-align: center;
			float: left;
		}
		.logindetails{
		    position: absolute;
		    top: 50%;
		    left: 50%;
		    transform: translate(-50%,-50%);
		    width: 813px;
		}
		.myimg{
			width: 310px;
			object-fit: cover;
			display: none;
			height: 298.875px;
		}
		.arrow{
			cursor: pointer;
			position: absolute;
		    top: 50%;
		    left: 10px;
		    color: #a20909;
		}
		.arrow1{
			cursor: pointer;
			position: absolute;
			top: 50%;
			right:2%;
			color: #a20909;
		}
		.box:before{
			content: '';
		    border-left: 3px solid #dc0808;
		    height: 300px;
		    position: absolute;
		    left: -26px;
		}
		.box span{
			padding: 14px;
            color: #2ecc71;
		}
		.app{
			border-color: red !important;
            
		}
		@media only screen and (max-width: 822px)
		{
			.slideshow{
				display: none;
			}
			.logindetails{
				width: 384px;
			}
			.box:before{
				display: none;
			}
		}
	</style>
	<script>
		var slideIndex = 1;
		showDivs(slideIndex);

		function plusDivs(n) {
		  showDivs(slideIndex += n);
		}

		function showDivs(n) {
		  var i;
		  var x = document.getElementsByClassName("myimg");
		  if (n > x.length) {slideIndex = 1}
		  if (n < 1) {slideIndex = x.length}
		  for (i = 0; i < x.length; i++) {
		  	console.log(x[i]);
		    x[i].style.display = "none";  
		  }
		  console.log(slideIndex);
		  x[slideIndex-1].style.display = "block";  
		}
</script>
    <script type="text/javascript">
//		$(document).ready(function(){
//		  $(".sub").click(function(){
//                      if(".box input[type=text]")
//		  });
//		});

	</script> 
</head>
<body>
   <div class="main">
   	 <div class="main-tag"><img src="logo.png"></div>
   	 <div class="logindetails">
   	 <div class="slideshow">
   	 	<img src="one.jpg" class="myimg" style="display: block;">
   	 	<img src="two.png" class="myimg">
   	 	<img src="three.png" class="myimg">
   	 	<div class="arrow" onclick="plusDivs(-1)"><i class="fa fa-arrow-left"></i></div>
   	 	<div class="arrow1" onclick="plusDivs(1)"><i class="fa fa-arrow-right"></i></div>
   	 	
   	 </div>
   	 <form class="box" action="loginservlet" method="post">
   	 	<h1>Login</h1>
   	 	<input type="text" name="id" placeholder="User ID">
   	 	<input type="Password" name="pwd" placeholder="Password">
   	 	<input type="submit" value="Login" class="sub">
   	 	<a href="">Forgot Password</a>
                
   	 </form>
   	</div>
   </div>
</body>
</html>