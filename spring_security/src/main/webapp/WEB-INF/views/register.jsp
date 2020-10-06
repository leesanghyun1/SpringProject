<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 - Voler Admin Dashboard</title>
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/bootstrap.css"/>">
    <link rel="shortcut icon" href="<c:url value="/resources/assets/images/favicon.svg"/>" type="image/x-icon">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/app.css"/>">
</head>

<body>
    <div id="auth">
        
<div class="container">
    <div class="row">
        <div class="col-md-7 col-sm-12 mx-auto">
            <div class="card pt-4">
                <div class="card-body">
                    <div class="text-center mb-5">
                         <img src="<c:url value="/resources/assets/images/favicon.svg"/>" height="48" class='mb-4'>
                        <h3>회원가입</h3>
                        <p>Please fill the form to register.</p>
                    </div>
                    <form action="register_ac.do" method="post">
                        <div class="row">
                            <div class="col-md-6 col-12">
                                <div class="form-group">
                                    <label for="first-name-column">아이디</label>
                                    <input type="text" id="first-name-column" class="form-control"  name="id">
                                </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <div class="form-group">
                                    <label for="username-column">비밀번호</label>
                                    <input type="text" id="username-column" class="form-control" name="password">
                                </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <div class="form-group">
                                    <label for="country-floating">이름</label>
                                    <input type="text" id="country-floating" class="form-control" name="name">
                                </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <div class="form-group">
                                    <label for="email-id-column">이메일</label>
                                    <input type="email" id="email-id-column" class="form-control" name="email">
                                </div>
                            </div>
                        </diV>
                                <a href="loginForm.do">로그인</a>
                        <div class="clearfix">
                            <button class="btn btn-primary float-right">완료</button>
                        </div>
                    </form>
                    <div class="divider">
                        <div class="divider-text">OR</div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <button class="btn btn-block mb-2 btn-primary"><i data-feather="facebook"></i> Facebook</button>
                        </div>
                        <div class="col-sm-6">
                            <button class="btn btn-block mb-2 btn-secondary"><i data-feather="github"></i> Github</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

    </div>
    <script src="<c:url value="/resources/assets/js/feather-icons/feather.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/js/app.js"/>"></script>
    
    <script src="<c:url value="/resources/assets/js/main.js"/>"></script>
</body>

</html>
