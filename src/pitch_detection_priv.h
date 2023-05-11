#ifndef PITCH_DETECTION_PRIV_H
#define PITCH_DETECTION_PRIV_H

/* MPM configs */
/**
 * MPM_CUTOFF is a constant coefficient to avoid spurious peaks
 * setting this to the wrong value can create wrong-octaves in
 * pitch detection. See McLeod (2005), p. 11, "Peak Picking"
 */
#define MPM_CUTOFF 0.99
/**
 * The small cutoff restricts the lowest possible waveform peak
 * value (measured by a nsdf function). Too small a value can
 * result in a wavelength being chosen that is unrelated to
 * the pitch. Too high a value can result in a pitch being
 * categorized as unpitched
 */
#define MPM_SMALL_CUTOFF 0.5
/**
 * The lowest frequency to register as a pitch.
 */
#define MPM_LOWER_PITCH_CUTOFF 80

/* YIN configs */
#define YIN_DEFAULT_THRESHOLD 0.20
#define YIN_DEFAULT_OVERLAP 1536

#include <complex>
#include <vector>

std::pair<double, double>
parabolic_interpolation(const std::vector<double> &array, double x);

double
looper(const std::vector<double> &data, int sampling_rate,
    double (*fp)(double, const std::vector<double> &, double));

#endif /* PITCH_DETECTION__PRIV_H */
