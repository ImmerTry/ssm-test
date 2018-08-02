import com.ssm.maven.core.dao.ClassificationDAO;
import com.ssm.maven.core.dao.UserDAO;
import com.ssm.maven.core.pojo.Classification;
import com.ssm.maven.core.pojo.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
@Transactional
public class ClaDAOTest {
    @Autowired
    private ClassificationDAO claDao;
    @Autowired
    private UserDAO userDAO;

    @Test
    public void addUser() {
        User user = new User();
        user.setLoginPwd("123");
        user.setLoginId("zhansgan");
        System.err.println(user.toString());
        System.out.println(userDAO.addUser(user));
    }
    @Test
    public void getUser() {
        User user = new User();
        user.setLoginId("admin");
        user.setLoginPwd("123456");
        user = userDAO.getUser(user);
    }

    @Test
    public void addCla() {
        Classification cla = new Classification();
        cla.setClassId(1);
        cla.setClassName("新鲜水果");
        cla.setViewKeyword("水果");
        System.err.println(claDao.saveClassification(cla));
    }
    @Test
    public void showCla() {
        List<Classification> list = claDao.getClaList();
        System.out.println(list);
    }
    @Test
    public void getClaById() {
        Classification cla = claDao.getClaById(1);
        System.out.println(cla);
    }

    @Test
    public void update() {
        Classification cla = new Classification(1,"香蕉","大香蕉");
        int result = claDao.updateClassification(cla);
        System.err.println(result > 0 ? "更新成功":"更新失败");
    }
    @Test
    public void delete() {
        int result =claDao.deleteClassification(1);
        System.err.println(result > 0 ? "删除成功":"删除失败");
    }

    @Test
    public void findAll() throws Exception {
        List<Map<String,Object>> maps = claDao.findAll();
        System.out.println(maps);
    }
}
