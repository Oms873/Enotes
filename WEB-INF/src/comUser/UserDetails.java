package comUser;

public class UserDetails {
    
    private String name;
    private String email;
    private String password;
    
    
    
    private int id;
    public UserDetails() {
        
        
        
    }
    
    public UserDetails(String name, String email, String password) {
    
        this.name = name;
        this.email = email;
        this.password = password;
    }

    
    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getPassword() {
        return password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    
    
    public String getName() {
        
        
        return name;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    
    
}
