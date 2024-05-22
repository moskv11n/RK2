/****************************************
* @file    IHandler
* @brief   职责链模式
* @author  微信号：iwaleon
* @wechat  微信公众号：高效程序员
* @date    2017/10/01
****************************************/

#ifndef CONCRETE_HANDLER_H
#define CONCRETE_HANDLER_H

#include "handler.h"

// 经理
class Manager : public IHandler
{
public:
	void HandleRequest(int days) override {
		if (days <= 1) {
			std::cout << "Manager: " << days << std::endl;
		} else {
			if (nullptr != m_pSuccessor)
				m_pSuccessor->HandleRequest(days);
		}
	}
};

// 总监
class Director : public IHandler
{
public:
	void HandleRequest(int days) override {
		if (days <= 3) {
			std::cout << "Director: " << days << std::endl;
		} else {
			if (nullptr != m_pSuccessor)
				m_pSuccessor->HandleRequest(days);
		}
	}
};

// 总裁
class CEO : public IHandler
{
public:
	void HandleRequest(int days) override {
		if (days <= 7) {
			std::cout << "CEO: " << days << std::endl;
		} else {
			std::cout << "bye" << std::endl;
		}
	}
};

#endif // CONCRETE_HANDLER_H
