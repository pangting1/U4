package org.slsale.service.function;

import java.util.List;

import javax.annotation.Resource;

import org.slsale.dao.function.FunctionMapper;
import org.slsale.pojo.Authority;
import org.slsale.pojo.Function;
import org.springframework.stereotype.Service;

@Service
public class FunctionServiceImpl implements FunctionService {
	@Resource
	private FunctionMapper mapper;
	@Override
	public List<Function> getMainFunctionList(Authority authorhity)
			throws Exception {
		// TODO Auto-generated method stub
		return mapper.getMainFunctionList(authorhity);
	}

	@Override
	public List<Function> getSupFunctionList(Function function)
			throws Exception {
		// TODO Auto-generated method stub
		return mapper.getSupFunctionList(function);
	}

}
