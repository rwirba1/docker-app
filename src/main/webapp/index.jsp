<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        .about-content, .tool-content {
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

        .tool-section {
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
    <div class="tool-section">
        <img src="images/cartoon.jpg" alt="A student with a laptop" style="display:block; margin:auto;">
        <h2>Select DevOps Tool For Details</h2>
        <select name="tool" id="toolSelect" onchange="showToolDetails(this.value)">
            <option value="" selected>Select a tool...</option>
            <option value="Git">Git</option>
            <option value="Jenkins">Jenkins</option>
            <option value="Ansible">Ansible</option>
            <option value="Terraform">Terraform</option>
            <option value="Docker">Docker</option>
             <option value="Kubernetes">Kubernetes</option>
        </select>
        <div id="toolDetails"></div>
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
    document.getElementById('homeButton').addEventListener('click', showHomePage);
    document.getElementById('aboutLink').addEventListener('click', function() {
        document.querySelector('.logo').style.display = 'none';
        document.querySelector('.content-section').style.display = 'none';
        document.getElementById('aboutContent').style.display = 'block';
    });
    document.getElementById('toolSelect').addEventListener('change', function() {
        showToolDetails(this.value);
    });

    function showHomePage() {
        document.getElementById('aboutContent').style.display = 'none';
        document.querySelector('.logo').style.display = 'block';
        document.querySelector('.content-section').style.display = 'flex';
        document.getElementById('toolSelect').value = ""; // Reset tool dropdown
        document.getElementById('toolDetails').innerHTML = ''; // Clear tool details
    }

    function showToolDetails(tool) {
        let description = '';
        let installation = 'Installation Guide for Ubuntu:<br>';
        switch (tool) {
            case 'Git':
                description = 'Git is a distributed version control system (VCS) that helps track changes in source code during software development. ' +
                              'It is designed for coordinating work among programmers, but it can be used to track changes in any set of files. ' +
                              'Here are some key points about Git:<br><br>' +
                              '<strong>Distributed Version Control:</strong> Unlike some other version control systems, Git is distributed. This means that every developer\'s working copy of the code is also a repository that can contain the full history of all changes. This model allows for more flexibility and collaborative workflows.<br>' +
                              '<strong>Branching and Merging:</strong> One of Git\'s most powerful features is its ability to handle branches and merges efficiently. Developers can easily create branches to work on new features or bug fixes and can merge these branches back into the main codebase when the work is complete.<br>' +
                              '<strong>Speed:</strong> Git is designed with performance in mind. Operations such as branching and merging are extremely fast, which encourages workflows that branch often, even for small changes.<br>' +
                              '<strong>Data Integrity:</strong> Git uses a data model that ensures high integrity for the versioned content. Every file and commit is check-summed using the SHA-1 hash algorithm, which guarantees the consistency and integrity of data over time.<br>' +
                              '<strong>Staging Area:</strong> Git has an intermediate area called the "staging area" or "index" where changes can be grouped together before committing them to the repository. This allows developers to craft their commits for clarity and purpose.<br>' +
                              '<strong>Non-linear Development:</strong> Git supports non-linear development through its robust handling of branches, allowing multiple paths of development to occur simultaneously.<br>' +
                              '<strong>Collaboration:</strong> Git’s distributed nature allows multiple developers to work on the same project concurrently. Combined with platforms like GitHub or GitLab, it provides a centralized place for collaboration, code review, issue tracking, and more.<br>' +
                              '<strong>Open Source:</strong> Git is free and open-source software. Its development is supported by a vast community that continuously works on improvements and new features.<br>' +
                              'Git was initially designed and developed by Linus Torvalds, the creator of the Linux kernel, in 2005, for the development of the Linux kernel itself. Since then, it has gained widespread acceptance in the software community, making it the de facto standard for version control in many projects and organizations.';
                installation += '1. sudo apt update<br>2. sudo apt install git<br>3. git --version';
                break;
            case 'Jenkins':
                details = 'Installation Guide for Ubuntu:<br>1. wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -<br>2. sudo sh -c \'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list\'<br>3. sudo apt-get update<br>4. sudo apt-get install jenkins';
                break;
            case 'Ansible':
                details = 'Installation Guide for Ubuntu:<br>1. sudo apt update<br>2. sudo apt install software-properties-common<br>3. sudo apt-add-repository --yes --update ppa:ansible/ansible<br>4. sudo apt install ansible';
                break;
            case 'Terraform':
                details = 'Installation Guide for Ubuntu:<br>1. sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl<br>2. curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -<br>3. sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"<br>4. sudo apt-get update && sudo apt-get install terraform';
                break;
            case 'Docker':
                details = 'Installation Guide for Ubuntu:<br>1. sudo apt update<br>2. sudo apt install apt-transport-https ca-certificates curl software-properties-common<br>3. curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -<br>4. sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"<br>5. sudo apt update<br>6. sudo apt install docker-ce';
                break;
            case 'Kubernetes':
                details = 'Installation Guide for Ubuntu:<br>1. sudo apt-get update<br>2. sudo apt-get install -y apt-transport-https curl<br>3. curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -<br>4. echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list<br>5. sudo apt-get update<br>6. sudo apt-get install -y kubectl';
                break;
            default:
                details = '';
        }
        document.getElementById('toolDetails').innerHTML = details;
    }
</script>

</body>
</html>