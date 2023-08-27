<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome To M.I Tech!</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .header {
            display: flex;
            justify-content: space-between;
            padding: 10px 50px;
            align-items: center;
        }

        .main-title {
            text-align: right;
            margin-top: 20vh; /* this will push it down to the center of the viewport */
        }

        .link {
            cursor: pointer;
            text-decoration: underline;
        }

        .link:hover {
            text-decoration: none;
        }

        /* hidden by default */
        .about-content {
            display: none;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<div class="header">
    <div>
        <span class="link" id="aboutLink">About M.I Tech LLC</span> | 
        <span class="link" id="careersLink">Careers</span>
    </div>
    <h1 class="main-title">Welcome To M.I Tech!</h1>
</div>

<img src="images/cartoon.jpg" alt="A student with a laptop" style="display:block; margin:auto;">

<h2 style="text-align:center;">Select Course For Details</h2>
<form action="course" method="post" style="text-align:center;">
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
    <h3 style="text-align:center;">Definition</h3>
    <p style="text-align:center;"><%= request.getAttribute("definition") %></p>
    <h3 style="text-align:center;">Installation Guide</h3>
    <pre style="text-align:center;"><%= request.getAttribute("installation") %></pre>
<% } %>

<div class="about-content" id="aboutContent">
    <h2>Welcome to M.I Tech Where Technology and Expertise Intersect!</h2>
    <p>Our Two-Fold Mission:</p>
    <ol>
        <li>DevOps Support: We understand that each business is unique, and so are its technological challenges. Our seasoned team boasts a rich tapestry of experience in offering bespoke DevOps support. From continuous integration, continuous deployment, to state-of-the-art infrastructure management, we bring the best of tech solutions to bridge any operational gaps. Our aim? To help your business run seamlessly, scale effortlessly, and innovate constantly.</li>
        <li>Education & Training: As firm believers in sharing knowledge, we are equally passionate about fostering the next generation of DevOps engineers. Our curated courses, delivered by industry stalwarts, are designed not just to instruct but to inspire. Whether you're a newbie with an interest in DevOps or an IT professional keen to hone your skills, our doors are always open. Learn, grow, and be a part of the DevOps revolution!...</li>
    </ol>
</div>

<!-- Contact Us Form -->
<div style="position: fixed; bottom: 10px; right: 10px;">
    <h2>Contact Us For Inquiry</h2>
    <form action="/contact" method="post">
        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" required><br><br>
        <label for="details">Details:</label><br>
        <textarea id="details" name="details" rows="4" required></textarea><br><br>

        <button type="submit">
            <img src="images/send.jpg" alt="Send" style="width: 20px; height: 20px;">
            Send
        </button>
    </form>
</div>

<script>
    document.getElementById('aboutLink').addEventListener('click', function() {
        document.getElementById('aboutContent').style.display = 'block';
    });
</script>

</body>
</html>