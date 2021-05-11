package com.example.trelloweb.aspects;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;

import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.stream.Collectors;

@Component
@Aspect
public class LogAspect {

    private final Logger logger = Logger.getLogger(LogAspect.class.getName());

    @Pointcut("execution(* com.example.trelloweb.controllers.SignUpController.*(..))")
    public void stringProcessingMethods() {
    }

    @Before("stringProcessingMethods()")
    public void logMethodCall(JoinPoint jp) {
        String args = Arrays.stream(jp.getArgs())
                .map(a -> a.toString())
                .collect(Collectors.joining(","));
        logger.info("before " + jp.toString() + ", args=[" + args + "]");
    }

    @After("stringProcessingMethods()")
    public void logMethodCallBack(JoinPoint jp) {
        logger.info("after " + jp.toString());
    }
}