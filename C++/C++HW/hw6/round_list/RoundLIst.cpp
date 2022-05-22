#include "RoundLIst.h"
#include <iostream>


RoundList::RoundList():List()
{
	head = head;
}
RoundList::RoundList(const RoundList& a) :List(a)
{
	Link* src, * trg;
	if (a.head == nullptr)
		head = head;
	else
	{
		head = new Link((a.head)->value, nullptr);
		src = a.head;
		trg = head;
		while (src->next != nullptr)
		{
			trg->next = new Link
			((src->next)->value, nullptr);
			src = src->next;
			trg = trg->next;
		}
		trg->next = head;
	}

}


RoundList::~RoundList()
{
	clear();
}
void RoundList::clear()
{
	// empty all elements from the List
	Link* next;
	for (Link* p = head->next; p != head; p = next)
	{
		// delete the element pointed to by p
		next = p->next;
		p->next = nullptr;
		delete p;
	}
	// mark that the List contains no elements 87. head= nullptr;
}

bool RoundList::search(const int& val) 
{
	// loop to test each element
	Link* p;
	for (p = head; p->next != head; p = p->next)
		if (val == p->value)
			return true;
	//need to check the last before head as the above skips it.
	if (val == p->value)
		return true;
	// not found
	return false;
}



void RoundList::removeFirst()
{
	// make sure there is a first element
	if (isEmpty())
		throw "the List is empty, no Elements to remove";
	// save pointer to the removed node
	Link* p = head;
	// reassign the first node
	head = p->next;
	p->next = nullptr;
	Link* itar;
	for (itar = head; itar->next != p; itar=itar->next);
	itar->next = head;

	// recover memory used by the first element
	delete p;
}

void RoundList::addToEnd(int n)
{
	Link* x= new Link(n, head);
	Link* pt = head;
	while (pt->next != head)
		pt = pt->next;
	pt->next = x;
}