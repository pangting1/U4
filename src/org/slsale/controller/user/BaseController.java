package org.slsale.controller.user;

import java.beans.PropertyEditorSupport;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.crypto.Data;

import org.apache.log4j.Logger;
import org.slsale.common.Constants;
import org.slsale.pojo.User;

import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.sun.org.apache.bcel.internal.generic.NEW;

public class BaseController {
	private Logger logger=Logger.getLogger(BaseController.class);
	 
	private User currentUser;
	/**
	 * 获得当前用户
	 * @return
	 */
	public User getCurrentUser(){
		if(null==this.currentUser){
		HttpServletRequest request=((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		HttpSession session=request.getSession(false);
		if(null!=session){
			currentUser=(User)session.getAttribute(Constants.SESSION_USER_STRING);
		}else{
			currentUser=null;
		}
		}
		return currentUser;
	}
	/**
	 *日期国际化 
	 * @param dataBinder
	 */
	@InitBinder
	public void InitBinder(WebDataBinder dataBinder){
		dataBinder.registerCustomEditor(Date.class, new PropertyEditorSupport(){

			@Override
			public String getAsText() {
				// TODO Auto-generated method stub
				return new SimpleDateFormat("yyyy-MM-dd").format((Data)getValue());
			}

			@Override
			public void setAsText(String text) throws IllegalArgumentException {
				try {
					setValue(new SimpleDateFormat("yyyy-MM-dd").parse(text));
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					setValue(null);
				}
				
			}
			
		});
	}
}
