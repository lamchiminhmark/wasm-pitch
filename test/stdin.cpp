#include <cstdlib>
#include <cstring>
#include <fstream>
#include <iostream>
#include <limits>
#include "pitch_detection.h"
#include <utility>
#include <vector>

int
main(int argc, char **argv)
{
	std::vector<float> x;
	float n;
	while (std::cin >> n)
		x.push_back(n);

	float* xArr = &x[0];

	double pitch =
	    get_pitch_mpm_c(xArr, x.size(), 48000);

	std::cout << "Size: " << x.size() << "\tpitch: " << pitch << std::endl;
	return 0;
}
