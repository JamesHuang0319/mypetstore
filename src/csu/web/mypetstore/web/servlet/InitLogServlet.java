package csu.web.mypetstore.web.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class InitLogServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.setProperty("logPath", "C://Documents and Settings//jl60155//webIVR-workspace//ScriptMaint-WebVersion//logs//myLog.log");
        System.err.println("InitLog Servlet test Path: " + System.getProperty("logPath"));

    }
}
