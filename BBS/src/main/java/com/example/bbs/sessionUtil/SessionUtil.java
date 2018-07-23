package com.example.bbs.sessionUtil;

import javax.servlet.http.HttpSession;

import com.example.bbs.models.UserModel;

public class SessionUtil {
    public static final String SESSION_KEY = "loginUser";
    private static UserModel loginUserModel = null;

    public static boolean isLoginUser (HttpSession session) {
        loginUserModel = (UserModel) session.getAttribute(SESSION_KEY);
        if (loginUserModel == null) {
            return false;
        }
        return true;
    }

    public static UserModel getUserFromSession (HttpSession session){
        if(!isLoginUser(session)) {
           loginUserModel = null;
        }
        return loginUserModel;
    }

    public static boolean isValidUser(HttpSession session, int id) {
        return loginUserModel.getUserId() == id;
    }

    public static boolean isValidUpdateForm(HttpSession session, int UserId) {
        loginUserModel = (UserModel) session.getAttribute(SESSION_KEY);
        return loginUserModel.getUserId() == UserId;
    }
}
