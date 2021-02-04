package apps.dashboard.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import apps.dashboard.service.DashboardService;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service
public class DashboardServiceImpl extends EgovAbstractServiceImpl implements DashboardService {

	@Autowired
	DashboardDAO dashboardDAO;

	@Override
	public String selectSysdate(Map<String, Object> paraMap) {
		return dashboardDAO.selectSysdate(paraMap);
	}

}
