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
        <h2>Select DevOps Tool For Details</h2>
        <select name="course" id="courseSelect" onchange="displayCourseDetails()">
            <option value="" selected>Select a course...</option>
            <option value="Git">Git</option>
            <option value="Jenkins">Jenkins</option>
            <option value="Ansible">Ansible</option>
            <option value="Terraform">Terraform</option>
            <option value="Docker">Docker</option>
            <option value="Kubernetes">Kubernetes</option>
        </select>

        <div class="course-content" id="courseContent">
            <!-- This will be populated dynamically -->
            <!-- <h3>Definition</h3>
            <p id="courseDefinition"></p>
            <h3>Installation Guide</h3>
            <div id="courseInstallation"></div> -->
        </div>
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

<!-- <script>
    function displayCourseDetails() {
        let course = document.getElementById('courseSelect').value;
        let definition = "";
        let installation = "";

        switch(course) {
            case "Git":
                definition = "Git is a distributed version-control system used for tracking changes in source code during software development.";
                installation = "1. Download the installer from the Git official site.\n2. Follow the installation steps.";
                break;

            case "Jenkins":
                definition = "Jenkins is an open-source automation server which enables developers to build, test, and deploy their code.";
                installation = "1. Download Jenkins from the official website.\n2. Install and configure it.";
                break;

            case "Ansible":
                definition = "Ansible is an open-source software provisioning, configuration management, and application-deployment tool.";
                installation = "1. Install using pip.\n2. Set up and configure based on requirements.";
                break;

            case "Terraform":
                definition = "Terraform is an open-source infrastructure as code software tool that provides a consistent CLI workflow to manage cloud services.";
                installation = "1. Download Terraform CLI from the website.\n2. Unzip and install.";
                break;

            case "Docker":
                definition = "Docker is a platform used to develop, ship, and run applications inside containers.";
                installation = "1. Download Docker Desktop.\n2. Install and start creating containers.";
                break;

            case "Kubernetes":
                definition = "Kubernetes, also known as K8s, is an open-source system for automating deployment, scaling, and management of containerized applications.";
                installation = "1. Set up a kubernetes cluster.\n2. Use kubectl to manage.";
                break;
        }

        if (definition) {
            document.getElementById('courseContent').style.display = 'block';
            document.getElementById('courseDefinition').innerText = definition;
            document.getElementById('courseInstallation').innerText = installation;
        } else {
            document.getElementById('courseContent').style.display = 'none';
        }
    }
    function showHomePage() {
        document.getElementById('aboutContent').style.display = 'none';
        if(document.getElementById('courseContent')){
            document.getElementById('courseContent').style.display = 'none';
        }
        document.querySelector('.logo').style.display = 'block';
        document.querySelector('.content-section').style.display = 'block';
        document.getElementById('topRight').style.display = 'block';
    }

    document.getElementById('aboutLink').addEventListener('click', function() {
        document.getElementById('aboutContent').style.display = 'block';
        document.querySelector('.logo').style.display = 'none';
        document.querySelector('.content-section').style.display = 'none';
        document.getElementById('topRight').style.display = 'none';
    });

    // Placeholder for Careers. Can be filled in later.
    document.getElementById('careersLink').addEventListener('click', function() {
        // ... functionality to display careers content ...
    });
</script> -->

<script>
    function showHomePage() {
        document.getElementById('aboutContent').style.display = 'none';
        document.getElementById('courseContent').style.display = 'none';
        document.querySelector('.logo').style.display = 'block';
        document.querySelector('.content-section').style.display = 'block';
    }

    document.getElementById('aboutLink').addEventListener('click', function() {
        document.querySelector('.logo').style.display = 'none';
        document.querySelector('.content-section').style.display = 'none';
        document.getElementById('aboutContent').style.display = 'block';
    });

    document.getElementById('courseSelect').addEventListener('change', function() {
        const selectedCourse = this.value;
        let content = '';
        switch (selectedCourse) {
            case 'Git':
                content = "Installation Guide for Ubuntu<br>1. Update apt package index with `sudo apt update`.<br>2. Install Git with `sudo apt install git`.<br>3. Verify the installation by running `git --version`.";
                break;
            case 'Jenkins':
                content = "Installation Guide for Ubuntu<br>1. Install Java with `sudo apt install openjdk-11-jre`.<br>2. Add Jenkins repository: `wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -` and then `sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'`.<br>3. Install Jenkins: `sudo apt update && sudo apt install jenkins`.<br>4. Start Jenkins with `sudo systemctl start jenkins`.<br>5. Access Jenkins from a browser using `http://localhost:8080`.";
                break;
            case 'Ansible':
                content = "Installation Guide for Ubuntu<br>1. Update apt package index: `sudo apt update`.<br>2. Install software-properties-common: `sudo apt install software-properties-common`.<br>3. Add Ansible repository: `sudo apt-add-repository --yes --update ppa:ansible/ansible`.<br>4. Install Ansible with `sudo apt install ansible`.<br>5. Verify the installation by running `ansible --version`.";
                break;
            case 'Terraform':
                content = "Installation Guide for Ubuntu<br>1. Download Terraform from the official website.<br>2. Extract the downloaded archive.<br>3. Move the Terraform binary to `/usr/local/bin` or any directory in your `PATH`.<br>4. Verify the installation by running `terraform version`.";
                break;
            // Additional installations for Docker and Kubernetes can be added here
        }
        document.getElementById('courseContent').innerHTML = content;
    });

</script>

</body>
</html>
