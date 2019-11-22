<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/header.jsp" %>
<style>
	div.wrap{
		margin: 30px auto;
		overflow: hidden;
	}
	div.wrap > div{
		float: left;
	}
	a.add{
		display: block;
		text-align: center;
		color:#7C7877;
		text-decoration: none;
		font-size: 20px;
		font-weight: bold;
		float: right;
	}
	a.add:hover {
		text-decoration: underline;
		color:#ABD0CE;
	}
	table{
		margin: 0 auto;
		width: 100%;
	}
	table, th, td{
		border: 1px solid #ABD0CE;
		border-collapse: collapse;
	}
	th, td{
		padding:10px;
		color:#7C7877;
		text-align: center;
	}
	a.name{
		color:#7C7877;
		text-decoration: none;
	}
	a.name:hover{
		color:#ABD0CE;
		text-decoration: underline;
		font-weight: bold;
	}
</style>
	<div class = "wrap">
		<div>
			<label>시작 날짜 </label>
			<input type = "date" id = "sbStart"> ~ 
			<label>종료 날짜 </label>
			<input type = "date" id = "sbEnd">
			<button id = "btnSearch">검색</button>
			<button id = "btnAll">전체보기</button>
		</div>
		<a href = "${pageContext.request.contextPath }/sbP/add.do" class = "add">프로젝트 추가하기</a>
	</div>
	
	<table>
		<tr>
			<th>프로젝트 이름</th>
			<th>시작 날짜</th>
			<th>종료 날짜</th>
			<th>진행 상태</th>
		</tr>
		<c:forEach var = "s" items = "${list }">
			<tr>
				<td><a href = "${pageContext.request.contextPath }/sbP/view.do?sbNo=${s.sbNo}" class = "name">${s.sbName }</a></td>
				<td>
					<fmt:formatDate value="${s.sbStart }" pattern="yyyy-MM-dd"/>
				</td>
				<td>
					<fmt:formatDate value="${s.sbEnd }" pattern="yyyy-MM-dd"/>
				</td>
				<td>
					<c:if test="${s.sbState == 1 }">
						준비
					</c:if>
					<c:if test="${s.sbState == 2 }">
						진행중
					</c:if>
					<c:if test="${s.sbState == 3 }">
						종료
					</c:if>
					<c:if test="${s.sbState == 4 }">
						보류
					</c:if>
				</td>
			</tr>
		</c:forEach>
	</table>
	<script>
		$("#btnSearch").click(function(){
			var sbStart = $("#sbStart").val();
			var sbEnd = $("#sbEnd").val();
			
			location.href = "list.do?sbStart="+sbStart+"&sbEnd="+sbEnd;
		})
		$("#btnAll").click(function(){
			location.href = "list.do";
		})
	</script>	
<%@ include file = "../include/footer.jsp" %>