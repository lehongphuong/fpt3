package form.user;

import java.util.ArrayList;

import model.bean.Type;
import model.bean.User;

import org.apache.struts.action.ActionForm;

public class UserForm extends ActionForm {
	private int userId;
	private String username;
	private String password;
	private String avatar;
	private String university;
	private float poin;
	private String typeId;
	ArrayList<User> userList;
	ArrayList< Type> typeList;

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getUniversity() {
		return university;
	}

	public void setUniversity(String university) {
		this.university = university;
	}

	public float getPoin() {
		return poin;
	}

	public void setPoin(float poin) {
		this.poin = poin;
	}

	public String getTypeId() {
		return typeId;
	}

	public void setTypeId(String typeId) {
		this.typeId = typeId;
	}

	public ArrayList<model.bean.User> getUserList() {
		return userList;
	}

	public void setUserList(ArrayList<model.bean.User> userList) {
		this.userList = userList;
	}

	public ArrayList<model.bean.Type> getTypeList() {
		return typeList;
	}

	public void setTypeList(ArrayList<model.bean.Type> typeList) {
		this.typeList = typeList;
	}

}
