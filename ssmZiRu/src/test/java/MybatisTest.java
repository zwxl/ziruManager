import com.cn.qfedu.mapper.AttributeDao;
import com.cn.qfedu.pojo.Attribute;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
/**
 * @Author 张伟雄
 * @Date 2023/6/6
 **/
public class MybatisTest {
    @Autowired
    private AttributeDao attributeDao;
    @Test
    public void main() {
        List<Attribute> attr = attributeDao.findAttr();
        System.out.println(attr);
    }
}
