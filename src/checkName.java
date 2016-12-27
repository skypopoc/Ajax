import net.sf.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by cvzvb on 2016/12/26.
 */
@WebServlet(name = "checkName")
public class checkName extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name=request.getParameter("name");
        JSONObject result= new JSONObject();
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out=response.getWriter();
       if("ee".equals(name)){
           result.put("exist",true);
       }
        else{
           result.put("exist",false);
       }
        out.print(result);
        out.flush();
        out.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
this.doPost(request,response);
    }
}
