<%@page import="com.douzon.guestbook.dao.GuestbookDao"%>
<%@page import="com.douzon.guestbook.vo.GuestbookVo"%>
<%
	request.setCharacterEncoding( "utf-8" );

	String name = request.getParameter( "name" );
	String password = request.getParameter( "pass" );
	String content = request.getParameter( "content" );
	
	GuestbookVo vo = new GuestbookVo();
	vo.setName( name );
	vo.setPassword( password );
	vo.setMessage( content );
	
	new GuestbookDao().insert( vo );
	
	response.sendRedirect( request.getContextPath() );
	
%> 
