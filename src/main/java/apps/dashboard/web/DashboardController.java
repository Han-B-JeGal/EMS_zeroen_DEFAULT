package apps.dashboard.web;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import apps.dashboard.service.DashboardService;

@Controller
public class DashboardController {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	DashboardService dashboardService;
	
//	@RequestMapping(value = "/dashboard002.do")
//	public String dashboard002(HttpServletRequest request, ModelMap model, @RequestParam Map<String, Object> paraMap) throws Exception {
//		logger.debug("dashboard002>>paraMap::" + paraMap.toString());
//		
//		return "apps/dashboard002.jsp";
//	}

	@RequestMapping(value="/ems_zeroen")
	public String displayData(List<Object> resultData) throws Exception{
		List<Object> dashboardData = dashboardService.dashboardDisplayData();
		
		return "apps/dashboard002.jsp";
	}
}
