package kr.or.ddit.spring.config;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.jupiter.api.Test;

import kr.or.ddit.CustomRootContextConfig;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@CustomRootContextConfig
class RootContextJavaConfigTest {

	@Inject
	SqlSessionFactory sqlSessionFactory;
	
	@Test
	void test() {
		try(
			SqlSession session = sqlSessionFactory.openSession();	
		){
			log.info("sqlSessionFactory : {}", session.getConnection());
		}
	}

}
