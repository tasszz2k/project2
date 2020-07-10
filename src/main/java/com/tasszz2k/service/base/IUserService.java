/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tasszz2k.service.base;

import com.tasszz2k.model.UserModel;

/**
 *
 * @author TASS
 */
public interface IUserService {
    UserModel findByUserNameAndPasswordAndStatus(String userName, String password, Integer status);
    UserModel save(UserModel userModel);
}
