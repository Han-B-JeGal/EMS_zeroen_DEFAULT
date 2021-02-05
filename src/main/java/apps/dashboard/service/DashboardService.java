package apps.dashboard.service;

import java.util.List;
import java.util.Map;

public interface DashboardService {
	
	List<Object> dashboardDisplayData() throws Exception;
	
	String selectSysdate(Map<String, Object> paraMap);

}
