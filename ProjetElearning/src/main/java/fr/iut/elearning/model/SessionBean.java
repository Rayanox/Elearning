package fr.iut.elearning.model;

import java.util.UUID;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;

@Component
@Scope(value="session", proxyMode = ScopedProxyMode.TARGET_CLASS)
public class SessionBean {
 
    private int id;
    private String Login;
    private Status status = Status.Visiteur;
    
    
    
    
    
    public int getId() {
		return id;
	}
    public void setId(Integer integer){
    	this.id = integer;
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
