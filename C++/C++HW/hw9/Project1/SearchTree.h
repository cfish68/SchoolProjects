#pragma once
#pragma once
#include "Tree.h"
#include <iostream>
using namespace std;

template<class T>
class SearchTree : public Tree<T>
{

public:
	void add(T value);
	bool  search(T value)
	{
		return search(Tree<T>::root, value);
	}

	void remove(T val);
	T successor(T val);
	void deleteDuplicates();
	typename Tree<T>::Node* findNode(typename Tree<T>::Node* current, T val);

private:
	void add(typename Tree<T>::Node* current, T val);
	bool  search(typename Tree<T>::Node* current, T val);
};

template <class T>
void SearchTree<T>::add(T val)
{
	// add value to binary search tree 
	if (!Tree<T>::root)
	{
		Tree<T>::root = new typename Tree<T>::Node(val);
		return;
	}
	add(Tree<T>::root, val);
}

template <class T>
void SearchTree<T>::add(typename Tree<T>::Node* current, T val)
{
	if (current->value < val)

		if (!current->right)
		{
			current->right = new typename Tree<T>::Node(val);
			return;
		}
		else add(current->right, val);
	else

		if (!current->left)
		{
			current->left = new typename Tree<T>::Node(val);
			return;
		}
		else add(current->left, val);
}

template <class T>
bool SearchTree<T>::search(typename Tree<T>::Node* current, T val)
{
	// see if argument value occurs in tree
	if (!current)
		return false;	// not found
	if (current->value == val)
		return true;
	if (current->value < val)
		return search(current->right, val);
	else
		return search(current->left, val);
}

template <class T>
void SearchTree<T>::remove(T val)
{
	
	typename Tree<T>::Node* d = findNode(Tree<T>::root, val);
	T x = successor(val);


}
template <class T>
typename Tree<T>::Node* findNode(typename Tree<T>::Node* current, T val)
{
	if (!current)
		return NULL;
	if (current->value == val)
	{
		return current;
	}
	if (val < current->value)
		return findNode(current->left, val);
	return findNOde(current->right, val);
}
template <class T>
T SearchTree<T>::successor(T val)
{
	typename Tree<T>::Node* N = findNode(Tree<T>::root, val);
	if (!N->right)
		throw "no succesor\n";
	typename Tree<T>::Node* S = N->right;
	while (N->left != NULL)
		N = N->left;
	return N.value;
}