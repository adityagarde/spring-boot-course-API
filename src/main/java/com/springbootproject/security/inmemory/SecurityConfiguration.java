package com.springbootproject.security.inmemory;

import com.springbootproject.security.CustomAuthenticationFailureHandler;
import com.springbootproject.security.CustomLogoutSuccessHandler;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;

//@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.inMemoryAuthentication()
                .withUser("JohnWatson").password(passwordAuthenticator().encode("JohnWatson")).roles("USER")
                .and()
                .withUser("IreneAdler").password(passwordAuthenticator().encode("IreneAdler")).roles("USER")
                .and()
                .withUser("SherlockHolmes").password(passwordAuthenticator().encode("SherlockHolmes")).roles("ADMIN")
                .and()
                .withUser("MycroftHolmes").password(passwordAuthenticator().encode("MycroftHolmes")).roles("ADMIN");
    }

    @Bean
    public PasswordEncoder passwordAuthenticator() {
        return new BCryptPasswordEncoder();
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.csrf().disable()
                .authorizeRequests()
                .antMatchers("/", "index", "/css/*", "/js/*").permitAll()
                .antMatchers("/admin/**").hasRole("ADMIN")
                .antMatchers("/all").hasAnyRole("USER", "ADMIN")
                .antMatchers("/login*").permitAll()
                .and()
                .httpBasic()
                .and()
                .formLogin()
                .defaultSuccessUrl("/homepage", true)
                .failureHandler(authenticationFailureHandler())
                .and()
                .logout()
                .invalidateHttpSession(true)
                .deleteCookies("JSESSIONID");

        // adding this to use H2 web console
        http.headers().frameOptions().disable();
    }

    @Bean
    public AuthenticationFailureHandler authenticationFailureHandler() {
        return new CustomAuthenticationFailureHandler();
    }

    @Bean
    public LogoutSuccessHandler logoutSuccessHandler() {
        return new CustomLogoutSuccessHandler();
    }
}
