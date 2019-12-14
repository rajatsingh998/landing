import UserData.forma;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class formsubmi extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name=request.getParameter("name");
        String number=request.getParameter("number");
        String address=request.getParameter("address");
        String message=request.getParameter("message");
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
        CriteriaBuilder cb=entityManager.getCriteriaBuilder();
        CriteriaQuery<forma> cq=cb.createQuery(forma.class);

        Root<forma> stud=cq.from(forma.class);

        cq.multiselect(stud.get("name"),stud.get("number"),stud.get("address"), stud.get("message") );
        CriteriaQuery<forma> select = cq.select(stud);
        TypedQuery<forma> q = entityManager.createQuery(select);
        List<forma> list = q.getResultList();
        for(forma i: list){
            System.out.println(i.getName());
            System.out.println(i.getNum());
            System.out.println(i.getAddress());
            response.getWriter().println(i.getName());
            response.getWriter().println(i.getNum());
            response.getWriter().println(i.getMessage());
            response.getWriter().println(i.getAddress());
            response.getWriter().println("\n");

        }

        entityManagerFactory.close();
        entityManager.close();
        response.getWriter().println("form submitted");



    }
}
