#include <iostream>
#include "StackString.h"
#include "StackVector.h"
using namespace std;
string infixtoPostFix(string infix)
{
	string postFix;
	StackString x;
	//we have 4 cases.
	//case 1 its an open (
	//case 2 its a number
	//case 3 its an operator
	//case 4 its a closed )
	for (int i = 0; i < infix.size(); i++)
	{
		char c = infix[i];
		if (c == '(')
		{

		}
		else if (c >= '0' && c <= '9')//if it's a digit
		{
			postFix += c;
		}
		else if (c == '+' || c == '-' || c == '*' || c == '/')
		{

		}
		else if (c == ')')
		{

		}
		else if (c == ' ')//if it's a space only add a space if necessary.
		{
			if (postFix.back != ' ')
				postFix += c;
		}

	}
	
}