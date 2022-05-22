#pragma once
#include <iostream>
#include "Stack.h"
//homework targil 2 !
//-------------------------------------------------------
// class StackVector
// Stack implemented using Vector
// Vector will grow as necessary to avoid overflow
//-------------------------------------------------------
class StackString : public Stack
{
public:
	
	StackString();
	StackString(const StackString& s);
	// Stack operations
	void clear() override;
	bool isEmpty() const override;
	int pop() override {}
	void push(int value) override {}
	int top()override {}

	char popc();
	void pushc(char h);
	char topc();
protected:
	// data fields
	std::string data;
};