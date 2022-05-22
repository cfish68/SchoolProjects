#include "StackString.h"

StackString::StackString()
{
	//no intiialization neeeded
}
//simply copies the string from s to *this->data.
StackString::StackString(const StackString& s)
{
	data = s.data;
}
void StackString::clear()
{
	data.clear();
}
bool StackString::isEmpty()const
{
	//return 1 if empty.
	return data.empty();
}

char StackString::popc()
{
	//save popped element to be returned.
	char r = data.back();
	data.pop_back();
	return r;
}

void StackString::pushc(char v)
{
	data.push_back(v);
}

char StackString::topc()
{
	return data.back();
}
