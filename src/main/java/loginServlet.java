import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class loginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username= req.getParameter("login");
        String password= req.getParameter("password");

        if(username.equals("admin") && password.equals("123")){
            HttpSession session=req.getSession();
            session.setAttribute("username",username);
            resp.sendRedirect("display.jsp");
        }
        else{
            resp.sendRedirect("login.jsp");
        }
    }
}
