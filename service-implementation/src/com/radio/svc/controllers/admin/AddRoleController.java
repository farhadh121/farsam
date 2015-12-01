package com.radio.svc.controllers.admin;

import com.radio.svc.serviceinterface.IRoleServiceProvider;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created with IntelliJ IDEA.
 * User: farhad
 * Date: 6/21/14
 * Time: 11:03 PM
 * To change this template use File | Settings | File Templates.
 */
public class AddRoleController extends AbstractController {

    private IRoleServiceProvider roleServiceProvider;

    public IRoleServiceProvider getRoleServiceProvider() {
        return roleServiceProvider;
    }

    public void setRoleServiceProvider(IRoleServiceProvider roleServiceProvider) {
        this.roleServiceProvider = roleServiceProvider;
    }

    ////////////////////////////////////////////////////////////////

    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) throws Exception {

        ModelAndView model = new ModelAndView( "/admin/roleadmin" );
        model.addObject( "controller", "addrole" );
        String roleName = request.getParameter( "rolename" );

        try{
            roleServiceProvider.addRole( roleName );
            model.addObject("msg", "success");
        }catch (Exception e){
            model.addObject("msg", "failed");
            model.addObject("msgbody", e.getMessage());
        }

        return model;

    }
}
