<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/header.jsp" %>
<style>
	div#btnBox{
		margin: 30px auto;
		overflow: hidden;
	}
	div#btnBox button{
		float: left;
		margin-left: 10px;
		padding: 5px 10px;
		background-color: #ABD0CE;
		border:none;
		cursor: pointer;
		color:#7C7877;
	}
	table{
		margin: 0 auto;
		width: 100%;
	}
	table, th, td{
		border: 1px solid #ABD0CE;
		border-collapse: collapse;
	}
	th{
		font-size: 17px;
	}
	td{
		font-size: 14px;
	}
	th, td{
		padding:10px;
		color:#7C7877;
		text-align: center;
	}
</style>
	<div id="btnBox">
		<button class = "list">목록보기</button>
		<button class = "update">수정</button>
		<button class = "delete">삭제</button>
	</div>
	<input type = "hidden" id = "sbNo" value = "${sb.sbNo }">
	<table>
		<tr>
			<th>프로젝트 이름</th>
			<td>${sb.sbName }</td>
		</tr>
		<tr>
			<th>프로젝트 내용</th>
			<td>${sb.sbContent }</td>
		</tr>
		<tr>
			<th>시작 날짜</th>
			<td>
				<fmt:formatDate value="${sb.sbStart }" pattern="yyyy-MM-dd"/>
			</td>
		</tr>
		<tr>
			<th>종료 날짜</th>
			<td>
				<fmt:formatDate value="${sb.sbEnd }" pattern="yyyy-MM-dd"/>
			</td>
		</tr>
		<tr>
			<th>진행 상태</th>
			<td>
				<c:if test = "${sb.sbState == 1 }">
					준비
				</c:if>
				<c:if test = "${sb.sbState == 2 }">
					진행중
				</c:if>
				<c:if test = "${sb.sbState == 3 }">
					종료
				</c:if>
				<c:if test = "${sb.sbState == 4 }">
					보류
				</c:if>
			</td>
		</tr>
	</table>
	<script>
		var sbNo = $("#sbNo").val();
			$(".list").click(function(){
				location.href = "list.do";
			})
			
			
			$(".update").click(function(){
				location.href = "update.do?sbNo="+sbNo;
			})
			$(".delete").click(function(){
				var del = confirm("삭제하시겠습니까?");
				if(del == true){
					location.href = "delete.do?sbNo="+sbNo;
				}else{
					return false;
				}
				
			})
	</script>
<%@ include file = "../include/footer.jsp" %>