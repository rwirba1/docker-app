<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Unleash Efficiency, Collaboration, and High-Quality Delivery</title>
    <style>
        body {
            background-image: url("images/bk_ground.png");
            background-repeat: repeat;
            background-size: auto;
            position: relative;
            min-height: 100vh;
        }

        .logo {
            text-align: center;
            margin-top: 20px;            
        }

        .main-title {
            text-align: center;
            margin-top: 2vh;
        }

        .link {
            cursor: pointer;
            text-decoration: underline;
            margin-left: 15px;
        }

        .link:hover {
            text-decoration: none;
        }

        /* hidden by default */
        .about-content, .course-content {
            display: none;
            width: 70%;
            margin: 20px auto;
            text-align: center;
            box-sizing: border-box;
            padding: 10px;
            border: 1px solid #ddd;
        }

        .content-section {
            display: flex;
            justify-content: space-between;
        }

        .course-section {
            width: 45%;
        }

        #topRight {
            position: absolute;
            top: 10px;
            right: 10px;
        }

        #homeButton {
            position: absolute;
            top: 10px;
            left: 10px;
        }

    </style>
</head>
<body>

<button id="homeButton" onclick="showHomePage()">Home</button>

<div class="logo">
    <img src="images/logo.png" width="200" height="100" alt="Company Logo">
    <h1 class="main-title">Unleash Efficiency, Collaboration, and High-Quality Delivery!</h1>
</div>

<div id="topRight">
    <span class="link" id="aboutLink">About M.I Tech LLC</span> 
    <span class="link" id="careersLink">Careers</span>
</div>

<div class="content-section">
    <div class="course-section">
        <img src="images/cartoon.jpg" alt="A student with a laptop" style="display:block; margin:auto;">
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
            <script>
                document.querySelector('.logo').style.display = 'none';
                document.querySelector('.content-section').style.display = 'none';
            </script>
            <div class="course-content" id="courseContent">
                <h3>Definition</h3>
                <p><%= request.getAttribute("definition") %></p>
                <h3>Installation Guide</h3>
                <pre><%= request.getAttribute("installation") %></pre>
            </div>
        <% } %>
    </div>

    <div class="about-content" id="aboutContent">
        <p>Where Technology and Expertise Intersect!</p>
        <p>Our Two-Fold Mission:</p>
        <ol>
           <li>DevOps Support: We understand that each business is unique, and so are its technological challenges. Our seasoned team boasts a rich tapestry of experience in offering bespoke DevOps support...</li>
           <li>Education & Training: As firm believers in sharing knowledge, we are equally passionate about fostering the next generation of DevOps engineers...</li>
        </ol>
    </div>
</div>

<!-- Contact Us Form -->
<div style="position: fixed; bottom: 10px; right: 10px;">
    <h2>Contact Us</h2>
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
    function showHomePage() {
        document.getElementById('aboutContent').style.display = 'none';
        if(document.getElementById('courseContent')){
            document.getElementById('courseContent').style.display = 'none';
        }
        document.querySelector('.logo').style.display = 'block';
        document.querySelector('.content-section').style.display = 'block';
    }

    document.getElementById('aboutLink').addEventListener('click', function() {
        console.log("About link clicked!");
        document.getElementById('aboutContent').style.display = 'block';
        document.querySelector('.logo').style.display = 'none';
        document.querySelector('.content-section').style.display = 'none';
    });

    // Placeholder for Careers. Can be filled in later.
    document.getElementById('careersLink').addEventListener('click', function() {
        // ... functionality to display careers content ...
    });
</script>

</body>
</html>
