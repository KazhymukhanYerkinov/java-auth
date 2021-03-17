package databean;


public class User {
	private int id;
    private String email;
    private String password;
    private String fristName;
    private String lastName;
   
    
    public int getId()                 { return id; }
    public String getPassword()        { return password; }
    public String getEmail()        { return email; }
    public String getFirstName()       { return fristName; }
    public String getLastName()       { return lastName; }
    
    
    
    public void setId(int s) { id = s; }
    public void setPassword(String s)  { password = s;    }
    public void setEmail(String s)  { email = s;    }
    public void setFirstName(String s)  { fristName = s;    }
    public void setLastName(String s)  { lastName = s;    }
}
