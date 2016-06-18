<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加歌手</title>
    
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script charset="utf-8" src="js/common/jquery-1.11.1.js">	
	</script>
	
	<style type="text/css">		
		/* 整体框架css  */
		.all{
			width: 100%;
			height: 860px;
		}
		/* 标题css  */
		.title{
			width: 100%;
			height: 40px;
		}
		.title h2{
			width:90%;
			height: 40px;
			float: left;
			text-align:center;
		}
		
		/* content css  */
		.content{
			width:90%;
			float: left;
			margin-left: 30px;
		}
		.content table {
			margin: 0px auto;
		}
		/*表格的每一行*/
		.content table tr{
			height: 50px;			
		}
		.content table td {		
			min-width: 150px;
			max-width: 720px;
		}
		.content table input[type='text'] {
			width: 200px;
		}
		.content table input[type='radio'] {
			position: relative;
			top: 8px;
		}
		.content .submit{
			cursor: pointer;
			border:none;
			border-radius:3px;
			background-color: #eb6120;
			color: white;
			height: 28px;
		}
		.redBt {
			text-decoration:none;
			color:#fff;
			height:30px;
			padding: 6px 12px;
			border-radius:3px;
			background-color:#EB6120;
		}
		.redBt:hover {
			background-color:#FE7600;
		}
		
		/*提示文字样式*/
		.span{
			font-family: "微软雅黑";
			font-size: 12px;
			color: red;
		}
		.content input, .content select, .content option {
			font-size: 13px;
			height: 30px;
		}
		.content select {
			width: 100px;
		}
		.content otpion {
			width: 80px;
			height: 25px;
			padding-top: 5px;
		}
		.content textarea {
			font-size: 13px;
		}
	</style>

  </head>
  
  <body>
   	<div class="all">
   		<div class="title">
   			<h2>添加歌手</h2>
   		</div>   		
   		<div class="content">
   			<form action="sys/addSinger.action" method="post" enctype="multipart/form-data">
   				<table class="addAlbumTable">
   					<tr>
   						<td >歌手名：</td> <td><input type="text" name="name" maxlength="25" required="required" /></td>
   					</tr>
   					<tr>
   						<td >歌手名字首字母：</td> <td><input type="text" name="abbr" maxlength="1" required="required" /></td>
   					</tr>
   					<tr>
   						<td >组合：</td> 
   						<td>
   							<input type="radio" name="type" value="2">是
   							<input type="radio" name="type" value="1" checked="checked">否
   						</td>
   					</tr>
   					<tr>
   						<td >歌手性别：</td> 
   						<td>
   							<input type="radio" name="sex" value="1" checked="checked">男
   							<input type="radio" name="sex" value="0">女
   						</td>
   					</tr>
   					<tr>
   						<td >歌手类别：</td> 
   						<td>
   							<c:forEach items="${singerTypeList}" var="type" varStatus="status">
   								<input type="radio" name="category" value="${type.value}" 
   									<c:if test="${status.index==0}">checked='checked'</c:if>>${type.name}	
   							</c:forEach>   							
   						</td>
   					</tr>  						    					    			    		   					    				
   					<tr>
   						<td >上传小图片：</td> <td><input type="file" name="small" placeholder="130*130尺寸" required="required" /></td>
   					</tr>
   					<tr>
   						<td >上传大图片：</td> <td><input type="file" name="big" placeholder="640*300尺寸" required="required" /></td>
   					</tr>
   					<tr>
   						<td>歌手介绍：</td>
   						<td>&nbsp;</td>     						
   					</tr>
   					<tr>
   						<td colspan="2">
   						<textarea name="description" cols="80" rows="13" maxlength="1000"></textarea>
   						</td>
   					</tr>
   					<tr>
   						<td colspan="2">
   							<input class="submit redBt" type="submit" value="确认添加" />
   							<input class="submit redBt" type="reset" value="重置" />
   						</td>
   					</tr>
   				</table>
   			</form>
   			
   		</div>
   	</div>
  </body>
</html>