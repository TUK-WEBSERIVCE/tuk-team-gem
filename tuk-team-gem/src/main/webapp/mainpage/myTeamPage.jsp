<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 팀</title>
<style>
        body {  
            font-family: Arial, sans-serif;
            margin: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            overflow-x: hidden;
        }

        header {  
            width: 100%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
            background-color: #333333;
            color: white;
        }
        
        .page-title {  
            font-size: 2em; 
            font-weight: bold;
            margin-left: 30px;
            display: flex;
        }
        
        .container {  
			width: 80%;
        	margin: 20px auto;
        	margin-top: 10px;
            max-width: 1000px;
            padding: 20px;
            text-align: center; /* 전체 내용 가운데 정렬 */
        } 
        
        a {  
        	color: inherit; 
        	text-decoration: none;
        }

        header a {  
            color: white;
            text-decoration: none;
        }
        
 		.main-title {
			font-weight: bold;
			font-size: 1.5em;
			color: #333333;
			text-align: left;
		}
		
		.divider {  
    		color: white;
    		margin-left: 10px;
    		margin-right: 10px;
		}
		
		nav {  
            width: 100%;
            background-color: #007bff;            
            color: white;
            padding: 10px 0;
            position: fixed;
            bottom: 0;
        }
        nav ul {  
            list-style-type: none;
            display: flex;
            justify-content: space-around;
            margin: 0;
            padding: 0;
        } 
</style>
</head>
<body>
	<header>
		<div class="page-title"><div class="" style="color: #0082CC;">TUK&nbsp;</div>Team Gem</div>
		<div class="account-container">
	        <a href="#">로그인</a>
	        <span class="divider">|</span>
	        <a href="#" style="margin-right: 30px;">회원가입</a>
        </div>
    </header>

    <div class="container">
    	<div class="main-title">프로젝트 이름</div>
    	<hr>
    	
    </div>
    
        <!-- 하단 네비게이션 바 -->
    <nav>
        <ul>
            <li><a href="#">&nbsp;&nbsp;&nbsp;내 팀&nbsp;&nbsp;&nbsp;</a></li>
            <li><a href="#">홈</a></li>
            <li><a href="#">지원 현황</a></li>
        </ul>
    </nav>
</body>
</html>