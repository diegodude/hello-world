<%-- 
    Document   : responseByGreetingWithName
    Created on : 22-Dec-2016, 9:10:06 PM
    Author     : andy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
	
    </head>
    
    <body>
	
        <jsp:useBean id="myNameBean" scope="session" class="org.mypackage.hello.NameHandler" />
        <jsp:setProperty name="myNameBean" property="name" />
	<jsp:setProperty name="myNameBean" property="lastName" value="<%=request.getParameter("lastName")%>"/>
	
        <h1>Hello,  
	    <jsp:getProperty name="myNameBean" property="name" />,   
	    <jsp:getProperty name="myNameBean" property="lastName" />!
	</h1>

    </body>
    
</html>
