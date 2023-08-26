<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome To M.I Tech!</title>
</head>
<body>
<h1>Welcome To M.I Tech!</h1>
<img src="images/cartoon.jpg" alt="A student with a laptop">
<form action="course" method="post">
    <select name="course">
        <option value="Git">Git</option>
        <option value="Jenkins">Jenkins</option>
        <option value="Ansible">Ansible</option>
        <option value="Terraform">Terraform</option>
        <option value="Docker">Docker</option>
        <option value="Kubernetes">Kubernetes</option>
    </select>
    <input type="submit" value="Get Definition">
</form>
<br>
<% if (request.getAttribute("definition") != null) { %>
    <p><%= request.getAttribute("definition") %></p>
<% } %>
</body>
</html>
