<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>销售管理</title>
<link href="${pageContext.request.contextPath}/styles/layout.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/styles/wysiwyg.css" rel="stylesheet" type="text/css" />
<!-- Theme Start -->
<link href="${pageContext.request.contextPath}/themes/blue/styles.css" rel="stylesheet" type="text/css" />
<!-- Theme End -->
</head>
<body id="homepage">
	<div id="header">
    	<a href="${pageContext.request.contextPath}/index" title=""><img src="${pageContext.request.contextPath}/img/cp_logo.png" alt="四川铁航客户关系管理系统logo" class="logo" /></a>
    	<jsp:include flush="true" page="/include/clock.jsp" />
    </div>
    
    <!-- Top Breadcrumb Start -->
    <div id="breadcrumb">
    	<ul>	
        	<li><img src="${pageContext.request.contextPath}/img/icons/icon_breadcrumb.png" alt="Location" /></li>
        	<li><strong>销售管理:</strong></li>
			<li><a href="${pageContext.request.contextPath}/listproductforsell" title="">查看产品信息</a></li>
            <li>/</li>
            <li class="current">查看产品信息</li>
        </ul>
    </div>
    <!-- Top Breadcrumb End -->
     
    <!-- Right Side/Main Content Start -->
    <div id="rightside">
    
    	<!-- Alternative Content Box End -->
    	<div class="contentcontainer">
    		<div class="headings alt">
    			<h2>产品信息</h2>
            </div>
            <div class="contentbox">
            	<form action="#">
            		<table align="center">
            			<tr>
                            <td>
                            	<label for="textfield"><strong>产&nbsp;&nbsp;品&nbsp;&nbsp;编&nbsp;&nbsp;号:</strong></label>
                            </td>
                            <td>
                            	<s:label id="id" name="product.productId" />                     
                            </td>
                        </tr>
                        <tr>
                        	<td>
                        		<label for="textfield"> <strong>产&nbsp;&nbsp;品&nbsp;&nbsp;名&nbsp;&nbsp;称:</strong></label>
                            </td>
                            <td>
                            	<s:label id="name" name="product.productName" />                       
                            </td>
                        </tr>
                        <tr>
                        	<td>
                        		<label for="textfield"> <strong>产&nbsp;&nbsp;品&nbsp;&nbsp;类&nbsp;&nbsp;别:</strong></label>
                            </td>
                            <td>
                            	<s:label id="productcategory" name="product.productcategory.categoryName" />
                            </td>
                        </tr>
                        <tr>
                        	<td>
                        		<label for="textfield"> <strong>录&nbsp;&nbsp;入&nbsp;&nbsp;时&nbsp;&nbsp;间:</strong></label>
                            </td>
                            <td>
                            	<s:label for="textfield">                        
                            		<s:date name="product.productTime" format="yyyy-MM-dd" />
                            	</s:label>
                            </td>
                        </tr>
                        <tr>
                        	<td>
                        		<label for="textfield"> <strong>产&nbsp;&nbsp;品&nbsp;&nbsp;描&nbsp;&nbsp;述:</strong></label>
                            </td>
                            <td>
                            	<s:textarea cssClass="text-input textarea" name="product.productDesc" rows="10" cols="50"   readonly="true"   ></s:textarea>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <input type="button" value="返回" class="btnalt" onclick="{window.location.href='<s:url action="listproductforsell"></s:url>';}" />                            
                            </td>
                        </tr>
                    </table>      
                </form>         
            </div>
        </div>
        <div style="clear:both;"></div>
        <div id="footer">&copy; Copyright 2013 R7-2X开发小组</div>           
    </div>
    <!-- Right Side/Main Content End -->
    
    <!-- Left Dark Bar Start -->
    <div id="leftside">
        <jsp:include flush="true" page="../include/user.jsp" />
        <div class="notifications">
        	<s:form id="showwarnform" action="listsellswarn" method="post">
	            <s:hidden id="flag" name="flag" value="false" />
	        	<p class="notifycount"><a href="javascript:void(0)" onclick="{document.showwarnform.submit();}" title="" class="notifypop">New</a></p>
	            <p><a href="javascript:void(0)" onclick="{document.showwarnform.submit();}" title="" class="notifypop">销售提醒</a></p>
	            <p class="smltxt">(点击查看过期销售提醒)</p>
            </s:form>
        </div>
        
        <ul id="nav">
            <li>
                <ul class="navigation">
                    <li><a href="${pageContext.request.contextPath}/listenterpriseforsell" title="">查看客户信息</a></li>
                    <li><a href="${pageContext.request.contextPath}/listcustomer" title="">客户联系人管理</a></li>
                    <li><a href="${pageContext.request.contextPath}/listcontactplan" title="">客户联系计划管理</a></li>
                    <li ><a href="${pageContext.request.contextPath}/listcontactnote" title="">客户联系记录管理</a></li>
                    <li><a href="${pageContext.request.contextPath}/listsellsopportunity" title="">销售机会管理</a></li>
                    <li><a href="${pageContext.request.contextPath}/listsellswarn" title="">销售提醒管理</a></li>
                    <li class="heading selected" onclick="go('${pageContext.request.contextPath}/listproductforsell');">查看产品信息</li>
                </ul>
            </li>
        </ul>
    </div>
    <!-- Left Dark Bar End --> 
    
    <script type="text/javascript" src="${pageContext.request.contextPath}/scripts/javascript-function.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/scripts/enhance.js"></script>    
    <script type='text/javascript' src='${pageContext.request.contextPath}/scripts/excanvas.js'></script>
    <script type='text/javascript' src='${pageContext.request.contextPath}/scripts/jquery.min.js'></script>
    <script type='text/javascript' src='${pageContext.request.contextPath}/scripts/jquery-ui.min.js'></script>
    <script type='text/javascript' src='${pageContext.request.contextPath}/scripts/jquery.wysiwyg.js'></script>
    <script type='text/javascript' src='${pageContext.request.contextPath}/scripts/visualize.jQuery.js'></script>
    <script type="text/javascript" src='${pageContext.request.contextPath}/scripts/functions.js'></script>
    <script type="text/javascript" src='${pageContext.request.contextPath}/scripts/javascript-function.js'></script>
    
    <!--[if IE 6]>
    <script type='text/javascript' src='../scripts/png_fix.js'></script>
    <script type='text/javascript'>
      DD_belatedPNG.fix('img, .notifycount, .selected');
    </script>
    <![endif]--> 
</body>
</html>