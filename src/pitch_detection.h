#ifndef PITCH_DETECTION_H
#define PITCH_DETECTION_H

#include <vector>

double
get_pitch_mpm(const std::vector<double> &audio_buffer, int sample_rate);

extern "C" {
double
get_pitch_mpm_c(const float *arr, int size, int sample_rate);
}

#endif /* PITCH_DETECTION_H */
