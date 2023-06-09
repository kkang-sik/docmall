<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
  <h5 class="my-0 mr-md-auto font-weight-normal">DocMall</h5>
  <c:if test="${sessionScope.loginStatus != null }">
  <span>${sessionScope.loginStatus.mbsp_name} 님</span> /
  <span>포인트 : ${sessionScope.loginStatus.mbsp_point} </span> /
  <span>최근접속 : 
  	<fmt:formatDate value="${sessionScope.loginStatus.mbsp_lastlogin}" pattern="yyyy-MM-dd HH:mm"/>
   </span>
  </c:if>
  <nav class="my-2 my-md-0 mr-md-3">
    <!-- 로그인 이전 표시 -->
    <c:if test="${sessionScope.loginStatus == null }">
    <a class="p-2 text-dark" href="/member/login">Login</a>
    <a class="p-2 text-dark" href="/member/join">Join</a>
    </c:if>
    <!--  로그인 이후 표시 -->
    <c:if test="${sessionScope.loginStatus != null }">
    <a class="p-2 text-dark" href="/member/logout">Logout</a>
    <a class="p-2 text-dark" href="/member/modify">Modify</a>
     </c:if>
    
    <a class="p-2 text-dark" href="/member/mypage">Mypage</a>
    <a class="p-2 text-dark" href="#">Order</a>
    <a class="p-2 text-dark" href="/cart/cart_list">Cart</a>
  </nav>
</div>