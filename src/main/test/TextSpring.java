import com.dao.Userdao;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import java.util.List;
public class TextSpring {


    @Test
    public  void test02(){
        ApplicationContext applicationContext=new ClassPathXmlApplicationContext("applicationContext.xml");
        Userdao userdao = (Userdao) applicationContext.getBean("userdao");
        List<User> getall = userdao.getall();
        for (User u : getall) {
            System.out.println(u.getUname());
        }
    }

}
