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

package com.pig4cloud.pigx.common.job.properties;

import lombok.Data;

/**
 * @author lengleng
 * @date 2019-09-18
 * <p>
 * xxl 管控台相关属性
 */
@Data
public class XxlAdminProperties {
	/**
	 * 调度中心部署跟地址 [选填]：如调度中心集群部署存在多个地址则用逗号分隔。
	 * 执行器将会使用该地址进行"执行器心跳注册"和"任务结果回调"；为空则关闭自动注册；
	 */
	private String addresses = "http://127.0.0.1:8080/xxl-job-admin";
}
