package com.javen.dao;
import com.javen.model.User;

/**
 * �־ò�ӳ��ӿ�
 * @author Nocol
 *
 */
public interface UserDao {
	
	//����û�
	public void addUser(User user);
	
	//�����û����������ѯ�û�
	//ע��������������Զ���װ��map���ϣ������ڼ�Ϊ��
	public void findUserByNameAndPwd(@Param("name")String name, @Param("password")String password);
	
}
