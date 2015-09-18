package com.edusmart.interceptors;

import com.edusmart.dao.UserProfileTB;

public interface UserAware {
	public void setUser(UserProfileTB user);
}
