package org.slsale.dao.function;

import java.util.List;

import org.slsale.pojo.Authority;
import org.slsale.pojo.Function;



public interface FunctionMapper {
	/**
	 *getMainFunctionList 
	 *得到主功能的菜单表
	 * @param authority
	 * @return
	 * @throws Exception
	 */
	public List<Function> getMainFunctionList(Authority authority)throws Exception;

														
	/**
	 * getSupFunctionList
	 * 得到对应角色下的主功能的子功能
	 * @param function
	 * @return
	 * @throws Exception
	 */
	public List<Function> getSupFunctionList(Function function) throws Exception;
	
}
