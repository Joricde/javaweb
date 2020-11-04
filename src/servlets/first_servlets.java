package servlets;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class first_servlets extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
//        doGet(request, response);
        String user_name = (String)request.getParameter("username");
        String user_email = (String)request.getParameter("user_email");
        String user_password = (String)request.getParameter("user_password");
        String user_profile = (String)request.getParameter("user_profile");
//        String user_name = (String)request.getParameter("username");
        System.out.println(user_name+"  "+user_email+"  "+user_password+"  "+user_profile);
//        if(user_name != null && user_password != null){
//            HttpSession session = request.getSession();
//            session.setAttribute("uname", user_name);
//            session.setAttribute("pword", user_password);
//        }
        request.setAttribute("return", user_name+"已提交");
        request.getRequestDispatcher("/submit_msg.jsp").forward(request,response);
//        response.sendRedirect("info_get.jsp");
        PrintWriter out = response.getWriter();
        out.println(user_email);
        out.flush();
        out.close();
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
