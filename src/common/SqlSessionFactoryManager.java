package common;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionFactoryManager {
        //private static Logger log = Logger.getLogger(SqlSessionFactoryManager.class);

        private static final SqlSessionFactory sqlMapper;

        static{
               String resource = "common/SqlMapConfig.xml";

               Reader reader = null;

               try {
                       reader = Resources.getResourceAsReader(resource);
               } catch (IOException e) {
                       //log.debug("초기화 에러");
            	  System.out.println("초기화 에러");

               }
               sqlMapper = new SqlSessionFactoryBuilder().build(reader);
        }


        public static SqlSessionFactory getSqlSessionFactory() {

               return sqlMapper;   

        }
}

