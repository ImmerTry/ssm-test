import com.ssm.maven.core.dao.ItemDAO;
import com.ssm.maven.core.pojo.Item;
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
public class ItemDAOTest {
    @Autowired
    private ItemDAO itemDAO;

    @Test
    public void add() {
        Item item = new Item();
        item.setItemId("2");
        item.setItemName("苹果");
        item.setPrice(20);
        item.setClassId(1);
        item.setDescription("1");
        item.setRemark("1");
        itemDAO.saveItem(item);
    }

    @Test
    public void select() {
        List<Map<String, Object>> maps = itemDAO.getPage();
        System.out.println(maps);
    }

    @Test
    public void del() {
        int count = itemDAO.deleteItem("1");
        System.out.println(count > 0 ? "删除成功" : "删除失败");
    }
}
