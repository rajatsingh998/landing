import UserData.forma;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import static com.constant.Constant.*;
import java.util.List;

public class formsubmi extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String name=request.getParameter(NAME);
        String number=request.getParameter(PHONE_NUMBER);
        String address=request.getParameter(ADDRESS);
        String message=request.getParameter(MESSAGE);
//
        EntityManagerFactory entityManagerFactory= Persistence.createEntityManagerFactory("Form");
        EntityManager entityManager= entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        forma obj= new forma();

        obj.setAddress(address);
        obj.setName(name);
        obj.setNum(number);
        obj.setMessage(message);
        entityManager.persist(obj);
        entityManager.getTransaction().commit();
        RequestDispatcher rd= request.getRequestDispatcher(FEEDBACK_JSP);
        rd.forward(request,response);
        entityManagerFactory.close();
        entityManager.close();




    }
}
