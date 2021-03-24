<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Begin page content -->
<div class="container">
	<br>
    <div class="form-group">
      <label>유튜브 영상</label>
      <select id="NumSelect" class="form-control">
        <option value="0">신규</option>
      </select>
    </div>
    <div class="form-group">
   		<div class="form-group">
	      <label>주보 ID</label>
	      <input type="text" id="NoticeTitle" class="form-control">
      	</div>
    </div>
    <button type="submit" class="btn btn-primary" id="save">수정 또는 등록</button>
</div>