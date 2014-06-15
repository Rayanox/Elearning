package fr.iut.elearning.model;

import java.util.UUID;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;

@Component
@Scope(value="session", proxyMode = ScopedProxyMode.TARGET_CLASS)
public class SessionBean {
 
    private final String id = UUID.randomUUID().toString();
    private String Login;
    private Status status = Status.Visiteur;
    
    
    
    
    
    public String getId() {
		return id;
	}
    public String getLogin() {
		return Login;
	}
    
    public void setLogin(String Login) {
		this.Login = Login;
	}
    
    public void setStatus(Status status) {
		this.status = status;
	}
    
    public Status getStatus() {
		return status;
	}
 
}
