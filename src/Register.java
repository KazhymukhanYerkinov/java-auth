import java.io.IOException;
import java.util.List;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import databean.User;
import dao.MyDAOException;
import dao.UserDAO;
import formbean.RegisterForm;


@WebServlet("/Register")
public class Register extends HttpServlet {
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
		doGet(request, response);
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		List<String> email_errors = new ArrayList<String>();
		request.setAttribute("email_errors", email_errors);
		
		try {
			RegisterForm form = new RegisterForm(request);
			request.setAttribute("form", form);	
			
			if ("GET".equals(request.getMethod())) {
	            RequestDispatcher d = request.getRequestDispatcher("register.jsp");
	            d.forward(request, response);
	            return;
			}
				
			email_errors.addAll(form.checkEmail());
			
			if (email_errors.size() != 0) {
                RequestDispatcher d = request.getRequestDispatcher("register.jsp");
                d.forward(request, response);
                return;
            }
			
			User user = userDAO.read(form.getEmail());
			
			if (user != null) {
				email_errors.add("User already exists");
				RequestDispatcher d = request.getRequestDispatcher("register.jsp");
                d.forward(request, response);
                return;
			}
			
			User new_user = new User();
			new_user.setEmail(form.getEmail());
			new_user.setPassword(form.getPassword());
			new_user.setFirstName(form.getFirstName());
			new_user.setLastName(form.getLastName());
			
			
			userDAO.create(new_user);
			session.setAttribute("auth-user", new_user);
			response.sendRedirect("Blog");
				
		} catch (MyDAOException e) {
			email_errors.add(e.getMessage());
            RequestDispatcher d = request.getRequestDispatcher("register.jsp");
            d.forward(request, response);
		}
		
	}

}
