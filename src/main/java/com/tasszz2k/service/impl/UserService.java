/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tasszz2k.service.impl;

import com.tasszz2k.dao.base.IUserDAO;
import com.tasszz2k.model.UserModel;
import com.tasszz2k.service.base.IUserService;
import java.util.Calendar;
import javax.inject.Inject;

/**
 *
 * @author TASS
 */
public class UserService implements IUserService {

    @Inject
    private IUserDAO userDAO;

    @Override
    public UserModel findByUserNameAndPasswordAndStatus(String userName, String password, Integer status) {
        return userDAO.findByUserNameAndPasswordAndStatus(userName, password, status);
    }

    @Override
    public UserModel save(UserModel userModel) {
        userModel.setCreatedDate(new java.sql.Date(Calendar.getInstance().getTime().getTime()));
        Long userId = userDAO.save(userModel);
        if (userId != null) {
            return userDAO.findByUserNameAndPasswordAndStatus(userModel.getUserName(), userModel.getPassword(), userModel.getStatus());
        }else{
            return null;
        }
    }

}
