package com.pig4cloud.pigx.mp.handler;

import com.pig4cloud.pigx.mp.builder.TextBuilder;
import lombok.SneakyThrows;
import me.chanjar.weixin.common.session.WxSessionManager;
import me.chanjar.weixin.mp.api.WxMpService;
import me.chanjar.weixin.mp.bean.message.WxMpXmlMessage;
import me.chanjar.weixin.mp.bean.message.WxMpXmlOutMessage;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;

import java.util.Map;

import static me.chanjar.weixin.common.api.WxConsts.XmlMsgType;

/**
 * @author Binary Wang(https://github.com/binarywang)
 */
@Component
public class MsgHandler extends AbstractHandler {

	@Override
	@SneakyThrows
	public WxMpXmlOutMessage handle(WxMpXmlMessage wxMessage,
									Map<String, Object> context, WxMpService weixinService,
									WxSessionManager sessionManager) {
		String content = "收到信息内容：" + wxMessage.getContent();

		return new TextBuilder().build(content, wxMessage, weixinService);

	}

}
