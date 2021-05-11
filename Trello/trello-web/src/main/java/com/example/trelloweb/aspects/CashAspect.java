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
public class CashAspect {

    private final Logger logger = Logger.getLogger(CashAspect.class.getName());

    @Around("execution(* com.example.trelloweb.security.details.UserDetailsServiceImpl.loadUserByUsername(..)))")
    public Object logCacheMethod(ProceedingJoinPoint joinPoint) throws Throwable {
        String methodName = joinPoint.getSignature().getName();
        logger.log(Level.INFO, "LOG by AOP - invoking " + methodName + " " + Arrays.toString(joinPoint.getArgs()));
        Object result = joinPoint.proceed();

        logger.log(Level.INFO,"LOG by AOP - result of "+ methodName + " "+ result);

        return result;
    }
}