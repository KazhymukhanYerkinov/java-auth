

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MyDAOException;
import dao.UserDAO;
import databean.User;


@WebServlet("/Users")
public class Users extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public UserDAO userDAO;

    public void init() throws ServletException {
        ServletContext context = getServletContext();
        String jdbcDriverName = context.getInitParameter("jdbcDriverName");
        String jdbcURL = context.getInitParameter("jdbcURL");

        try {
            this.userDAO = new UserDAO(jdbcDriverName, jdbcURL, "users");
            
        } catch (MyDAOException e) {
            throw new ServletException(e);
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession();
    	
    	if (session.getAttribute("auth-user") == null) {
            response.sendRedirect("Login");
            return;
        }
    	
    	try {
    		int id = Integer.valueOf(request.getParameter("id"));
			this.userDAO.delete(id);
    	} catch (Exception e) {}
    	
		doGet(request, response);
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
    	
    	if (session.getAttribute("auth-user") == null) {
            response.sendRedirect("Login");
            return;
        }
		
		try {
			User[] users = this.userDAO.getUsers();
			request.setAttribute("users", users);	
			
		} catch (Exception e) {}
		
		RequestDispatcher d = request.getRequestDispatcher("users.jsp");
        d.forward(request, response);
        return;
		
	}



}
