#include <iostream>
#include <list>
#include <vector>
#include <algorithm>
#include <string>
#include "Soldier.h"
#include "Private.h"
#include "Commander.h"
#include "Officer.h"
using namespace std;

enum option {
	stop,	//	End program
	addNewSoldier,	//	Add new soldier
	medalList,	//	Print all soldiers that are entitled to a medal
	mostSociometric,	//	Most sociometric score 
	countMedalPrivate,	//	Number of private soldiers getting a medal
	noCombatCommander,	//	Names of officers not combat
	overSoldier,	//	A message for soldier participating in more than 15 operations
	removeOfficer,	//	Removing officers that did'nt participate in any operation
};

void add(list<Soldier*>& lst);    //vector or list  
void medal(list<Soldier*> lst);   //vector or list  
Soldier* mostSociometricScore(list<Soldier*>);   //vector or list
//void checkPrint(Soldier* x);
void PrintPrivateMedal(list<Soldier*> lst);
//void checkPrivate(Soldier * x);
void printCommaderNotCombat(list<Soldier*> lst);
//void checkCommander(Soldier* x);
bool fifteenMissions(list<Soldier*> lst);
//bool isFifteen(Soldier* x);
void removeOfficerr(list<Soldier*>& lst);
void printAll(list<Soldier*> lst);
//void print(Soldier* x);
int pr_f_medal(list<Soldier*> lst);
void non_combatList(list<Soldier*> lst);
//bool is_stupid_officer(Soldier* x);

int main()
{
	list<Soldier*> lst;	//define vector or list of soldiers
	int op;
	cout << "enter 0-7\n";
	cin >> op;
	while (op != stop)
	{
		switch (op)
		{
		case addNewSoldier:add(lst);  //add new soldier						
			break;
		case medalList:medal(lst);  //print entitled for a medal
			break;
		case mostSociometric: {
			Soldier* s = mostSociometricScore(lst); // vector or list 
			if (s != NULL)
			{
				cout << "Officer soldier with most sociometric score: ";
				cout << s->getFname() << ' ' << s->getName() << endl;
			}
		}
			break;
		case countMedalPrivate:  cout << "# private soldier for medal: ";
			cout << pr_f_medal(lst) << endl;
			 //number of privates entitled for medal
				cout << endl;
			break;
		case noCombatCommander: cout << "list of no combat commander soldier :";
								non_combatList(lst);
			break;
		case overSoldier:
			if (fifteenMissions(lst)==true)
				cout << "there is a soldier that takes more than 15 operations\n";
			else cout << "no soldier takes more than 15 operations\n";
			break;
		case removeOfficer:
			removeOfficerr(lst);
			printAll(lst);
				 //print list after removals
				break;
		};
		cout << "enter 0-7\n";
		cin >> op;
	}
	return 0;
}
void add(list<Soldier*>& lst)
{
	
	cout << "enter 1 to add a private soldier\n";
	cout << "enter 2 to add a commander soldier\n";
	cout << "enter 3 to add a officer soldier\n";
	int choice;
	cin >> choice;
	switch (choice)
	{
	case 1:
		lst.push_back(new Private);
		break;
	case 2:
		lst.push_back(new Commander);
		break;
	case 3:
		lst.push_back(new Officer);
	}
}
void medal(list<Soldier*> lst) 
{
	for_each(lst.begin(), lst.end(), [](Soldier* x) { if ((*x).medal() == true)
		(*x).print(); });
}
Soldier* mostSociometricScore(list<Soldier*> lst)
{
	
	
	list<Soldier*>::iterator it = max_element(lst.begin(), lst.end(), [](Soldier* y, Soldier* x)
		{
			if (x->soldierType().compare("officer") == 0)
			{
				if (y->getSociometric() < x->getSociometric())
					return true;
			}
			return false;
		});
	return *it;
}

/*void checkPrint(Soldier* x)
{
	if ((*x).medal() == true)
		(*x).print();

}*/

//print privates deserving of medals
void PrintPrivateMedal(list<Soldier*> lst)
{
	for_each(lst.begin(), lst.end(), [](Soldier* x) {string type(x->soldierType());
	if ((type.compare("private")) == 0)//compare returns 0 if equal
		if ((*x).medal() == true)
			(*x).print(); });
}

/*void checkPrivate(Soldier* x)
{
	string type(x->soldierType());
	if ((type.compare("private"))==0)//compare returns 0 if equal
		checkPrint(x);
}*/
void printCommaderNotCombat(list<Soldier*> lst)
{
	for_each(lst.begin(), lst.end(), [](Soldier* x) {if (x->soldierType().compare("commander") == 0)
	{
		if (x->Iscombat() == true)
		{
			x->print();
		}
	}});
}
/*void checkCommander(Soldier *x)
{

	if (x->soldierType().compare("commander")==0)
	{
		if (x->Iscombat() == true)
		{
			x->print();
		}
	}
}*/
bool fifteenMissions(list<Soldier*> lst)
{
	return any_of(lst.begin(), lst.end(), [](Soldier* x) {if (x->getOp() >= 15)
		return true;
	return false; });
}
/*bool isFifteen(Soldier* x)
{
	if (x->getOp() >= 15)
		return true;
	return false;
}*/

void removeOfficerr(list<Soldier*>& lst)
{
	lst.remove_if([](Soldier* x) {if (x->soldierType().compare("officer") == 0)
	{
		if (x->getOp() == 0)
			return true;
	}
	return false; });
}
void printAll(list<Soldier*> lst)
{
	for_each(lst.begin(), lst.end(), [](Soldier* x) {x->print(); });
}
/*void print(Soldier* x)
{
	x->print();
}*/
int pr_f_medal(list<Soldier*> lst) {
	return count_if(lst.begin(), lst.end(), [](Soldier* x) {if (x->soldierType().compare("private") == 0)
	{
		if (x->medal() == true)
			return true;
		return false;
	}return false; });
	
}

void non_combatList(list<Soldier*> lst)
{
	for_each(lst.begin(), lst.end(),
		[](Soldier* x) {if (x->soldierType().compare("commander") == 0) {
		if (x->Iscombat() == false)
		{
			cout << x->getFname() << ' ' << x->getName() << ' ';
		}
	}});
	

}
/*bool is_stupid_officer(Soldier* x)
{
	if (x->soldierType().compare("officer") == 0)
	{
		if (x->getOp() == 0)
			return true;
	}
	return false;
}*/