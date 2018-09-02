package cn.hjl.ssm.controller;

import cn.hjl.ssm.domain.Orders;
import cn.hjl.ssm.service.OrdersService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.security.RolesAllowed;
import java.util.List;

@Controller
@RequestMapping("/orders")
public class OrdersController {

    @Autowired
    private OrdersService ordersService;

    /**
     * 订单信息
     * @return
     */
    //@PreAuthorize("authentication.principal.username == 'hancock'") //只允许hancock查询
    @RequestMapping("/findById.do")
    public ModelAndView findById(@RequestParam(name = "id",required = true) String id) throws Exception {
        ModelAndView mv = new ModelAndView();
        Orders orders = ordersService.findById(id);
        mv.addObject("orders",orders);
        mv.setViewName("orders-show");
        return mv;
    }
    /**
     * 分页的查询
     * @return
     * @throws Exception
     */
    //@RolesAllowed("TEST")//jsr250-annotations="enabled"
    //@Secured("ROLE_TEST")//secured-annotations="enabled"
    //@PreAuthorize("hasRole('ROLE_TEST')")pre-post-annotations="enabled"
    //@PreAuthorize("authentication.principal.username == 'hancock'") //只允许hancock查询
    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(name = "page",required = true,defaultValue = "1") Integer page,
                              @RequestParam(name = "size",required = true,defaultValue = "3") Integer size  ) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<Orders> ordersList = ordersService.findAll(page,size);
        //分页的bean
        PageInfo pageInfo = new PageInfo(ordersList,3);
        mv.addObject("pageInfo", pageInfo);
        mv.setViewName("orders-page-list");
        return mv;
    }
}
