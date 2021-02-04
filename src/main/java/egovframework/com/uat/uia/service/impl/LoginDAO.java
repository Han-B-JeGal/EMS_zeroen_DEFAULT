package egovframework.com.uat.uia.service.impl;

import java.util.Map;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;

/**
 * 일반 로그인, 인증서 로그인을 처리하는 DAO 클래스
 * @author 공통서비스 개발팀 박지욱
 * @since 2009.03.06
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *
 *   수정일      수정자          수정내용
 *  -------    --------    ---------------------------
 *  2009.03.06  박지욱          최초 생성
 *  2011.08.26  서준식          EsntlId를 이용한 로그인 추가
 *  </pre>
 */
@Repository("loginDAO")
public class LoginDAO extends EgovAbstractMapper {

	/**
	 * 일반 로그인을 처리한다
	 * @param paraMap LoginVO
	 * @return LoginVO
	 * @exception Exception
	 */
    public Map<String, Object> actionLogin(Map<String, Object> paraMap) throws Exception {
    	return selectOne("LoginDAO.actionLogin", paraMap);
    }
}
