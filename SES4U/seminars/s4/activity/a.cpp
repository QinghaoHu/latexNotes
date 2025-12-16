#include <iostream>
#include <vector>

long double history = 4.54 * 1e9;
long double numberOfBlocks = 284;	

std::vector<long long> years;
std::vector<std::string> name;
std::vector<std::string> type;

int main() {
	int n; 
	std::cin >> n;

	for (int i = 0; i < n; i++) {
		long long y; std::string s1, s2;
		std::cin >> y >> s1 >> s2;
		y = (long long)history - y;
		years.push_back(y), name.push_back(s1), type.push_back(s2);
	}

	std::cerr << years[0] << '\n';

	for (int i = 0; i < n; i++) {
		std::cout << (int64_t)(years[i] / (history / numberOfBlocks) + 0.5) << ' ';
		std::cout << name[i] << ' ' << type[i] << '\n';
	}
}
