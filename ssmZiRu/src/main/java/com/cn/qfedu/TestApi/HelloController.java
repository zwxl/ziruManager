package com.cn.qfedu.TestApi;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Component("/hello.do")
public class HelloController implements Controller {
    @Override
    public ModelAndView handleRequest(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Exception {

//        视图模型
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("name","tom");
        modelAndView.setViewName("/hello.jsp");
        return modelAndView;
    }
}
