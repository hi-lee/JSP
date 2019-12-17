

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

/**
 * Servlet implementation class PartUploadPro1Servlet
 */
@WebServlet("/PartUploadPro1")
@MultipartConfig (
		fileSizeThreshold=0,
		location="c:/jsp2.3/upload"
		)
public class PartUploadPro1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PartUploadPro1Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String writer = request.getParameter("writer");
		Part part = request.getPart("partFile1");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String contentDisposition = part.getHeader("content-disposition"); 
//		String browser = getBrowser(request); 브라우저 구분
		String uploadFileName = getUploadFileName(contentDisposition, request); //contentDisposition, Browser
		part.write(uploadFileName);
		out.println("작성자 "+writer+"님이 "+uploadFileName+" 파일을 업로드 하였습니다.");
	}
	private String getUploadFileName(String contentDisposition, HttpServletRequest request) {
		int lastQutosIndex;	
		String agent = request.getHeader("User-Agent");
		boolean ieBrowser = (agent.indexOf("MSIE") > -1) || (agent.indexOf("Trident") > -1);
		//indexOf 0이상 : 값이 있음(해당 브라우저가 있음)
		
		String uploadFileName = null;
		String[] contentSplitStr = contentDisposition.split(";");
		
		if(ieBrowser) {
			int lastPathSepatatorIndex = contentSplitStr[2].lastIndexOf("\\");
			lastQutosIndex = contentSplitStr[2].lastIndexOf("\"");
			uploadFileName = contentSplitStr[2].substring(lastPathSepatatorIndex+1, lastQutosIndex);
			
		} else {
			int firstQutosIndex = contentSplitStr[2].indexOf("\"");		
			lastQutosIndex = contentSplitStr[2].lastIndexOf("\"");		
			uploadFileName = contentSplitStr[2].substring(firstQutosIndex+1, lastQutosIndex);
		}
		return uploadFileName;
	}
	
	private String getBrowser(HttpServletRequest request) { //브라우저 구분 메소드
		String header = request.getHeader("User-Agnet");
		if(header != null) {
			if(header.indexOf("Trident") > -1) {
				return "MISE";
			}else if(header.indexOf("Chrome") > -1) {
				return "Chrome";
			}else if(header.indexOf("Opera") > -1) {
				return "Opera";
			}else if(header.indexOf("iPhone") > -1 && header.indexOf("Mobile") > -1 ) {
				return "iPhone";
			}else if(header.indexOf("Android") > -1 && header.indexOf("Mobile") > -1) {
				return "Android";
			}
		}
		return "Firefox";
	}

}
