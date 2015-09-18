import java.util.List;

import javax.persistence.Temporal;

import com.edusmartweb.edusmart.dao.CommonController;
import com.edusmartweb.edusmart.model.UserProfileTB;

import junit.framework.TestCase;


public class Login extends TestCase
{
	UserProfileTB user = null;
	 protected void setUp(){
	    user = new UserProfileTB();
	    user.setUserName("prathamesh.talathi@excellenceit.in");	     
	    user.setPassword("a");
	   }
	
    public void testConcatenate() {
		
		List<Class<?>> objects = CommonController.getAllObjects(UserProfileTB.class, "UserName = '" + user.getUserName()+ "' and Password = '" + user.getPassword() + "'");

        assertEquals(objects.size() > 0);

    }
}
