<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Todo</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700,300,600">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" type="text/css" href="/../resources/css/todo.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  
    .aDiv{
    	align-content: 
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
    .row.content {height: 1500px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;} 
    }
  </style>
</head>
<body>

<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav">
      <h4>Beomgu TODO</h4>
      <div class="aDiv" align="right"><button type="button" id="addBtn">+</button></div>
      <form role="form" id="inputForm" method="post">
      	<input type="text" class="hidden" id="addCate" name="cname" />
      </form>
      <button type="button" class="hidden" id="conBtn">추가</button>
      <ul class="category" id="category">
        <li class="active"><a href="#section1">전체</a></li>
      </ul><br>
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search Blog..">
        <span class="input-group-btn">
          <button class="btn btn-default" type="button">
            <span class="glyphicon glyphicon-search"></span>
          </button>
        </span>
      </div>
    </div>
   
   <div class="col-sm-9">
	<div class="cont_principal">
		<div class="cont_centrar">
		
		  <div class="cont_todo_list_top">
		  <div class="cont_titulo_cont">
		    <h3>THINGS TO DO</h3>
		    </div>
		<div class="cont_add_titulo_cont">
			<a href="#e" onclick="add_new()"><i class="material-icons">&#xE145;</i></a>
		</div>
		 
		<!--   End cont_todo_list_top  -->  </div>
		<div class="cont_crear_new">
		  <table class="table">
		<tr>
		  <th>Action</th>
		  <th>Title</th>
		  <th>Date</th>
		</tr>
		    <tr>
		    <td>
		    <select name="cateSelect" id="action_select">
		    	
		    </select>
		<!-- End td 1 -->
		      </td>
		       <td>
		<input type="text" class="input_title_desc" id="title"/>      
		
		         <!-- End td 2 -->
		      </td>
		    <td>
		<select name="" class="input_description_title"  id="date_select">
		 <option value="TODAY">TODAY</option>
		 <option value="TOMORROW">TOMORROW</option>       
		</select>
		
		      <!-- End td 3 -->
		      </td>
		    </tr>
		<tr>
		   <th class="titl_description" id="content" >Description</th>
		    </tr>
		<tr>
		
		  <td colspan="3">
		  <input type="text" class="input_description" required />
		  </td>
		    </tr>
		    <tr>
		    <td colspan="3">
		  <button class="btn_add_fin"  id="todoAdd" onclick="add_to_list()">ADD</button>
		  </td>
		    </tr>
		  </table>
		  <!--   End cont_crear_new  --> 
		  </div>
		  
		  
		<div class="cont_princ_lists">
		<ul>
		  <li class="list_shopping li_num_0_1">
		  <div class="col_md_1_list">
		    <p>SHOPPIGN</p>
		    </div>
		<div class="col_md_2_list">
		    <h4>BUY COFFEE BEANS</h4>
		<p>DODIDONE COFFEE STORE</p>
		    </div>
		    <div class="col_md_3_list">
		<div class="cont_text_date">
		<p>TODAY</p>      
		      </div>    
		<div class="cont_btns_options">
		  <ul>
		 
		    <li><a href="#" onclick="finish_action('0','0_1');"><i class="material-icons">&#xE5CA;</i></a></li>
		  </ul>    
		      </div>
		    </div>
		  </li>
		<!-- <li class="list_work"></li>
		  <li class="list_sport"></li>
		  <li class="list_music"></li>
		 -->  </ul>
		<!--   End cont_todo_list_top  -->   </div>
		  
		  
		  <!--   End cont_central  -->
		  </div>
		</div>
	</div>
  </div>
</div>

<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous">
</script>

<script>
	var contador = 0
	,   select_opt = 0;
	
	function add_to_list(){
	var action = document.querySelector('#action_select').value,
	description = document.querySelector('.input_description').value, 
	title = document.querySelector('.input_title_desc').value,
	date = document.getElementById('date_select').value;
	 
	
	switch (action) {
	  case "SHOPPING":
	 select_opt  = 0;
	    break;
	case "WORK":
	select_opt = 1; 
	    break;
	case "SPORT":
	 select_opt = 2;
	    break;
	case "MUSIC":
	select_opt = 3; 
	    break;
	}  
	  
	var class_li  =['list_shopping list_dsp_none','list_work list_dsp_none','list_sport list_dsp_none','list_music list_dsp_none'];  
	
	var cont = '<div class="col_md_1_list">    <p>'+action+'</p>    </div> <div class="col_md_2_list"> <h4>'+title+'</h4> <p>'+description+'</p> </div>    <div class="col_md_3_list"> <div class="cont_text_date"> <p>'+date+'</p>  </div>  <div class="cont_btns_options">    <ul>  <li><a href="#finish" onclick="finish_action('+select_opt+','+contador+');" ><i class="material-icons">&#xE5CA;</i></a></li>   </ul>  </div>    </div>';  
	 
	var li = document.createElement('li')  
	li.className = class_li[select_opt]+" li_num_"+contador;
	
	li.innerHTML = cont;
	document.querySelectorAll('.cont_princ_lists > ul')[0].appendChild(li);
	
	setTimeout(function(){  document.querySelector('.li_num_'+contador).style.display = "block";
	},100);
	  
	setTimeout(function(){
	  document.querySelector('.li_num_'+contador).className = "list_dsp_true "+class_li[select_opt]+" li_num_"+contador;
	contador++;
	},200);
	
	}
	
	function finish_action(num,num2) {
	 
	var class_li  =['list_shopping list_dsp_true','list_work  list_dsp_true','list_sport list_dsp_true','list_music list_dsp_true'];   
	console.log('.li_num_'+num2);
	 document.querySelector('.li_num_'+num2).className = class_li[num]+" list_finish_state"; 
	setTimeout(function(){
	           del_finish();
	           },500);
	}
	
	function del_finish(){
	var li = document.querySelectorAll('.list_finish_state');
	    for(var e = 0; e < li.length; e++){
	/* li[e].style.left = "-100px"; */    
	li[e].style.opacity = "0";
	li[e].style.height = "0px";      
	li[e].style.margin = "0px";      
	    }
	
	  setTimeout(function(){
	var li = document.querySelectorAll('.list_finish_state');
	    for(var e = 0; e < li.length; e++){
	  li[e].parentNode.removeChild(li[e]); 
	    }
	  },500);
	  
	  
	}
	var t = 0;
	function add_new(){  
		if(t % 2 == 0){  
		 document.querySelector('.cont_crear_new').className = "cont_crear_new cont_crear_new_active";
		
		  document.querySelector('.cont_add_titulo_cont').className = "cont_add_titulo_cont cont_add_titulo_cont_active";
		  t++;
		}else {  document.querySelector('.cont_crear_new').className = "cont_crear_new";
		document.querySelector('.cont_add_titulo_cont').className = "cont_add_titulo_cont";  
		  t++;
		} 
	}

	$("#addBtn").on("click", function(){
		$("#addCate").toggleClass();
		$("#conBtn").toggleClass();
		
	});
	
	$("#conBtn").on("click", function(){
		
		$.ajax({
			url:"/todo/category",
			type:"post",
			data:{cname : $('#addCate').val(), mno: 1}
		}).done(function(data){
			console.log("성공:"+data);
			$("#addCate").val("");
			
			getCategory(); // 이녀석이 실행되면서 for문이 계속 <li>를 만듦
		});
		
	});
	
	function getCategory(){
		$.ajax({
			url:"/todo/category",
			data:"mno=1",
            dataType:"json"
		}).done(function(list){
			console.log(list);
			
			var cStr = "";
			for(var i = 0 ; i < list.length; i++){
				console.log("i : "+list[i]);
				var cateName = list[i].cname;
				cStr += '<li><a href="#'+ cateName + '">'+ cateName +'</a></li>';
			}
			
			$('#category').html(cStr);

		});
	}
	
	function getCateName(){
		$.ajax({
			url:"/todo/category",
			data:"mno=1",
            dataType:"json"
		}).done (function(data) {
			var cSelect = "";
			var firstData = data;
			for(var i = 0 ; i < data.length; i++){
				var cName = data[i].cname;
				cSelect += '<option value="#'+ cName + '">'+ cName +'</option>';
			}
			
			$('#action_select').append(cSelect);
		})
		
	}
	
	
	$('#todoAdd').on('click', function(){
		$.ajax({
			url:"/todo/createTodo",
			data:"cno=1",
			dataType:"json"
		}).done(function(data){
			console.log("data="+data);
			
		})
	});
	
	getCategory();
	getCateName();
</script>
</body>
</html>