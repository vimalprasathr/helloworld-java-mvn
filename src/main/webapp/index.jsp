<html>
<head>
<title>Hello Vimal!</title>
</head>
<body>
	<h1>Hello Vimal!</h1>
	<p>
		It is now
		<%= new java.util.Date() %></p>
	<p>
		You are coming from 
		<%= request.getRemoteAddr()  %></p>
</body>
