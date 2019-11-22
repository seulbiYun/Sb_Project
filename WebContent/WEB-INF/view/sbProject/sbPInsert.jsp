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
	<form action = "add.do" method = "post">
		<fieldset>
			<legend>프로젝트 등록</legend>
			<p>
				<label>프로젝트 이름</label>
				<input type = "text" name = "sbName">
			</p>
			<p>
				<label>프로젝트 내용</label>
				<textarea rows="10" cols="60" name = "sbContent"></textarea>
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
					<option value="1">준비</option>
					<option value="2">진행중</option>
					<option value="3">종료</option>
					<option value="4">보류</option>
				</select>
			</p>
			<p>
				<input type = "submit" value = "등록">
				<input type = "button" value = "취소" class = "back">
			</p>
		</fieldset>
	</form>
	<script>
		$(".back").click(function(){
			location.href = "list.do";
		})
	</script>
<%@ include file = "../include/footer.jsp" %>