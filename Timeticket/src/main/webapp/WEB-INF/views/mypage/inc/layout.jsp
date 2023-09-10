<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="/resources/css/common.css" type="text/css" rel="stylesheet" />
<link href="/resources/css/layout.css" type="text/css" rel="stylesheet" />
<link href="/resources/css/swiper-bundle.min.css" type="text/css" rel="stylesheet" />
	</head>
	<body>
	<!-- header start -->
	<tiles:insertAttribute name="header"/>
	<!-- header end -->
	
	<!-- content start -->
	<tiles:insertAttribute name="content"/>
	<!-- content end -->

	<!-- footer start -->
	<tiles:insertAttribute name="footer"/>
	<!-- footer end -->
	</body>
</html>
