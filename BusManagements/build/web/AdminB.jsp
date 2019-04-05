<%@page import="javaclass.Bus"%>
<%@page import="hibernate.App"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
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
        .box{
            position: absolute;
            top:50%;
            left:50%;
            transform: translate(-50%,-50%);
            width: 100%;
        }
	.addfaculties{
            position: absolute;
            right: 0px;
            background-color: #151515;
	    width: 45%; 
            height: 417px;
	    margin: 20px;
	    text-align: center;
	    padding: 28px;
	    box-sizing: border-box;
	}
        .data::-webkit-scrollbar {
            width: 3px;
            background: #252525;
         }
	.data{
                overflow-y: scroll;
                height: 314px;
		box-sizing: border-box;
		padding: 10px;
		clear: both;
		float: left;
		background-color: #151515;
                width: 45%; 
                margin: 6px 20px 20px 20px;
	}
	.Faculties{
		float: left;
		background-color: #151515;
	    width: 45%; 
	    margin: 20px;
	}
	.Faculties input[type=search]{
	    padding: 10px;
	    float: left;
	    border-right: none;
	    width: 30%;
	    border: 1px solid transparent;
	    width: 50%;
        margin: 20px 0px 20px 20px;
	}
	.Faculties span{
		border: 1px solid #232323;
	    color: black;
	    padding: 9px;
	    background-color: #232323;
	    border-left: none;
	    margin: 20px 20px 20px 0px;
	    float: left;
	    cursor: pointer;
	}
	.del{
		padding: 10px;
	    border: 1px solid #252525;
	    background-color: #252525;
	    color: white;
	    top: 31px;
	    position: relative;
	    left: 8px;
	    transition: .5s;
	    cursor: pointer;
	}
	.del:active{
		top: 28px;
	}
        .data-table i:active{
            position: relative;
            top: 5px;
        }
	.data-table th{
		background-color: #252525;
		color: #a99e9e;
		padding: 10px;
		text-align: center;
	}
	.data-table td{
		color: #a99e9e;
		padding: 10px;
		text-align: center;
	}
	.data-table{
		border-collapse: collapse;
		width: 100%;
	}
	.data-table tr:nth-child(even){background-color: #252525}
    .box{
			
		}
	.box h1{
		line-height: 0;
		color: white;
		text-align: center;
		padding: 10px;
	}
	.box input[type="text"],input[type="password"],input[type="time"]{
             color:white;
	     width: 80%;
	     padding: 9px;
	     margin: 9px;
	     background-color: rgba(0, 0, 0, 0.25);
             border: 1px solid rgba(0, 0, 0, 0.25);
        }
       
        .box input[type="radio"]{
            
        }
        
	#cross{
		  font-size: 20px;
		  color: white;
	      padding: 9px;
   	     box-sizing: border-box;
		}
	.sub{
	    background-color: rgba(0, 0, 0, 0.25);
	    border: 1px solid rgba(0, 0, 0, 0.25);
	    padding: 10px;
	    color: #80756c;
	    margin: 10px;
	    width: 21%;
	}
	.footer{
            width: 100%;
            height: 10px;
            background-color: #151515;
            padding: 20px;
            box-sizing: border-box;
            clear: both;
            position: absolute;
            bottom: 0px;
         }
         .footer div{
            text-align: center;
            position: relative;
            top: -7px;
         }
         .box span{
            color: white;
            font-size: 15px;
            padding: 10px
         }
	.imp{
		position: relative;
		top: 20px;
	}
        .tog{   
                display: none;
                clear: both;
                top: 20px;
                position: relative;
                text-align: center;
                background-color: rgba(0, 0, 0, 0.25);
                border: 1px solid rgba(0, 0, 0, 0.25);
                padding: 10px;
                color: #80756c;
                margin: 10px;
        }
	@media only screen and (max-width: 799px) {
		 .Faculties{
		 	width: 97%;
                        margin: 10px;
		 }
		 .data{
		 	width: 97%;
                        margin: 10px;
		 }
                 .addfaculties{
                     display:none;
                     width:94%;
                     margin: 10px;
                 }
                 .tog{
                     top: 3px;
                     display:block;
                 }
                 .imp{
                     top: 0px;
                 }
      }
      @media only screen and (max-width: 360px) {
          .data{
              overflow-y: scroll;
              height: 294px;
          }
          .Faculties{
		 	width: 94%;
                        margin: 10px;
		 }
		 .data{
		 	width: 94%;
                        margin: 10px;
		 }
                 .addfaculties{
                     display:none;
                     width:94%;
                     margin: 13px;
                 }
                 .tog{
                     top:13px;
                     display:block;
                 }
      }
      #cross{
            display: none;
            position: absolute;
            top: 20px;
            right: 25px;
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
<script>
    $(document).ready(function(){
        $(".tog").click(function(){
            $(".addfaculties").show(1000);
            $(".Faculties").hide(1000);
            $(".data").hide(1000);
            $(".tog").hide(1000);
            $("#cross").show(2000);
        });
         $("#cross").click(function(){
            $(".addfaculties").hide(1000);
            $(".Faculties").show(1000);
            $(".data").show(1000);
            $(".tog").show(1000);
            $("#cross").hide(2000);
        });
    });
    
     function myFunction1(){
        var input,filter,table,tr,td,i,textValue;
        input = document.getElementById("one");
        filter = input.value.toLowerCase();
        table = document.getElementById("data");
        tr = table.getElementsByTagName("tr");
        
        for(i = 0;i<tr.length;i++){
            td = tr[i].getElementsByTagName("td")[0];
            if(td){
                   textValue = td.textContent || td.innerText;
                    if (textValue.toLowerCase().indexOf(filter) > -1) {
                      tr[i].style.display = "";
                    } else {
                      tr[i].style.display = "none";
                    }
                
            }
        }
    }
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
	  <a href="AdminF.jsp"><i class="fa fa-user"></i>&nbsp;<span class = "hiding">Add Faculties</span></a>
          <a href="AdminS.jsp"><i class="fa fa-users"></i>&nbsp;<span class = "hiding">Add Students</span></a>
  	   <br><a href="#"><i class="fa fa-edit"></i>&nbsp;<span class = "hiding">Edit Profile</span></a>
	  <a href="#"><i class="fas fa-sign-out-alt"></i>&nbsp;<span class = "hiding">Logout</span></a>
  </div>
</div>

<div id="main">
  <div class="nav">
	<span class="open">&#9776; <span class="red">B</span><span class="r">US</span> <span class="red">M</span><span class="r">ANAGEMENT</span></span>
  </div>
<div class="imp">
  <div class="Faculties">
  	  <div class="search">
  	  	<input type="search" name="search" id="one" onkeyup="myFunction1()">
  	  	<span><i class="fa fa-search"></i></span>
  	  	<a class="del">Delete</a>
  	  </div>
  </div>
  <div class="data">
  	  <table class="data-table">
  	  	  <tr>
  	  	  	<th>Bus ID</th>
  	  	  	<th>Faculty ID</th>
                        <th>Time</th>
                        <th>Status</th>
                        <th>Edit</th>
  	  	  </tr>
                  <tbody id="data">
                      <%
                        App m = new App();
                        List l = m.fetch_buses();
                        Bus obj = new Bus();
                        Iterator it = l.iterator();
                        while(it.hasNext()){
                            obj = (Bus)it.next();
                      %>
  	  	  <tr>
  	  	  	 <td><% out.println(obj.getBusid());%></td>
  	  	  	 <td><% out.println(obj.getFacultyid());%></td>
                         <td><% out.println(obj.getTime());%></td>
                         <td><% out.println(obj.getStatus());%></td>
                         <td><i class="fa fa-edit"></i></td>
  	  	  </tr>
                  <%}%>
                  </tbody>
  	  </table>
  </div>
  <div class="addfaculties">
        <i class="fa fa-times" id="cross"></i>
  	<form class="box" action="addbuses" method="post">
            <h1>Add Buses</h1>
            <i class="fa fa-times" id="cross"></i>
            <input type="text" name="id" placeholder="Bus Id">
            <input type="text" name="f" placeholder="Faculty Id"><br>
            <span>Status</span><input type="radio" name="s" Valur="ON"><span>On</span>
            <input type="radio" name="s" Valur="CANCEL"><span>Cancel</span>
            <input type="time" name="time" placeholder="Faculty Id">
            <input type="submit" value="Submit" class="sub">
   	</form>
  </div>
    <div class="tog"><a>Add Buses<a/></div>
</div>
  <div class="footer">
      <div >
  	  <span>Catch Us On : </span>
  	  <i class="fab fa-google"></i>
  	  <i class="fab fa-facebook"></i>
  	  <i class="fab fa-twitter-square"></i>
  	  <i class="fab fa-instagram"></i>
      </div>
  </div>
</div>
</body>
</html> 
