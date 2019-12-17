
import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

/**
 * Servlet implementation class PartUploadPro2Servlet
 */
@WebServlet("/partUploadPro2")
@MultipartConfig(fileSizeThreshold = 0, location = "C:/jsp2.3/upload")

public class PartUploadPro2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PartUploadPro2Servlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String writer = request.getParameter("writer");
		String uploadFileNameList = "";
		for (Part part : request.getParts()) {
			if (!part.getName().equals("writer")) {
				String contentDisposition = part.getHeader("content-disposition");
				String uploadFileName = getUploadFileName(contentDisposition);
//				String checkfile = part.getSubmittedFileName();
//				if(!uploadFileName.equals("")) {
//					part.write(uploadFileName);
//				}
				if (!uploadFileName.equals("")) {
					part.write(uploadFileName);
					uploadFileNameList += "" + uploadFileName;
				}
			}
		}
		out.println("작성자 " + writer + "님이 " + uploadFileNameList + " 파일을 업로드 하였습니다.");
	}

	private String getUploadFileName(String contentDisposition) {
		String uploadFileName = null;
		String[] contentSplitStr = contentDisposition.split(";");
		int firstQutosIndex = contentSplitStr[2].indexOf("\"");
		int lastQutosIndex = contentSplitStr[2].lastIndexOf("\"");
		uploadFileName = contentSplitStr[2].substring(firstQutosIndex + 1, lastQutosIndex);
		return uploadFileName;
	}

}
