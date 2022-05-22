#include <iostream>
#include<string>
using namespace std;

class Base {
public:
	virtual string print() const
	{
		return "This is Base class";
	}
};

class Derived : public Base {
public:
	string print() const
	{
		return "This is Derived class";
	}
};

void describe(Base p)
{
	cout << p.print() << endl;
}
void lam(void (*func)(int x))
{
	func();
}


int main() {
	Base b;
	Derived d;
	int x = 5;
	describe(b);
	describe(d);
	lam([](5) {cout << "this is so great\n"; });
	return 0;
}
