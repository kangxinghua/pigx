/*
 *    Copyright (c) 2018-2025, lengleng All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * Redistributions of source code must retain the above copyright notice,
 * this list of conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright
 * notice, this list of conditions and the following disclaimer in the
 * documentation and/or other materials provided with the distribution.
 * Neither the name of the pig4cloud.com developer nor the names of its
 * contributors may be used to endorse or promote products derived from
 * this software without specific prior written permission.
 * Author: lengleng (wangiegie@gmail.com)
 */

package com.pig4cloud.pigx.monitor.config;

import de.codecentric.boot.admin.server.config.AdminServerProperties;
import lombok.SneakyThrows;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;

/**
 * WebSecurityConfigurer
 *
 * @author lishangbu
 * @date 2019/2/1
 */
@Configuration
public class WebSecurityConfigurer extends WebSecurityConfigurerAdapter {
	private final String adminContextPath;

	public WebSecurityConfigurer(AdminServerProperties adminServerProperties) {
		this.adminContextPath = adminServerProperties.getContextPath();
	}

	@Override
	@SneakyThrows
	protected void configure(HttpSecurity http) {
		// @formatter:off
		SavedRequestAwareAuthenticationSuccessHandler successHandler = new SavedRequestAwareAuthenticationSuccessHandler();
		successHandler.setTargetUrlParameter("redirectTo");
		successHandler.setDefaultTargetUrl(adminContextPath + "/");

		http
			.headers().frameOptions().disable()
			.and().authorizeRequests()
			.antMatchers(adminContextPath + "/assets/**"
				, adminContextPath + "/login"
				, adminContextPath + "/actuator/**"
				, adminContextPath + "/redis/info"
			).permitAll()
			.anyRequest().authenticated()
			.and()
			.formLogin().loginPage(adminContextPath + "/login")
			.successHandler(successHandler).and()
			.logout().logoutUrl(adminContextPath + "/logout")
			.and()
			.httpBasic().and()
			.csrf()
			.disable();
		// @formatter:on
	}
}
