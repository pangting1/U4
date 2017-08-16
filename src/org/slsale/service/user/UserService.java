package org.slsale.service.user;

import org.slsale.pojo.User;

public interface UserService {
	/**
	 * 获取登录用户
	 *getLoginUser 
	 * @param user
	 * @return
	 * @throws Exception
	 */
	public User getLoginUser(User user) throws Exception;
	/**
	 * loginCodeIsExit
	 * 判断登录用户是否存在
	 * @param user
	 * @return
	 * @throws Exception
	 */
	public int loginCodeIsExit(User user) throws Exception;
	/**
	 * modifyUser
	 * @param user
	 * @return
	 * @throws Exception
	 */
	public int modifyUser(User user)throws Exception;
}
