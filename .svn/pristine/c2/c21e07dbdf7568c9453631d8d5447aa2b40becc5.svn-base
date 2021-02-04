package com.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.service.CommonService;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service
public class CommonServiceImpl extends EgovAbstractServiceImpl implements CommonService {
	
	@Autowired
	CommonDAO commonDAO;

	@Override
	public List<Map<String, Object>> selectListDistinctColumn(Map<String, Object> paraMap) {
		return commonDAO.selectListDistinctColumn(paraMap);
	}

}
