#include "dualshadowarray.h"
#include <iostream>
#include <valarray>

int main(void)
{
  const double xvecinit[] = {1., 0.};
  const double yvecinit[] = {0., 1.};
  const float  xfvecinit[] = {1., 0.};
  const float  yfvecinit[] = {0., 1.};

  // const std::valarray<float>  xfvec(xfvecinit, 2);
  // const std::valarray<float>  yfvec(yfvecinit, 2);
  // const std::valarray<double> xvec(xvecinit, 2);
  // const std::valarray<double> yvec(yvecinit, 2);

  const NumberArray<2, float>  xfvec(xfvecinit);
  const NumberArray<2, float>  yfvec(yfvecinit);
  const NumberArray<2, double> xvec(xvecinit);
  const NumberArray<2, double> yvec(yvecinit);

  // DualNumber<double, std::valarray<double> > x(1., xvec);
  // DualNumber<double, std::valarray<double> > y(1., yvec);
  // DualNumber<float, std::valarray<float> > xf(1., xfvec);
  // DualNumber<float, std::valarray<float> > yf(1., yfvec);

  DualNumber<double, NumberArray<2, double> > x(1., xvec);
  DualNumber<double, NumberArray<2, double> > y(1., yvec);
  DualNumber<float, NumberArray<2, float> > xf(1., xfvec);
  DualNumber<float, NumberArray<2, float> > yf(1., yfvec);

  // std::valarray<double> test1 = xvec + xfvec; // fails

  DualNumber<double, NumberArray<2, double> > u;
//  DualNumber<float, NumberArray<2, float> > uf;

  // typedef DualNumber<double, NumberArray<2, double> > FirstDerivType;
  typedef DualNumber<ShadowNumber<float,double>, NumberArray<2, ShadowNumber<float,double> > > FirstDerivType;

  typedef DualNumber<FirstDerivType, NumberArray<2, FirstDerivType> > SecondDerivType;

  FirstDerivType test1;
  SecondDerivType test2;

  test1 += ShadowNumber<float,double>(1.);

  ShadowNumber<float,double> testS;

  testS += 1.;

  DualNumber<ShadowNumber<float,double>, ShadowNumber<float,double> > testD;

  testD += 1.;

//  test1 += 1.;
//  test2 + 1.;

  NumberArray<2, DualNumber<double, NumberArray<2, double> > > n, n2;

  n2 *= n;

  u * n;

  x / 1.;

  u = xf;
  u = x + y;
  // u = xf + y;
  // uf = xf + y; - this fails, but I'm okay with not silently dropping precision
  // uf = x + yf;

  //f1 = x + yf;
  //f1 = xf + yf;

//  DualNumber<double, std::valarray<double> > f = x*x+std::pow(y,3.)*z;

  NumberArray<2, double> nd = 3. * xvec;

  DualNumber<double, NumberArray<2, double> > f1 = x*x;
  DualNumber<double, NumberArray<2, double> > f2 = std::pow(y,3.);
  DualNumber<double, NumberArray<2, double> > f = x*x+std::pow(y,3.);

  std::cout << f;
}
