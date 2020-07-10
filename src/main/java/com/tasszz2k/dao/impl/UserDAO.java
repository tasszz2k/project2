/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tasszz2k.dao.impl;

import com.tasszz2k.dao.base.IUserDAO;
import com.tasszz2k.mapper.UserMapper;
import com.tasszz2k.model.UserModel;
import java.util.List;

/**
 *
 * @author TASS
 */
public class UserDAO extends AbstractDAO<UserModel> implements IUserDAO {

    @Override
    public UserModel findByUserNameAndPasswordAndStatus(String userName, String password, Integer status) {
        StringBuilder sql = new StringBuilder("SELECT * FROM dbo.[user]\n"
                + "INNER JOIN dbo.role ON role.id = [user].roleid\n"
                + "WHERE username = ? AND password = ? AND status = ? ");
        List<UserModel> users = query(sql.toString(), new UserMapper(), userName, password, status);
        return users.isEmpty() ? null : users.get(0);
    }

    @Override
    public Long save(UserModel userModel) {
        StringBuilder sql = new StringBuilder("INSERT INTO [dbo].[user]\n"
                + "           ([username],[password],[fullname],[status],[roleid])\n"
                + "     VALUES (?,?, ?, ?, ?);");
        return insert(sql.toString(), userModel.getUserName(),userModel.getPassword(),userModel.getFullName(),userModel.getStatus(),userModel.getRoleId());
    }

}
