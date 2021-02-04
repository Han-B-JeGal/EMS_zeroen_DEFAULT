package egovframework.com.uat.uia.service.impl;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.com.cop.ems.service.EgovSndngMailRegistService;
import egovframework.com.uat.uia.service.EgovLoginService;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

/**
 * 일반 로그인, 인증서 로그인을 처리하는 비즈니스 구현 클래스
 * 
 * @author 공통서비스 개발팀 박지욱
 * @since 2009.03.06
 * @version 1.0
 * @see
 *
 *      <pre>
 * << 개정이력(Modification Information) >>
 *
 *   수정일      수정자          수정내용
 *  -------    --------    ---------------------------
 *  2009.03.06  박지욱          최초 생성
 *  2011.08.26  서준식          EsntlId를 이용한 로그인 추가
 *  2014.12.08	이기하			암호화방식 변경(EgovFileScrty.encryptPassword)
 *      </pre>
 */
@Service("loginService")
public class EgovLoginServiceImpl extends EgovAbstractServiceImpl implements EgovLoginService {

	@Resource(name = "loginDAO")
	private LoginDAO loginDAO;

	/** EgovSndngMailRegistService */
	@Resource(name = "sndngMailRegistService")
	private EgovSndngMailRegistService sndngMailRegistService;

	/**
	 * 일반 로그인을 처리한다
	 * 
	 * @param vo LoginVO
	 * @return LoginVO
	 * @exception Exception
	 */
	@Override
	public Map<String, Object> actionLogin(Map<String, Object> paraMap) throws Exception {
		// 1. 입력한 비밀번호를 암호화한다.
//		String enpassword = EgovFileScrty.encryptPassword(vo.getPassword(), vo.getId());
//    	vo.setPassword(enpassword);
		
		// 2. 아이디와 암호화된 비밀번호가 DB와 일치하는지 확인한다.
		Map<String, Object> loginInfo = loginDAO.actionLogin(paraMap);
		
		// 3. 비밀번호가 동일한지 비교한다.
		if(loginInfo.get("PASS").equals(generateMD5((String) paraMap.get("pass")))) {
			return loginInfo;			
		} else {
			loginInfo = new HashMap<>();
		} 

		return loginInfo;
	}
	
	public static String generateMD5(String str) {
	    String MD5 = "";
	    try {
	        MessageDigest md = MessageDigest.getInstance("MD5");
	        md.update(str.getBytes());
	        byte byteData[] = md.digest();
	        StringBuffer sb = new StringBuffer();
	        for (int i = 0; i < byteData.length; i++) {
	            sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
	        }
	        MD5 = sb.toString();
	 
	    } catch (NoSuchAlgorithmException e) {
	        e.printStackTrace();
	        MD5 = null;
	    }
	    return MD5;
	}
}
