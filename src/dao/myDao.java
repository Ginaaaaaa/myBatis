package dao;


import java.util.ArrayList;
import java.util.HashMap;
import org.apache.ibatis.session.SqlSessionFactory;
import common.SqlSessionFactoryManager;

public class myDao {

    SqlSessionFactory sqlMapper = SqlSessionFactoryManager.getSqlSessionFactory();

    @SuppressWarnings({ "rawtypes", "unchecked" })
    public ArrayList<HashMap<String, String>> getMember(HashMap<String, Object> map){

           ArrayList<HashMap<String, String>> list = null;

           list = (ArrayList)sqlMapper.openSession().selectList("query.myquery.getMember",map);

           return list;
    }
}
