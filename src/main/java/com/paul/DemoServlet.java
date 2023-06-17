package com.paul;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DemoServlet")
public class DemoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Student> students = Arrays.asList(
                new Student(1, "Ankush"),
                new Student(2, "Purbanka"),
                new Student(3, "Patra"),
                new Student(4, "Deepon"),
                new Student(5, "Siddhant")
        );

        request.setAttribute("students", students);
        request.getRequestDispatcher("display.jsp").forward(request, response);
    }
}
