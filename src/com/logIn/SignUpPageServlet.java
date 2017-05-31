package com.logIn;

import java.io.Console;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.Query.FilterOperator;
import com.google.appengine.labs.repackaged.org.json.JSONException;
import com.google.appengine.labs.repackaged.org.json.JSONObject;
@SuppressWarnings("serial")
public class SignUpPageServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setContentType("text/plain");
		int flag=0;
		JSONObject JSON = null;

		String name = req.getParameter("data");//will return value  
		try {
			DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
			JSON = new JSONObject(name);
			String pass = JSON.getString("EnterPassword");
			String email = JSON.getString("EnterEmail").toLowerCase();
			
			Entity Person = new Entity("SignIn");
			Person.setProperty("Email", email);
			Person.setProperty("Password", pass);
			Query query = new Query("SignIn");
			PreparedQuery pq = datastore.prepare(query);
			for (Entity signIn: pq.asIterable()){
				String ReqEmail = (String) signIn.getProperty("Email");

				if(email.equals(ReqEmail)){
					//resp.sendRedirect("index.jsp");
                   System.out.println("email exist");
                   flag =1;
                System.out.print("This email already exist ");  
                resp.setContentType("text/html;charset=UTF-8");
                resp.getWriter().write("false");
				} 
			}
			if(flag!=1){
				datastore.put(Person);
				resp.setContentType("text/html;charset=UTF-8");
                resp.getWriter().write("True");
                flag=0;
			}
			
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
