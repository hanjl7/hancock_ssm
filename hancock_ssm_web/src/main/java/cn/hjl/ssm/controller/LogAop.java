package cn.hjl.ssm.controller;

import cn.hjl.ssm.domain.SysLog;
import cn.hjl.ssm.service.SysLogService;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;
import java.util.Date;

@Controller
@Aspect
public class LogAop {

    @Autowired
    private HttpServletRequest request;

    @Autowired
    private SysLogService sysLogService;

    private Date visitTime;
    private Class clazz;
    private Method method;

    /**
     * 前置通知
     *
     * @param jp
     */
    @Before("execution(* cn.hjl.ssm.controller.*.*(..))")
    public void doBefore(JoinPoint jp) throws NoSuchMethodException {
        visitTime = new Date();
        clazz = jp.getTarget().getClass();
        String methodName = jp.getSignature().getName();
        Object[] args = jp.getArgs();
        if (args == null || args.length == 0) {
            method = clazz.getMethod(methodName);
        } else {
            Class[] classArgs = new Class[args.length];
            for (int i = 0; i < classArgs.length; i++) {
                classArgs[i] = args[i].getClass();
            }
            clazz.getMethod(methodName, classArgs);
        }
    }

    /**
     * 后置通知
     *
     * @param jp
     */
    @After("execution(* cn.hjl.ssm.controller.*.*(..))")
    public void doAfter(JoinPoint jp) throws Exception {
        Long time = new Date().getTime() - visitTime.getTime();

        String url = "";
        if (clazz != null && method != null && clazz != LogAop.class) {
            RequestMapping classAnnotaion = (RequestMapping) clazz.getAnnotation(RequestMapping.class);
            if (classAnnotaion != null) {
                String[] classValue = classAnnotaion.value();
                RequestMapping methodAnnotaion = method.getAnnotation(RequestMapping.class);
                if (methodAnnotaion != null) {
                    String[] methodValue = methodAnnotaion.value();
                    url = classValue[0] + methodValue[0];
                    String ip = request.getRemoteAddr();

                    SecurityContext context = SecurityContextHolder.getContext();
                    User user = (User) context.getAuthentication().getPrincipal();
                    String username = user.getUsername();
                    SysLog sysLog = new SysLog();
                    sysLog.setExecutionTime(time);
                    sysLog.setIp(ip);
                    sysLog.setMethod("[类名]" + clazz.getName() + "[方法名]" + method.getName());
                    sysLog.setUrl(url);
                    sysLog.setUsername(username);
                    sysLog.setVisitTime(visitTime);

                    sysLogService.Save(sysLog);

                }
            }
        }

    }
}
