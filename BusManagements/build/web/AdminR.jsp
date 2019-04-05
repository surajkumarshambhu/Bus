<%@page import="javaclass.Routes"%>
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
        a{
            cursor:pointer;
        }
        i{
            cursor: pointer;
        }
    .searchadd{
    	    float: left;
	    background-color: #151515;
	    box-sizing: border-box;
	    padding: 10px;
	    margin: 20px;
	    width: 45%;
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
        .imp{
            position: relative;
            top:50px;
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
	.searchadd input[type=text]{
        margin: 20px;
        padding: 10px;
        width: 92%;
        box-sizing: border-box;
	}
	.searchadd i{
                color:white;
		position: relative;
		left: 50%;
	}
	.searchadd a{
		cursor: pointer;
	    padding: 10px;
	    border: 1px solid #252525;
	    background-color: #252525;
	    margin: 0px 8px 0px 0px;
	}
	.searchadda{
		margin: 10px;
	    text-align: center;
	    width: 100%;
	}
	.searchadd a:active{
		top: 4px;
		position: relative;
	}
	.rdata{
            overflow-y: scroll;
	    width: 45%;
            height: 164px;
	    float: left;
	    clear: both;
	    margin: 0px 20px 20px 20px;
	    padding: 10px;
	    box-sizing: border-box;
	    background-color: #151515;
	}
	.rdata-table{
	      border-collapse: collapse;
              width: 100%;
	}
	.rdata-table th {
	    background-color: #252525;
	    color: #a99e9e;
	    padding: 10px;
	    text-align: center;
	}
	.rdata-table td {
	    /*background-color: #151515;*/
	    color: #a99e9e;
	    padding: 10px;
	    text-align: center;
	}
	.rdata-table tr:nth-child(even){background-color: #252525;}
	.rdata-table i:active{
	 	cursor: pointer;
		position: relative;
		top: 4px;
	}
	.addRoutes{
	    background-color: #151515;
	    margin: 20px;
	    width: 45%;
	    padding: 45px;
	    box-sizing: border-box;
	    position: absolute;
	    right: 0px;
	    text-align: center;
	}
	.addRoutes h1{
	    line-height: 0;
	    color: white;
	    text-align: center;
	    padding: 10px;
	}
	.addRoutes input[type=text]{
            width: 80%;
            color:white;
	    padding: 9px;
	    margin: 9px;
	    background-color: rgba(0, 0, 0, 0.25);
	    border: 1px solid rgba(0, 0, 0, 0.25);
	}
	.sub{
	    background-color: rgba(0, 0, 0, 0.25);
	    border: 1px solid rgba(0, 0, 0, 0.25);
	    padding: 10px;
	    color: #80756c;
	    margin: 10px;
	    width: 21%;
	}
	#cross{
        display: none;
        position: absolute;
        top: 20px;
        right: 25px;
      }
    .togg{
     	display: none;
        clear: both;
	    margin: 20px;
	    position: relative;
	    text-align: center;
	    background-color: rgba(0, 0, 0, 0.25);
	    border: 1px solid rgba(0, 0, 0, 0.25);
	    padding: 10px;
	    color: #80756c;
	    margin: 20px;
     }
     @media only screen and (max-width: 757px){
     	.togg{
     		display: block;
     	}
        .imp{
            top:0px;
        }
     	.searchadd{
     		width: 94%;
     	}
     	.rdata{
     		width: 94%;
     	}
     	.addRoutes{
     		display: none;
     		width: 90%;
     	}
     }
      @media only screen and (max-width: 480px){
     	.searchadd{
     		width: 90%;
     	}
     	.rdata{
                overflow-y: scroll;
     		width: 90%;
     	}
        .togg{
     		width:84%;
     	}
     }
     .rdata::-webkit-scrollbar {
       width: 3px;
       background: #252525;
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
</style>
<script>
    $(document).ready(function(){

        $("#exchange").on('click',function(){
            var pickup = $('#two').val();
            $('#two').val($('#one').val());
            $('#one').val(pickup);


        });

    });
</script>
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
        $(".togg").click(function(){
            $(".addRoutes").show(1000);
            $(".searchadd").hide(1000);
            $(".rdata").hide(1000);
            $(".togg").hide(1000);
            $("#cross").show(1000);
        });
         $("#cross").click(function(){
            $(".addRoutes").hide(1000);
            $(".searchadd").show(1000);
            $(".rdata").show(1000);
            $(".togg").show(1000);
            $("#cross").hide(1000);
        });
    });
</script>
<script>
    function myFunction(){
        var input,filter,table,tr,td,i,textValue;
        input = document.getElementById("one");
        console.log(input);
        filter = input.value.toLowerCase();
        table = document.getElementById("data");
        tr = table.getElementsByTagName("tr");
        
        for(i = 0;i<tr.length;i++){
            td = tr[i].getElementsByTagName("td")[1];
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
    function myFunction1(){
        var input,filter,table,tr,td,i,textValue;
        input = document.getElementById("two");
        filter = input.value.toLowerCase();
        table = document.getElementById("data");
        tr = table.getElementsByTagName("tr");
        
        for(i = 0;i<tr.length;i++){
            td = tr[i].getElementsByTagName("td")[2];
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

  <div class="imp">
  	 <div class="searchadd">
  	 	<input type="text" id="one" onkeyup="myFunction()" name="one"><i id = "exchange" class="fas fa-exchange-alt"></i>
  	 	<input type="text" id="two" onkeyup="myFunction1()" name="two">
  	 	<div class="searchadda"><a>Search</a></div>
  	 </div>
  	 <div class="addRoutes">
        <form action="addroutes" method="post">
            <h1>Add Routes</h1>
            <i class="fa fa-times" id="cross"></i>
            <input type="text" name="id" placeholder="Route ID">
            <input type="text" name="from" placeholder="From">
            <input type="text" name="to" placeholder="To">
            <input type="text" name="bus" placeholder="Bus No." >
            <input type="submit" value="Submit" class="sub">
     	</form>
  	 </div>
  	 <div class="rdata">
  	 	<table class="rdata-table" id="data">
  	 		<tr>
  	 			<th>RouteId</th>
  	 			<th>From</th>
  	 			<th>To</th>
  	 			<th>BusNo</th>
  	 			<th>Edit</th>
  	 		</tr>
                        <%
                        App m = new App();
                        List l = m.fetch_routes();
                        Routes obj = new Routes();
                        Iterator it = l.iterator();
                        while(it.hasNext()){
                            obj = (Routes)it.next();
                      %>
                      <tbody class="fg">
  	 		<tr>
  	 			<td><% out.println(obj.getRouteid());%></td>
  	 			<td><% out.println(obj.getFromd());%></td>
  	 			<td><% out.println(obj.getTod());%></td>
  	 			<td><% out.println(obj.getBusno());%></td>
  	 			<td><i class="fa fa-edit"></i></td>
  	 		</tr>
                      </tbody>
  	 		<%}%>
  	 	</table>
  	 </div>
  </div>
  <div class="togg">Add Routes</div>
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
