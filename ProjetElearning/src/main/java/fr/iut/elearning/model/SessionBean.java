package fr.iut.elearning.model;

import java.util.UUID;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;

@Component
@Scope(value="session", proxyMode = ScopedProxyMode.TARGET_CLASS)
public class SessionBean {
 
    private final String id = UUID.randomUUID().toString();
    private String message;
    private Status status = Status.Etudiant;
    
    
    
    
    
    public String getId() {
		return id;
	}
    public String getMessage() {
		return message;
	}
    
    public void setMessage(String message) {
		this.message = message;
	}
    
    public void setStatus(Status status) {
		this.status = status;
	}
    
    public Status getStatus() {
		return status;
	}
 
}
