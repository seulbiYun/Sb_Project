<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/header.jsp" %>
<style>
	fieldset{
		padding : 20px;
		border: 1px solid #ABD0CE;
		color: #7C7877;
		width: 100%;
		margin: 50px auto; 
	}
	fieldset p{
		margin: 20px 0;
	}
	fieldset > p:last-child{
		margin-left: 150px;
	}
	fieldset p:last-child input{
		padding: 5px 10px;
		background-color: #ABD0CE;
		border:none;
		cursor: pointer;
		color:#7C7877;
	} 
	fieldset p label{
		width: 150px;
		display: inline-block;
	}
</style>
	<form action = "update.do" method = "post">
		<fieldset>
			<legend>프로젝트 수정</legend>
			<input type = "hidden" id = "sbNo" value = "${sb.sbNo }" name ="sbNo">
			<p>
				<label>프로젝트 이름</label>
				<input type = "text" name = "sbName" value = "${sb.sbName }">
			</p>
			<p>
				<label>프로젝트 내용</label>
				<textarea rows="10" cols="60" name = "sbContent">${sb.sbContent }</textarea>
			</p>
			<p>
				<label>시작 날짜</label>
				<input type = "date" name = "sbStart">
			</p>
			<p>
				<label>종료 날짜</label>
				<input type = "date" name = "sbEnd">
			</p>
			<p>
				<label>진행 상태</label>
				<select name = "sbState">
					<c:if test = "${sb.sbState == 1 }">
						<option value="1" selected="selected">준비</option>
						<option value="2">진행중</option>
						<option value="3">종료</option>
						<option value="4">보류</option>
					</c:if>
					<c:if test = "${sb.sbState == 2 }">
						<option value="1">준비</option>
						<option value="2" selected="selected">진행중</option>
						<option value="3">종료</option>
						<option value="4">보류</option>
					</c:if>
					<c:if test = "${sb.sbState == 3 }">
						<option value="1">준비</option>
						<option value="2">진행중</option>
						<option value="3" selected="selected">종료</option>
						<option value="4">보류</option>
					</c:if>
					<c:if test = "${sb.sbState == 4 }">
						<option value="1">준비</option>
						<option value="2">진행중</option>
						<option value="3">종료</option>
						<option value="4" selected="selected">보류</option>
					</c:if>
				</select>
			</p>
			<p>
				<input type = "submit" value = "수정">
				<input type = "button" id = "back" value = "취소">
			</p>
		</fieldset>
	</form>
	<script>
		var sbNo = $("#sbNo").val();
		$("#back").click(function(){
			location.href = "view.do?sbNo="+sbNo;
		})
	</script>
<%@ include file = "../include/footer.jsp" %>