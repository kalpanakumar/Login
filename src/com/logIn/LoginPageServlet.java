package com.logIn;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.labs.repackaged.org.json.JSONException;
import com.google.appengine.labs.repackaged.org.json.JSONObject;

@SuppressWarnings("serial")
public class LoginPageServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		JSONObject JSON = null;
		int flag=0;
		String name = req.getParameter("data");//will return value  
		try {
			DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
			JSON = new JSONObject(name);
			String pass = JSON.getString("EnterLogInPassword");
			String email = JSON.getString("EnterLogInEmail").toLowerCase();
			Query query = new Query("SignIn");
			PreparedQuery pq = datastore.prepare(query);
			for (Entity signIn: pq.asIterable()){
				String ReqEmail = (String) signIn.getProperty("Email");

				if(email.equals(ReqEmail)){
					//resp.sendRedirect("index.jsp");
                   System.out.println("email exist");
                   flag =1;
   				String ReqPass = (String) signIn.getProperty("Password");
                if (pass.equals(ReqPass)){
                	System.out.println("password matched");
                	resp.setContentType("text/html;charset=UTF-8");
                    resp.getWriter().write("True");
                	//resp.sendRedirect("/TodoListJavaScript.jsp");
                	//resp.setParameter("data", 1);
                //	RequestDispatcher rd=req.getRequestDispatcher("TodoListJavaScript.jsp");  
                  //  rd.forward(req, resp); 

                }
				} 
			}
			//System.out.println("logIn");
		}catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	
	}
}
