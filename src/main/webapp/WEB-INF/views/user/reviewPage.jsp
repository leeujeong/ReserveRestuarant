<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<c:url value="/resources/css/userCSS/detail.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/js/userJS/detail.js"/>" rel="stylesheet">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.css" integrity="sha512-4wfcoXlib1Aq0mUtsLLM74SZtmB73VHTafZAvxIp/Wk9u1PpIsrfmTvK0+yKetghCL8SHlZbMyEcV8Z21v42UQ==" crossorigin="anonymous" referrerpolicy="no-referrer"/>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.css" integrity="sha512-4wfcoXlib1Aq0mUtsLLM74SZtmB73VHTafZAvxIp/Wk9u1PpIsrfmTvK0+yKetghCL8SHlZbMyEcV8Z21v42UQ==" crossorigin="anonymous" referrerpolicy="no-referrer"/>
	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<link href="<c:url value="/resources/css/index.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/css/owner.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/css/userCSS/detail.css"/>" rel="stylesheet">
	<script src="<c:url value="/resources/js/index.js"/>"></script>
	<script src="<c:url value="/resources/js/userJS/detail.js"/>"></script>
 <script>
 $(document).ready(function() {
	    fnhover();
	    fnQuickMenu();
	});

	function fnQuickMenu() {
	    var currentPosition = parseInt($(".quickmenu").css("top"));
	    $(window).scroll(function() {
	        var position = $(window).scrollTop();
	        $(".quickmenu").stop().animate({ "top": position + currentPosition + "px" }, 1000);
	    });
	}

	function fnhover() {
	    (function($) {
	        $('.cate ul').hide();
	        $('.cate .menu .subopen').click(function() {
	            if ($(this).hasClass('active')) {
	                $(this).parent().next().slideUp('slow');
	                $(this).removeClass('active');
	            } else {
	                $('.accordion').find('.active').parent().next().slideUp('slow');
	                $('.accordion').find('.active').removeClass('active');
	                $(this).parent().next().slideDown('slow');
	                $(this).addClass('active');
	            }
	        });
	    })(jQuery);
	}
	
 </script>
 
 <style>
 a{
 	color: black;
 	text-decoration:none;
 }
 </style>
</head>
<body>

	
	  <header>
        <div class="wrap">
            <h1 style="padding-top: 0">
                <a href="/restaurant/" >
                    <img  src="/restaurant/resources/image/index/projectlogo.png">
                </a>
                
            </h1>
            <ul id="gnb">
            
            		<li><a href="/restaurant/user/search"><i class="fas fa-search fa-lg"></i></a></li>
            
            	<c:if test="${loginUser == null}">
	                <li><a href="/restaurant/user/loginPage">LOGIN&nbsp;&nbsp;&nbsp;/</a></li>
	                <li><a href="/restaurant/user/join">JOIN&nbsp;&nbsp;&nbsp;</a></li>
            	</c:if>
            	
            	<!-- 사용자 state =1 -->
            	<c:if test="${loginUser.state == 1}">
            			<li>${loginUser.id} 님 환영합니다</li>
            		  <li><a href="/restaurant/user/logout">LOGOUT&nbsp;&nbsp;&nbsp;/</a></li>
            		  <li><a href="/restaurant/user/myPage">MYPAGE&nbsp;&nbsp;&nbsp;</a></li>
            	</c:if>
            	
            	<!-- 관리자 state 2 -->
            	<c:if test="${loginUser.state == 2}">
            		  <li>${loginUser.id} 님 환영합니다&nbsp;&nbsp;&nbsp;/</li>
            		  <li><a href="/restaurant/admin/adminPage">ADMIN PAGE</a></li>
            	</c:if>
            	
            	<!-- 사업자는 어떻게? -->
              <c:if test="${loginUser.state == 3}">
            		  <li>${loginUser.id} 님 환영합니다&nbsp;&nbsp;&nbsp;/</li>
            		  <li><a href="/restaurant/owner/logout">LOGOUT&nbsp;&nbsp;&nbsp;/</a></li>
            		  <li><a href="/restaurant/owner/managePage">OWNER PAGE</a></li>
            	</c:if>
                
                
            </ul>
        </div>
    </header>
    
    <div class="accordion">
        <div class="cate quickmenu">
            <span class="menu">
                <a href="#" class="menulink">Reservation</a>
                <a href="javascript:void(0);" class="subopen"></a>
            </span>
            <ul>
                <li><a href="/restaurant/user/search"> 식당 검색  </a></li>
                <li><a href="식당검색페이지"> 할인 되는 식당</a></li>
                <li><a href="/restaurant/user/reserve"> 신규 오픈 </a></li>
            </ul>
        </div>
        <div class="cate quickmenu">
            <span class="menu"> 
                <a href="#" class="menulink">Board</a>
                <a href="javascript:void(0);" class="subopen"></a>
            </span>
            <ul>
                <li><a href="공지사항"> 공지사항 </a></li>
                <li><a href="리뷰"> 리뷰 </a></li>
                <li><a href="리뷰"> Q&A </a></li>
            </ul>
        </div>
        <div class="cate quickmenu">
            <span class="menu">
                <a href="#" class="menulink">Magazines</a>
                <a href="javascript:void(0);" class="subopen"></a>
            </span>
            <ul>
                <li><a href="/restaurant/user/detail">다이닝 매거진</a></li>
            </ul>
        </div>
    </div>
       
        <div class="container">
		  <div class="row">
		    <div class="col-4">
		     <image src="/restaurant/resources/image/index/rest1.jpg" class="main_image"></image>
			    <h3>${resName}</h3>
	            <p>★4.5</p><button id="reviewbtn">리뷰 보기 >></button>
	            <input type="button" onclick="location.href='/restaurant/user/reviewPage'" value="리뷰작성하기">
	            <span>(45)</span>
	            <p>09 : 00 ~ 18 : 00</p>
	            <p>010-0000-0000</p>
		    </div>
		    <div class="col-6">
			   <form  action="#" method="post">
			  	<textarea class="form-control" rows="5" placeholder="리뷰 입력창"></textarea>
			  <!-- 평점 선택창 -->
			  <label for="rating">평점: </label>
			  <select id="rating">
			      <options value="별점"/>
			  </select>
			  <button class="btn btn-block btn-primary" type="submit">리뷰 등록</button>
			</form>
		    </div>
		  </div>
		</div>
        
        <div class="rest_detail">
           
            
         
        </div>
  
	
		 

    
    <section id="bottom">
        <div class="wrap">
            <div class="footer">
                <div class="footer_inner">
                    <ul class="footer_link">
                        <li><a href="#" target="_blank" class="footer_item">이용약관&nbsp;|</a></li>
                        <li><a href="#" target="_blank" class="footer_item">개인정보처리방침&nbsp;|</a></li>
                        <li><a href="#" target="_blank" class="footer_item">책임의 한계와 법적고지&nbsp;|</a></li>
                        <li><a href="#" target="_blank" class="footer_item">회원정보 고객센터</a></li>
                    </ul>
                    <div class="footer_copy">
                        <a href="#" target="_blank">
                            <img src="/restaurant/resources/image/index/projectlogo.png" alt="logo">
                        </a>
                        <span class="text">Copyright</span>
                        <span class="corp" style="font-weight: 800;">&copy; FindTable Corp.</span>
                        <span class="text">All Rights Reserved.</span>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
	
</body>
</html>