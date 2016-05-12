<%@ page import="service.UserService" %>
<%@ page import="model.User" %>
<%--
  Created by IntelliJ IDEA.
  User: dd
  Date: 2016/5/12
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>编辑用户信息</title>
</head>
<body>
<%
    int id = Integer.valueOf(request.getParameter("user.id"));
    UserService userService = new UserService();
    User u = userService.findUser(id);
%>
<s:actionerror style="color:red"/>
<div style="font-size: 26px">请输入新的用户信息：</div>
<form action="edit.action" , method="post">
    <table>
        <tr>
            <td>编号：</td>
            <td><input type="text" name="user.id" value="<%=id%>" readonly="readonly"/></td>
        </tr>
        <tr>
            <td>用户名：</td>
            <td><input type="text" name="user.username" value="<%=u.getUsername()%>"/></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input type="text" name="user.password" value="<%=u.getPassword()%>"/></td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="提交"/>
                <input type="reset" value="重置"/>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
