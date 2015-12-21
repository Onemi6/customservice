package xyz.zafuic;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class Server
 */
@WebServlet(description = "Servlet  controller", urlPatterns = { "/Server" })
public class Server extends HttpServlet {
	private static final long serialVersionUID = 1L;

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Server() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * 
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession  mysession=request.getSession();
		String str = null;
		//Session Start
		if(mysession.isNew()){
			String id=mysession.getId();
			mysession.setAttribute("id", id);
			//
			Object confirmid=mysession.getAttribute("id");
		     str=confirmid.toString(); 
		}
		else{
			mysession.setAttribute("name", "nace");
		}
		response.getWriter().append(str);
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
