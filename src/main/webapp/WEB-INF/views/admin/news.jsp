<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Begin page content -->
<div class="container">
	<br>
    <div class="form-group">
      <label>유튜브 영상</label>
      <select name="NumSelect" class="form-control">
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
<script type = "text/javascript">
$(document).ready(function(){
	
	init();
	
    function init(){
    	$.ajax({
			type: "GET"
				,url : 'https://www.googleapis.com/youtube/v3/playlistItems?part=contentDetails&maxResults=50&part=snippet&part=contentDetails&playlistId=PLAnlfQnlOg13LZ3yxmDJf8snCGXiCzJkK&key=AIzaSyCwhAyUGjM0fIV6Ms9cAHd8K2nV59cjz7c'
				,async: false
				,dataType: "json"
		        ,success: function(sonData){
		    		 for (var Number = 0; Number < sonData.items.length; Number++) {
		    			 $("select[name='NumSelect']").append("<option value='"+sonData.items[Number].contentDetails.videoId+"'>"+sonData.items[Number].snippet.title+"</option>");
		    		 }
		        },
		        error: function(xhr, status, error) {
		            alert("에러 발생 관리자에게 문의");
		        } 
			});
    }
	
});
</script>