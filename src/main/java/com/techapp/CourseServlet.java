package com.techapp;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class CourseServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String course = request.getParameter("course");
        String definition = "";

        switch (course) {
            case "Git":
                definition = "Git is a distributed version control system.";
                break;
            case "Jenkins":
                definition = "Jenkins is a popular automation server.";
                break;
            case "Ansible":
                definition = "Ansible is an open-source software provisioning, configuration management, and application-deployment tool.";
                break;
            case "Terraform":
                definition = "Terraform is an infrastructure as code tool for building, changing, and versioning infrastructure safely and efficiently.";
                break;
            case "Docker":
                definition = "Docker is a platform used to develop, ship, and run applications inside containers.";
                break;
            case "Kubernetes":
                definition = "Kubernetes is an open-source container orchestration platform.";
                break;
        }

        request.setAttribute("definition", definition);
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
