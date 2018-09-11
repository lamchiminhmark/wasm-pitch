#include "pitch_detection.h"
#include <vector>
#include <emscripten/emscripten.h>

extern "C"
{
	// double
	double EMSCRIPTEN_KEEPALIVE
	get_pitch_mpm_c(const float *arr, int size, int sample_rate)
	{
		std::vector<double> vec(size);
		for (int i = 0; i < size; i++)
		{
			vec.push_back((double)arr[i]);
		}
		return get_pitch_mpm(vec, sample_rate);
	}
}
