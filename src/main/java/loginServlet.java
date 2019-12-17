import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import static com.constant.Constant.*;
public class loginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username= req.getParameter(LOGIN);
        String password= req.getParameter(LOGIN_PASSWORD);

        if(username.equals(USERNAME) && password.equals(PASSWORD)){
            HttpSession session=req.getSession();
            session.setAttribute(SESSION_USERNAME,username);
            RequestDispatcher rd= req.getRequestDispatcher(DISPLAY_JSP);
            rd.forward(req,resp);
        }
        else{
            req.setAttribute(LOGIN_MESSAGE,LOGIN_MESSAGE);
            RequestDispatcher rd= req.getRequestDispatcher(LOGIN_JSP);
            rd.forward(req,resp);
        }
    }
}
