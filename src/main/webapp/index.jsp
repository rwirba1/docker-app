<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome To M.I Tech!</title>
</head>
<body>

<h1>Welcome To M.I Tech!</h1>
<img src="images/cartoon.jpg" alt="A student with a laptop">

<h2>Select Course For Details</h2>
<form action="course" method="post">
    <select name="course">
        <option value="Git" <%= "Git".equals(request.getParameter("course")) ? "selected" : "" %>>Git</option>
        <option value="Jenkins" <%= "Jenkins".equals(request.getParameter("course")) ? "selected" : "" %>>Jenkins</option>
        <option value="Ansible" <%= "Ansible".equals(request.getParameter("course")) ? "selected" : "" %>>Ansible</option>
        <option value="Terraform" <%= "Terraform".equals(request.getParameter("course")) ? "selected" : "" %>>Terraform</option>
        <option value="Docker" <%= "Docker".equals(request.getParameter("course")) ? "selected" : "" %>>Docker</option>
        <option value="Kubernetes" <%= "Kubernetes".equals(request.getParameter("course")) ? "selected" : "" %>>Kubernetes</option>
    </select>
    <input type="submit" value="Get Definition & Installation Steps">
</form>
<br>

<% if (request.getAttribute("definition") != null) { %>
    <h3>Definition</h3>
    <p><%= request.getAttribute("definition") %></p>
    <h3>Installation Guide</h3>
    <pre><%= request.getAttribute("installation") %></pre>
<% } %>

<!-- Contact Us Form -->
<div style="position: fixed; bottom: 10px; right: 10px;">
    <h2>Contact Us For Inquiry</h2>
    <form action="/contact" method="post">
        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" required><br><br>

        <label for="details">Details:</label><br>
        <textarea id="details" name="details" rows="4" required></textarea><br><br>

        <button type="submit">
            <img src="path_to_your_icon_image.jpg" alt="Send" style="width: 20px; height: 20px;">
            Send
        </button>
    </form>
</div>

</body>
</html>