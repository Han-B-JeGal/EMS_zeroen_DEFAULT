package apps.dashboard.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;

@Repository("dashboardDAO")
public class DashboardDAO extends EgovAbstractMapper {

	public List<Object> displayData() {
		return selectList("getData.dashboardDAO_currentData");
	}

	public String selectSysdate(Map<String, Object> paraMap) {
		return selectOne("DashboardDAO.selectSysdate", paraMap);
	}
}
