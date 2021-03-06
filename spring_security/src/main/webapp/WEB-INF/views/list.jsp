<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Table - Voler Admin Dashboard</title>
    
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/bootstrap.css"/>">
    
	<link rel="stylesheet" href="<c:url value="/resources/assets/vendors/simple-datatables/style.css"/>">

    <link rel="stylesheet" href="<c:url value="/resources/assets/vendors/perfect-scrollbar/perfect-scrollbar.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/app.css"/>">
    <link rel="shortcut icon" href="<c:url value="/resources/assets/images/favicon.svg"/>" type="image/x-icon">
</head>
<body>
    <div id="app">
        <div id="sidebar" class='active'>
            <div class="sidebar-wrapper active">
    <div class="sidebar-header">
        <img src="<c:url value="/resources/assets/images/logo.svg"/>" alt="" srcset="">
    </div>
    <div class="sidebar-menu">
         <ul class="menu">
            
            
                <li class='sidebar-title'>Main Menu</li>
            
                <li class="sidebar-item active ">
                    <a href="home.do" class='sidebar-link'>
                        <i data-feather="home" width="20"></i> 
                        <span>홈</span>
                    </a>
                    
                </li>


            
                <li class="sidebar-item  ">
                    <a href="list.do" class='sidebar-link'>
                        <i data-feather="grid" width="20"></i> 
                        <span>게시판</span>
                    </a>
                    
                </li>

            
            
            
                <li class="sidebar-item  ">
                    <a href="table-datatable.do" class='sidebar-link'>
                        <i data-feather="file-plus" width="20"></i> 
                        <span>Datatable</span>
                    </a>
                    
                </li>

                <li class='sidebar-title'>Pages</li>
            
            
            
                <li class="sidebar-item  has-sub">
                    <a href="#" class='sidebar-link'>
                        <i data-feather="user" width="20"></i> 
                        <span>Authentication</span>
                    </a>
                    
                    <ul class="submenu ">
                        
                        <li>
                            <a href="auth-login.html">Login</a>
                        </li>
                        
                        <li>
                            <a href="auth-register.html">Register</a>
                        </li>
                        
                        <li>
                            <a href="auth-forgot-password.html">Forgot Password</a>
                        </li>
                        
                    </ul>
                    
                </li>
           
                <li class="sidebar-item  has-sub">
                    <a href="#" class='sidebar-link'>
                        <i data-feather="alert-circle" width="20"></i> 
                        <span>Errors</span>
                    </a>
                    
                    <ul class="submenu ">
                        
                        <li>
                            <a href="error-403.html">403</a>
                        </li>
                        
                        <li>
                            <a href="error-404.html">404</a>
                        </li>
                        
                        <li>
                            <a href="error-500.html">500</a>
                        </li>
                        
                    </ul>
                    
                </li>

            
            
         
        </ul>
    </div>
    <button class="sidebar-toggler btn x"><i data-feather="x"></i></button>
</div>
        </div>
        <div id="main">
            <nav class="navbar navbar-header navbar-expand navbar-light">
                <a class="sidebar-toggler" href="#"><span class="navbar-toggler-icon"></span></a>
                <button class="btn navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav d-flex align-items-center navbar-light ml-auto">
                        <li class="dropdown nav-icon">
                            <a href="#" data-toggle="dropdown" class="nav-link  dropdown-toggle nav-link-lg nav-link-user">
                                <div class="d-lg-inline-block">
                                    <i data-feather="bell"></i>
                                </div>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right dropdown-menu-large">
                                <h6 class='py-2 px-4'>Notifications</h6>
                                <ul class="list-group rounded-none">
                                    <li class="list-group-item border-0 align-items-start">
                                        <div class="avatar bg-success mr-3">
                                            <span class="avatar-content"><i data-feather="shopping-cart"></i></span>
                                        </div>
                                        <div>
                                            <h6 class='text-bold'>New Order</h6>
                                            <p class='text-xs'>
                                                An order made by Ahmad Saugi for product Samsung Galaxy S69
                                            </p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="dropdown nav-icon mr-2">
                            <a href="#" data-toggle="dropdown" class="nav-link  dropdown-toggle nav-link-lg nav-link-user">
                                <div class="d-lg-inline-block">
                                    <i data-feather="mail"></i>
                                </div>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="#"><i data-feather="user"></i> Account</a>
                                <a class="dropdown-item active" href="#"><i data-feather="mail"></i> Messages</a>
                                <a class="dropdown-item" href="#"><i data-feather="settings"></i> Settings</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#"><i data-feather="log-out"></i> Logout</a>
                            </div>
                        </li>
                        <li class="dropdown">
                            <a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg nav-link-user">
                                <div class="avatar mr-1">
                                    <img src="assets/images/avatar/avatar-s-1.png" alt="" srcset="">
                                </div>
                                <div class="d-none d-md-block d-lg-inline-block">Hi, Saugi</div>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="#"><i data-feather="user"></i> Account</a>
                                <a class="dropdown-item active" href="#"><i data-feather="mail"></i> Messages</a>
                                <a class="dropdown-item" href="#"><i data-feather="settings"></i> Settings</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#"><i data-feather="log-out"></i> Logout</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
            
<div class="main-content container-fluid">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>게시판</h3>
                <p class="text-subtitle text-muted">서로의 의견을 공유하는 게시판 입니다.</p>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class='breadcrumb-header'>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">MAUN MENU</a></li>
                        <li class="breadcrumb-item active" aria-current="page">게시판</li>
                    </ol>
                </nav>
            </div>
        </div>

    </div>

<!-- Table head options start -->
<div class="row" id="table-head">
  <div class="col-12">
    <div class="card">
      <div class="card-header">
        <h4 class="card-title">게시판</h4>
      </div>
      <div class="card-content">
        <div class="card-body">
          <p>게시판 테이블 입니다.</p>
        </div>
        <!-- table head dark -->
        <div class="table-responsive">
          <table class="table mb-0">
            <thead class="thead-dark">
              <tr>
                <th>번호</th>
                <th>작성자</th>
                <th>제목</th>
                <th>날짜</th>
                <th>조회수</th>
              </tr>
            </thead>
            <tbody>
            <c:forEach items="${list}" var="dto">
	              <tr>
	                <td class="text-bold-500" width="200">${dto.bId}</td>
	                <td width="300">${dto.bName}</td>
	                <td class="text-bold-500" width="1000">
	                	<c:forEach begin="1" end="${dto.bIndent}">-</c:forEach>
	               	 	<a href="content_view?bId=${dto.bId}">${dto.bTitle}</a>
	                </td>
	                <td width="200">${dto.bDate}</td>
	                <td width="200">${dto.bHit}</td>
	              </tr>
             </c:forEach>
             <tr>
			<td colspan="5"> <a href="write_view.do">글작성</a> </td>
			</tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Table head options end -->

</div>

            <footer>
                <div class="footer clearfix mb-0 text-muted">
                    <div class="float-left">
                        <p>2020 &copy; Voler</p>
                    </div>
                    <div class="float-right">
                        <p>Crafted with <span class='text-danger'><i data-feather="heart"></i></span> by <a href="http://ahmadsaugi.com">Ahmad Saugi</a></p>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src=" <c:url value="/resources/assets/js/feather-icons/feather.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/js/app.js"/>"></script>
    
	<script src="<c:url value="/resources/assets/vendors/simple-datatables/simple-datatables.js"/>"></script>
	<script src="<c:url value="/resources/assets/js/vendors.js"/>"></script>

    <script src=" <c:url value="/resources/assets/js/main.js"/>"></script>
</body>
</html>
