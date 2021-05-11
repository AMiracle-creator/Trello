package com.example.trelloapi.validators;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Constraint(validatedBy = EmailValidator.class)
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface UniqEmail {
    String message() default "Почта не уникальна";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};
}