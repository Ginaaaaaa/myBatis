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
                       //log.debug("�ʱ�ȭ ����");
            	  System.out.println("�ʱ�ȭ ����");

               }
               sqlMapper = new SqlSessionFactoryBuilder().build(reader);
        }


        public static SqlSessionFactory getSqlSessionFactory() {

               return sqlMapper;   

        }
}

