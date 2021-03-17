package formbean;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

public class LoginForm {
	private String userName;
	private String password;
	private String button;
	
	public LoginForm(HttpServletRequest request) {
		userName = request.getParameter("email");
		password = request.getParameter("password");
		button = request.getParameter("button");
	}
	
	public String getUserName() {
		return userName;
	}
	
	public String getPassword() {
		return password;
	}
	
	public String getButton() {
		return button;
	}

	public boolean isPresent() {
		return button != null;
	}
	
	public List<String> getValidationErrors() {
		List<String> errors = new ArrayList<String>();

		if (userName == null || userName.length() == 0)
			errors.add("User Name is required");
		
		if (password == null || password.length() == 0)
			errors.add("Password is required");
		
		if (errors.size() > 0)
			return errors;
		
		if (userName.matches(".*[<>\"].*"))
			errors.add("User Name may not contain angle brackets or quotes");

		return errors;
	}

}
