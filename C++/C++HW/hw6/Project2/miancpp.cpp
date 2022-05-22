#include <iostream>


int sumdiv(int n, int div)
{
	if (div == 1)
		return 1;
	int x = sumdiv(n, div - 1);
	if (n % div == 0)
		return x + div;
	return x;
		
}
int main() {
	std::cout << sumdiv(4000, 4000);
}