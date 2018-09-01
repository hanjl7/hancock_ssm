package cn.hjl.ssm.controller;

import cn.hjl.ssm.domain.Role;
import cn.hjl.ssm.domain.UserInfo;
import cn.hjl.ssm.service.RoleService;
import cn.hjl.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/findAll.do")
    public ModelAndView findAll() throws Exception {
        ModelAndView mv = new ModelAndView();
        List<UserInfo> userInfoList = userService.findAll();
        mv.addObject("userList", userInfoList);
        mv.setViewName("user-list");
        return mv;
    }

    @RequestMapping("/save.do")
    public String userSave(UserInfo userInfo) throws Exception {
        userService.save(userInfo);
        return "redirect:findAll.do";
    }

    @RequestMapping("/findById.do")
    public ModelAndView findById(String id) throws Exception {
        ModelAndView mv = new ModelAndView();
        UserInfo userInfo = userService.findById(id);
        mv.addObject("user", userInfo);
        mv.setViewName("user-show");
        return mv;
    }

    @Autowired
    private RoleService roleService;

    /**
     * 调用IUserService的ﬁndById方法获取要操作的User
     * 调用IRoleService的ﬁndOtherRole方法用于获取可以添加的角色信息
     * @param userId
     * @return
     * @throws Exception
     */
    @RequestMapping("/findUserByIdAndAllRole.do")
    public ModelAndView findUserByIdAndAllRole(@RequestParam(name = "id",required = true) String userId) throws Exception {
        ModelAndView mv = new ModelAndView();
        UserInfo userInfo = userService.findById(userId);
        List<Role> roleList =roleService.findOtherRoles(userId);
        mv.addObject("userInfo",userInfo);
        mv.addObject("roleList",roleList);
        mv.setViewName("user-role-add");
        return mv;
    }

}
