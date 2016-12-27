import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by cvzvb on 2016/12/26.
 */
public class getAjax extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
    String action=request.getParameter("action");
        if("getjsonobject".equals(action)){
            this.getjsonobject(request,response);}
            else if("getjsonarray".equals(action)){
                this.getjsonarray(request,response);
            }

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        this.doPost(request,response);
    }
    private void getjsonobject(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        String name=request.getParameter("name");
        String age=request.getParameter("age");
        System.out.print("name"+name+"age"+age);
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out=response.getWriter();
        JSONObject result= new JSONObject();
        result.put("name","jack");
        result.put("age",12);
        // out.print("{\"name\":\"jack\",\"age\":22}");
        out.print(result);
        out.flush();
        out.close();
    }
    private void getjsonarray(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out=response.getWriter();
        JSONObject result= new JSONObject();
        JSONArray jsonarray=new JSONArray();
        JSONObject o1= new JSONObject();
        o1.put("name","zz");
        o1.put("age",11);
        JSONObject o2= new JSONObject();
        o2.put("name","rr");
        o2.put("age",321);
        JSONObject o3= new JSONObject();
        o3.put("name","xx");
        o3.put("age",17);
        jsonarray.add(o1);
        jsonarray.add(o2);
        jsonarray.add(o3);
        result.put("user",jsonarray);
        out.print(result);
        out.flush();
        out.close();
    }
}
