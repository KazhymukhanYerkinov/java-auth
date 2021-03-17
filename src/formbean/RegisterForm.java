package formbean;

import javax.servlet.http.HttpServletRequest;

import java.util.ArrayList;

public class RegisterForm {
	
	private String email;
    private String password;
    private String re_password;
    private String firstName;
    private String lastName;
    private String button;
    
    
    public RegisterForm(HttpServletRequest request) {
        this.email = request.getParameter("email");
        this.password = request.getParameter("password");
        this.re_password = request.getParameter("re_password");
        this.firstName = request.getParameter("firstName");
        this.lastName = request.getParameter("lastName");
        button = request.getParameter("button");
        
    }
    
    
    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }
    
    public String getRePassword() {
        return re_password;
    }
    
    public String getFirstName() {
    	return firstName;
    }
    
    public String getLastName() {
    	return lastName;
    }
    
    public String getButton() {
		return button;
	}
    
    
    public ArrayList<String> checkEmail() {
    	ArrayList<String> errors = new ArrayList<String>();
    	
    	// Email validations    	
    	if (email == null || email.length() == 0) {
    		errors.add("Email is required");
    	}
    	if (email.matches(".*[<>\"].*")) {
			errors.add("User Name may not contain angle brackets or quotes");
    	}
    	
    	// Password validations    	
    	if (password == null || password.length() == 0) {
    		errors.add("Password is required");	
    	}
    	if (re_password == null || re_password.length() == 0) {
    		errors.add("Confirmation Password is required");
    	}
    	if (!password.equals(re_password)) {
    		errors.add("Passwords should match");
    	}
    	
    	// First Name and Last Name validations    	
    	if (firstName == null || firstName.length() == 0) {
    		errors.add("First name is required");
    	}
    	if (lastName == null || lastName.length() == 0) {
    		errors.add("Last name is required");
    	}
    	return errors;
    	

    }
    
    
    
    
    

}
