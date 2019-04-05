<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
<style>
	body {
		margin:0;
		padding: 0;
	    background-color: #252525;
	   	font-family: monospace;
	}

	.sidenav {
	  height: 91.3vh;
	  width: 0;
	  position: fixed;
	  z-index: 1;
	  top: 0;
	  left: 0;
	  background-color: #111;
	  overflow-x: hidden;
	  transition: 0.5s;
	  padding-top: 60px;
	}

	.mySidenav-links a {
	  box-shadow: 0px 2px 6px 0px black;
	  padding: 8px 8px 8px 17px;
	  text-decoration: none;
	  font-size: 21px;
	  color: #818181;
	  display: block;
	}
    .mySidenav-links a:active{
      color: red;
    }
	.sidenav{
	  position: absolute;
	  top: 0;
	  height: 100%;
	  right: 25px;
	  font-size: 36px;
	  overflow:none;
	}
	.closebtn{
		cursor: pointer;
		position: absolute;
	    top: 14px;
	    right: 24px;
	    color: white;
	    transition: .2s;
	}
	.closebtn:hover{
		transform: rotate(45deg);
	}
	.red{
		color: red;
		font-family: monospace;
	}
	.r{
		color: white;
		font-family: monospace;
	}
	.nav {
	  background-color: #151515;
	  box-shadow: 1px 1px 6px 0px black;
	  padding: 14px;
	}

	@media screen and (max-height: 450px) {
	  .sidenav {padding-top: 15px;}
	  .sidenav a {font-size: 18px;}
	}
	.open{
		font-size:30px;
		cursor:pointer;
		color: white;
	}
	.profile-img{
        left: 50%;
        top: 20%;
	    transform: translate(-50%,-50%);
	    position: absolute;
	}
	.profile-img img{
	    width: 130px;
	    border-radius: 50%;
	    object-fit: cover;
	    height: 130px;
	}
	.profile-name{
		font-size: 20px;
		font-family: monospace;
		color: white;
		left: 47%;
		top:32%;
		text-align: center;
		padding: 5px;
	    transform: translate(-50%,-50%);
	    position: absolute;
	}
	.profile-name1{
		font-size: 20px;
	    font-family: monospace;
	    color: white;
	    left: 47%;
	    top: 36%;
	    text-align: center;
	    padding: 5px;
	    transform: translate(-50%,-50%);
	    position: absolute;
	}
	.mySidenav-links{
		position: absolute;
	    top: 63%;
	    overflow: none;
	    left: 50%;
	    transform: translate(-50%,-50%);
	    width: 100%;
	}
	#main{
		transition: 1s ease;
	}
	.bus{
		background-color: #151515;
	    width: 100%;
	    box-sizing: border-box;
	}

	.footer{
            color: white;
            position: fixed;
            bottom: 0;
            width: 100%;
            background-color: #151515;
	    box-shadow: -2px -3px 6px 0px black;
	    padding: 14px;
	}
	.footer i{
		font-stretch: 25px;
		padding: 4px;
	}
	.footer span{
		font-size: 20px;
		margin: 10px;
	}
</style>
<script>
$(document).ready(function(){
	  $(".open").click(function(){
	  	if(screen.width>414){
            
	    	$("#mySidenav").css("width","250px");
           }
        else{
           $("#mySidenav").css("width","100%");
        }
	    $("#main").css("opacity",".2");
	  });
	   $(".closebtn").click(function(){
	    $("#mySidenav").css({"width":"0px"});
	    $("#main").css("opacity","1");
	  });
	});
</script>
</head>
<body>

<div id="mySidenav" class="sidenav">
  <i class="closebtn">&times;</i>
  <div class="profile">
  	<div class="profile-img">
  		<img src="suraj.jpg">
  	</div>
  	<span class="profile-name">Suraj Kumar</span>
  	<span class="profile-name1">(<%out.println(session.getAttribute("UserID"));%>)</span>
  	<span class="">
  </div>
  <div class="mySidenav-links">
	  <a href="AdminD.jsp"><i class="fa fa-home"></i>&nbsp;<span class = "hiding">Dash Board</span></a>
	  <a href="AdminB.jsp"><i class="fa fa-bus"></i>&nbsp;<span class = "hiding">Manage Buses</span></a>
	  <a href="AdminR.jsp"><i class="fa fa-route"></i>&nbsp;<span class = "hiding">Manage Routes</span></a>
	  <a href="AdminF.jsp"><i class="fa fa-users"></i>&nbsp;<span class = "hiding">Add Faculties</span></a>
          <a href="AdminS.jsp"><i class="fa fa-users"></i>&nbsp;<span class = "hiding">Add Students</span></a>
  	   <br><a href="#"><i class="fa fa-edit"></i>&nbsp;<span class = "hiding">Edit Profile</span></a>
	  <a href="#"><i class="fas fa-sign-out-alt"></i>&nbsp;<span class = "hiding">Logout</span></a>
  </div>
</div>

 <div id="main">
  <div class="nav">
	<span class="open">&#9776; <span class="red">B</span><span class="r">US</span> <span class="red">M</span><span class="r">ANAGEMENT</span></span>
  </div>
  <div class="footer">
  	<div  style="text-align: center;">
  	  <span>Catch Us On : </span>
  	  <i class="fab fa-google"></i>
  	  <i class="fab fa-facebook"></i>
  	  <i class="fab fa-twitter-square"></i>
  	  <i class="fab fa-instagram"></i>
  	 </div>
  </div>
</body>
</html> 
