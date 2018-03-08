import com.dao.Userdao;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.IOException;

public class test {

    @Test
   public  void mybatistest(){
        try {
            SqlSessionFactory sqlSessionFactory=new SqlSessionFactoryBuilder().build(Resources.getResourceAsStream("mybatis.xml"));
            SqlSession sqlSession= sqlSessionFactory.openSession();
            Userdao userdao=sqlSession.getMapper(Userdao.class);

            User user=new User("哈哈");
            userdao.adduser(user);
            sqlSession.commit();
            System.out.println(userdao.getall().size());
            sqlSession.close();
        } catch (IOException e){
            e.printStackTrace();
        }
    }
}
