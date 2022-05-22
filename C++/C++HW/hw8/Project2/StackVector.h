#pragma once
#include "Vector.h" 
#include "Stack.h"
//homework targil 2 !
//-------------------------------------------------------
// class StackVector
// Stack implemented using Vector
// Vector will grow as necessary to avoid overflow
//-------------------------------------------------------

class StackVector : public Stack
{
public:
	// constructor requires a starting size
	StackVector(unsigned int capacity);
	StackVector(const StackVector& s);
	// Stack operations
	void clear() override;
	bool isEmpty() const override;
	int pop() override;
	void push(int value) override;
	int top()override;
protected:
	// data fields
	Vector data;
};