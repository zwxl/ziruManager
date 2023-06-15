package com.cn.qfedu.config;

import com.cn.qfedu.pojo.User;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * @Author 张伟雄
 * @Date 2023/6/5
 **/
@EnableSwagger2 //开启swagger注解
@EnableWebMvc   //声明web项目
@Configuration //结合@Bean 向容器注册对象
public class SwaggerConfig {
    @Bean
    public Docket api(ApiInfo apiInfo){
        return new Docket(DocumentationType.SWAGGER_2).
                select().apis(RequestHandlerSelectors.basePackage("com.cn.qfedu.controller")).
                build().
                apiInfo(apiInfo);
    }

    @Bean
    public ApiInfo apiInfo(){
        return new ApiInfoBuilder().title("ZiRoom租房项目").
                description("ZiRoom租房项目接口文档").
                version("1.0").
                license("Apache2.0").
                licenseUrl("http://httpd.apache.org/docs/2.0/license.html").build();
    }
}
