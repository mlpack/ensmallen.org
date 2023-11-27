---
layout: default-nav
title: Home
description: ensmallen | flexible C++ library for efficient numerical optimization
order: 1
---
* **ensmallen** is a high-quality C++ library for non-linear numerical optimization
* provides many types of optimizers that can be used for virtually any numerical optimization task
* examples of included optimizers: L-BFGS, SGD, CMAES and Simulated Annealing
* allows optional callbacks to customize the optimization process

**requirements**

 * recent C++ compiler with C++11 support
 * [Armadillo](http://arma.sourceforge.net) (>= 9.800)
 * OpenBLAS or Intel MKL or LAPACK (see Armadillo site for details)

**license**

  * ensmallen is open source software, licensed under the permissive 3-clause BSD
license.

**download**

 - [ensmallen-2.21.0.tar.gz](files/ensmallen-2.21.0.tar.gz)
 - _vcpkg_: `vcpkg install ensmallen:x64-windows`

**example optimization**
 * see [example.cpp](files/example.cpp) for example usage of the L-BFGS optimizer in a linear regression setting

**citation**

  * Ryan R. Curtin, Marcus Edel, Rahul Ganesh Prabhu, Suryoday Basak, Zhihao Lou, Conrad Sanderson.  
    [The ensmallen library for flexible numerical optimization](https://jmlr.org/papers/volume22/20-416/20-416.pdf).  
    Journal of Machine Learning Research, Vol. 22, No. 166, 2021.

**see also**

 * [documentation](docs.html)
 * [list of developers](developers.html)
 * [bug reports](questions.html)
