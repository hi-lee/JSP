

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import com.oreilly.servlet.*;
import com.oreilly.servlet.multipart.*;

/**
 * Servlet implementation class FileUploadServlet
 */
@WebServlet("/FileUpload")

public class FileUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FileUploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String uploadPath = request.getSession().getServletContext().getRealPath("/upload");
		int size = 10*1024*1024;
		String name = null;
		String subject = null;
		String filename1= null;
		String filename2= null;
		String origfilename1= null;
		String origfilename2= null;
		try {
			MultipartRequest m = new MultipartRequest(request, uploadPath, size, "utf-8", new DefaultFileRenamePolicy());
						
			name = m.getParameter("name");
			subject = m.getParameter("subject");		
			filename1= m.getParameter("filename1");
			filename2= m.getParameter("filename2");
			origfilename1 = m.getParameter("origfilename1");
			origfilename2 = m.getParameter("origfilename2");
			
			Enumeration files = m.getFileNames();
			String file1 = (String)files.nextElement();
			filename1 = m.getFilesystemName(file1);
			origfilename1 = m.getOriginalFileName(file1);
			
			String file2 = (String)files.nextElement();
			filename2 = m.getFilesystemName(file2);
			origfilename2 = m.getOriginalFileName(file2);
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("fileUpload1.jsp");
		request.setAttribute("name",  name);
		request.setAttribute("subject", subject);
		request.setAttribute("filename1", filename1);
		request.setAttribute("filename2", filename2);
		request.setAttribute("origfilename1", origfilename1);
		request.setAttribute("origfilename2", origfilename2);
		dispatcher.forward(request, response);
		
	}
} 
