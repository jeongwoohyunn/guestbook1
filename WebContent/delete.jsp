<%@page import="com.douzon.guestbook.vo.GuestbookVo"%>
<%@page import="com.douzon.guestbook.dao.GuestbookDao"%>
<%
	String no = request.getParameter( "no" );
	String password = request.getParameter( "password" );
	
	GuestbookVo vo = new GuestbookVo();
	vo.setNo( Long.parseLong( no ) );
	vo.setPassword( password );
	
	new GuestbookDao().delete( vo );
	
	response.sendRedirect( request.getContextPath() );
%>