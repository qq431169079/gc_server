////
#ifndef _MY_COMPONENT_H_
#define _MY_COMPONENT_H_

#include <memory>
#include <Windows.h>

class MyObject;
class MyComponent;
//组件事件
class CComEvent
{
public:
	CComEvent(){};
	virtual ~CComEvent(){};
	void SetID(UINT32 id){id_ = id;}
	UINT32 GetID() const{return id_;};

	INT64	GetParam1()const{return param1_;}
	void	SetParam1(INT64 param){param1_ = param;}

	void*	GetParam2()const{return param2_;}
	void	SetParam2(void* param){param2_ = param;}

	//事件的发起者
	MyComponent*	GetSender()const {return sender_;}
	void				SetSender(MyComponent* sender){sender_ = sender;}

protected:
	UINT32				id_;            //事件ID 
	MyComponent*	sender_;            //组件指针
	INT64				param1_;        //类型参数
	void*				param2_;        //事件对角
};

enum MyComponentType
{
	ECF_NONE = 0,
	ECF_MOVE,		//移动组件
	ECF_VISUAL,		//可视化组件                     //前端使用
	ECF_EFFECTMGR,	//死亡效果管理器
	ECF_BUFFERMGR,	//ＢＵＦＦＥＲ管理器
};
//组件
class MyComponent
{
public:
	MyComponent():owner_(0){};
	virtual ~MyComponent(){};

	const UINT32 GetID() const {return id_;};
	virtual const UINT32 GetFamilyID() const{return id_ >> 8 ;};

	//附加到对象后被调用
	virtual void OnAttach(){};
	//从对象移出前被调用
	virtual void OnDetach(){};

	//响应时间流逝
	virtual void OnUpdate(int ms){};

	//响应组件消息
	virtual void OnCCEvent(CComEvent*){};

	void SetOwner(MyObject* owner){owner_ = owner;};
	MyObject* GetOwner() const {return owner_;};

protected:
	//发起事件,该事件被立即响应
	void RaiseEvent(CComEvent*);
	void RaiseEvent(UINT32 idEvent, INT64 nParam1 = 0, void* pParam2 = 0);
	//投递事件,该事件将被延后响应
	void PostEvent(std::auto_ptr<CComEvent> &evnt);
	void PostEvent(UINT32 idEvent, INT64 nParam1 = 0, void* pParam2 = 0);
private:
	void SetID(UINT32 id){id_ = id;}
	friend class MyComponentFactory;
private:
	UINT32 id_;                 //ID
	MyObject * owner_;          //组件所属对象
};



#endif


