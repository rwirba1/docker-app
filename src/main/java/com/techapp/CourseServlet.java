package com.techapp;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class CourseServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String course = request.getParameter("course");
        String definition = "";
        String installation = "";

        switch (course) {
            case "Git":
                definition = "Git is a distributed version control system.";
                installation = "Installation steps for Git...";
                break;
            case "Jenkins":
                definition = "Jenkins is a popular automation server.";
                installation = "Installation steps for Jenkins...";
                break;
            case "Ansible":
                definition = "Ansible is an open-source software provisioning, configuration management, and application-deployment tool.";
                installation = "Installation steps for Ansible...";
                break;
            case "Terraform":
                definition = "Terraform is an infrastructure as code tool for building, changing, and versioning infrastructure safely and efficiently.";
                installation = "Installation steps for Terraform...";
                break;
            case "Docker":
                definition = "Docker is a platform used to develop, ship, and run applications inside containers.";
                installation = "Installation steps for Docker...";
                break;
            case "Kubernetes":
                definition = "Kubernetes is an open-source container orchestration platform.";
                installation = "Installation steps for Kubernetes...";
                break;
        }

        request.setAttribute("definition", definition);
        request.getRequestDispatcher("/index.jsp").forward(request, response);
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
