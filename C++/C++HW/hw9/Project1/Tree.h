#pragma once
#pragma once
#include "QueueVector.h"
#include <iostream>
using namespace std;


//-----------------------------------
//  class Tree (Binary Trees)
// process nodes in Pre/In/Post  order
//-----------------------------------
template <class T>
class Tree
{
protected:
	//--------------------------------------------------------
	//  inner class Node
	//      a single Node from a binary tree
	//--------------------------------------------------------
	class Node
	{
	public:
		Node* left;
		Node* right;
		T value;
		Node():value(-1), left(NULL), right(NULL){}
		Node(T val) : value(val), left(NULL), right(NULL) {}
		Node(T val, Node* l, Node* r) : value(val), left(l), right(r) {}
		Node* operator=(Node* n) {
			value = n.value;
			left = n.left;
			right = n.right;
		}
	};		//end of Node class

	//data member of tree
	Node* root;

public:
	Tree() { root = NULL; }	 // initialize tree
	~Tree();
	int isEmpty() const;
	void clear() { clear(root); root = NULL; }//calls a function clear defined later in the file and sets root to null
	void preOrder() { preOrder(root); }
	void inOrder() { inOrder(root); }
	void postOrder() { postOrder(root); }

	

	int getHeight(typename Tree<T>::Node* x);
	void reflectTheTree(typename Tree<T>::Node* x);
	int height();
	void reflect();
	void breadthScan();

	virtual void process(T val) { cout << val << " "; }
	virtual void add(T val) = 0;
	virtual bool search(T val) = 0;
	virtual void remove(T val) = 0;


private:
	//private function for not give acsses to user
	void  clear(Node* current);
	void  preOrder(Node* current);
	void  inOrder(Node* current);
	void  postOrder(Node* current);

};
//----------------------------------------------------------
//  class Tree implementation
//----------------------------------------------------------
template <class T>
Tree<T>::~Tree() // deallocate tree
{
	if (root != NULL)
		clear(root);
}
template <class T>
void Tree<T>::clear(Node* current)
{
	if (current)
	{    // Release memory associated with children
		if (current->left)
			clear(current->left);
		if (current->right)
			clear(current->right);
		delete current;
	}
}



template <class T>
int Tree<T>::isEmpty() const
{
	return  root == NULL;
}

// preOrder processing of tree rooted at current
template <class T>
void Tree<T>::preOrder(Node* current)
{    // visit Node, left child, right child
	if (current)
	{   // process current Node
		process(current->value);
		// then visit children
		preOrder(current->left);
		preOrder(current->right);
	}
}

// inOrder processing of tree rooted at current
template <class T>
void Tree<T>::inOrder(Node* current)
{    // visit left child, Node, right child
	if (current)
	{
		inOrder(current->left);
		process(current->value);
		inOrder(current->right);
	}
}

// postOrder processing of tree rooted at current
template <class T>
void Tree<T>::postOrder(Node* current)
{    // visit left child, right child, node
	if (current)
	{
		postOrder(current->left);
		postOrder(current->right);
		process(current->value);
	}
}



template <class T>
void Tree<T>::breadthScan()
{
	QueueVector<Node*> Q(100);
	if (root != NULL)
		Q.enqueue(root);
	while (Q.isEmpty() != true)
	{
		Node* x = Q.dequeue();
		process(x->value);
		if (x->left != NULL)
			Q.enqueue((x->left));
		if (x->right != NULL)
			Q.enqueue((x->right));
	}
}

template <class T>
int Tree<T>::getHeight(typename Tree<T>::Node* x)
{
	if (x == NULL)
		return -1;
	if (x->left == NULL && x->right == NULL)
		return 0;
	int left = getHeight(x->left) + 1;
	int right = getHeight(x->right) + 1;
	if (left >= right)
		return left;
	return right;
}

template <class T>
void Tree<T>::reflectTheTree(typename Tree<T>::Node* x)
{
	if (x->left != NULL)
		reflectTheTree(x->left);
	if (x->right != NULL)
		reflectTheTree(x->right);
	Node* t = x->left;
	x->left = x->right;
	x->right = t;
}
template <class T>
int Tree<T>::height()
{
	return getHeight(root);
}


template<class T>
void Tree<T>::reflect()
{
	reflectTheTree(root);
}
