<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>User</title>

<link href="admin/css/bootstrap.min.css" rel="stylesheet">
<link href="admin/css/datepicker3.css" rel="stylesheet">
<link href="admin/css/bootstrap-table.css" rel="stylesheet">
<link href="admin/css/styles.css" rel="stylesheet">
<link href="admin/css/table.css" rel="stylesheet">
<link href="admin/css/font-awesome.min.css" rel="stylesheet">


<!--Icons-->
<script src="admin/js/lumino.glyphs.js"></script>

 <!-- library -->
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
      <!-- CSS -->
      <!-- <link href="lib/css/compiled.min.css" rel="stylesheet"> -->
      <!-- <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script> -->
      <!-- Bootstrap core CSS -->
      <!-- <link href="css/bootstrap.min.css" rel="stylesheet"> -->
      <!-- Material Design Bootstrap -->
      <link href="admin/lib/css/mdb.min.css" rel="stylesheet">
      <!-- Your custom styles (optional) -->
      <link href="admin/lib/css/style.css" rel="stylesheet">
      
      <!-- JQuery -->
      <script type="text/javascript" src="admin/lib/js/jquery-3.1.1.min.js"></script>
      <!-- Bootstrap tooltips -->
      <script type="text/javascript" src="admin/lib/js/tether.min.js"></script>
      <!-- MDB core JavaScript -->
      <script type="text/javascript" src="admin/lib/js/mdb.min.js"></script>
 <!--/libary -->
<style type="text/css">
	.btn-primary {
		background:#22c8bb;
	}
	.btn-primary:hover {
		background-color: #24f2e3 !important;
	}
</style>
</head>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<ul class="user-menu">
					<li class="dropdown pull-right">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg> User <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="/FPT/admin/login/login.jsp"><svg class="glyph stroked gear"><use xlink:href="#stroked-gear"></use></svg>Login</a></li>
							<li><a href="/FPT/admin/login/login.jsp"><svg class="glyph stroked cancel"><use xlink:href="#stroked-cancel"></use></svg> Logout</a></li>
						</ul>
					</li>
				</ul>
			</div>
							
		</div><!-- /.container-fluid -->
	</nav>
		
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<ul class="nav menu" style="padding-top:30px;font-size:20px;font-family:myFirstFont">
			<li><a href="/"><svg class="glyph stroked dashboard-dial"><use xlink:href="#stroked-dashboard-dial"></use></svg>Trang chủ</a></li>
			<li class="active"><a href="/FPT/list-user.do"><svg class="glyph stroked calendar"><use xlink:href="#stroked-calendar"></use></svg>User</a></li>
			<li><a href="/FPT/list-categories.do"><svg class="glyph stroked pencil"><use xlink:href="#stroked-pencil"></use></svg>Category</a></li>
			<li><a href="/FPT/list-menu.do"><svg class="glyph stroked line-graph"><use xlink:href="#stroked-line-graph"></use></svg>Menu</a></li>
			<li><a href="/FPT/list-subject.do"><svg class="glyph stroked table"><use xlink:href="#stroked-table"></use></svg>Subject</a></li>
			<li><a href="/FPT/list-problem.do"><svg class="glyph stroked app-window"><use xlink:href="#stroked-app-window"></use></svg>Problem</a></li>
			<li><a href="/FPT/list-editorial.do"><svg class="glyph stroked star"><use xlink:href="#stroked-star"></use></svg>Editorial</a></li>
			<li><a href="/FPT/list-tutorial.do"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg>Tutorial</a></li>
			<li><a href="/FPT/list-testcase.do"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg>Testcase</a></li>
			<li><a href="/FPT/list-tutorialcode.do"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg>TutorialCode</a></li>
			<li><a href="/FPT/list-submit.do"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg>Submit</a></li>
			<li><a href="/FPT/list-code.do"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg>Code</a></li>
			<li><a href="/FPT/list-status.do"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg>Status</a></li>
			<li><a href="/FPT/list-leaderboard.do"><svg class="glyph stroked male-user"><use xlink:href="#stroked-male-user"></use></svg>Leaderboad</a></li>
		</ul>
	</div><!--/.sidebar-->
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">User</h1>
			</div>
		</div><!--/.row-->
				
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading"><a href="prepare-add-user.do"><input type="submit" class="btn" name="them" value="Add User" /></a></div>
					<div class="panel-body">
						<table data-toggle="table" data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-pagination="true" data-sort-name="name" data-sort-order="desc">
						    <thead>
						    <tr>
						    	<th data-field="id" data-sortable="true">ID</th>
						        <th data-field="username"  data-sortable="true">username</th>
								<th data-field="avatar" data-sortable="true">avatar</th>
								<th data-field="university" data-sortable="true">university</th>
								<th data-field="point" data-sortable="true">point</th>
								<th data-field="typeUser" data-sortable="true">typeUser</th>
								<th data-field="process" data-sortable="true" class="chucnang">function</th>
								<th data-field="process1" data-sortable="true" class="chucnang">function</th>
						    </tr>
							
						    </thead>
							<tbody>
								<logic:iterate id="user1" name="userForm" property="userList">
									<tr>
										<td><jsp:getProperty name="user1" property="userId"/></td>
										<td><bean:write name="user1" property="username"/></td>
										<td><bean:write name="user1" property="avatar"/></td>
										<td><bean:write name="user1" property="university"/></td>
										<td><jsp:getProperty name="user1" property="point"/></td>
										<td><jsp:getProperty name="user1" property="typeId"/></td>
										
										<bean:define id="idUser" name="user1" property="userId"></bean:define>
										<td>
											<html:link action="/prepare-update-user?userId=${idUser}"  styleClass = "btn btn-primary">Edit</html:link>
										</td>
										
										<td>
											<div>
												<button type="button" class="btn btn-danger" id="myBtn${idUser}">Delete</button>
												<div class="modal fade" id="myModal${idUser}" role="dialog">
													<div class="modal-dialog">

														<!-- Modal content-->
														<div class="modal-content">
															<div class="modal-header">
																<h4 class="modal-title">DELETE</h4>
															</div>
															<div class="modal-body">
																<p>Bạn có chắc muốn xóa không?</p>
															</div>
															<div class="modal-footer">
																<html:link action="/delete-user.do?userId=${idUser}"
																	styleClass="btn btn-danger">OK</html:link>
																<button type="button" class="btn btn-default"
																	data-dismiss="modal">Cancel</button>
															</div>
														</div>

													</div>
												</div>
												<bean:define id="users" value="#myModal${idUser}"></bean:define>
												<script>
													$(document).ready(function(){
													    $("#myBtn${idUser}").click(function(){
													        $("${users}").modal();
													    });
													});
												</script>

											</div>
										</td>
										
										
									</tr>
								</logic:iterate>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div><!--/.row-->	
	
	</div><!--/.main-->

	<script src="admin/js/jquery-1.11.1.min.js"></script>
	<script src="admin/js/bootstrap.min.js"></script>
	<script src="admin/js/chart.min.js"></script>
	<script src="admin/js/chart-data.js"></script>
	<script src="admin/js/easypiechart.js"></script>
	<script src="admin/js/easypiechart-data.js"></script>
	<script src="admin/js/bootstrap-datepicker.js"></script>
	<script src="admin/js/bootstrap-table.js"></script>
	<script>
		!function ($) {
			$(document).on("click","ul.nav li.parent > a > span.icon", function(){		  
				$(this).find('em:first').toggleClass("glyphicon-minus");	  
			}); 
			$(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function () {
		  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function () {
		  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
		})
	</script>	
</body>

</html>
