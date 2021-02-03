---
layout: default-nav
title: Documentation
description: ensmallen | flexible C++ library for efficient numerical optimization
mathjax: true
order: 2
---

# **ensmallen documentation**
{:.no_toc}

ensmallen is a library for function optimization.  It is devoted to efficiently
solving the problem

$$\operatorname{argmin} f(x)$$

for many different types of $f(x)$.  The documentation is split into four parts:

 * [Function type documentation](#function-type-documentation): how to implement
   the different types of functions $f(x)$ that ensmallen can handle

 * [Optimizer documentation](#optimizer-documentation): how to use each of
   ensmallen's optimizers to find $\operatorname{argmin} f(x)$

 * [Callback documentation](#callback-documentation): documentation for
   ensmallen callbacks, which can be used to specify custom behavior during
   optimization

 * [History/changelog](#historychangelog): changes for each version of
   ensmallen

 * [Example program](https://github.com/mlpack/ensmallen/blob/master/example.cpp):
   simple example program demonstrating ensmallen usage

Everything in ensmallen is in the `ens` namespace so it is often useful to put a
`using` directive in your code:

```c++
using namespace ens;
```

# Citation
{:.no_toc}

Please cite the following paper if you use ensmallen in your research and/or software.
Citations are useful for the continued development and maintenance of the library.

* S. Bhardwaj, R. Curtin, M. Edel, Y. Mentekidis, C. Sanderson.
  [ensmallen: a flexible C++ library for efficient function optimization](files/ensmallen_2018.pdf).
  Workshop on Systems for ML and Open Source Software at NIPS 2018.

# Contents
{:.no_toc}

* TOC
{:toc}

# Function type documentation

{% include_relative function_types.md %}

# Optimizer documentation

{% include_relative optimizers.md %}

# Callback documentation

{% include_relative callbacks.md %}

# History/changelog

{% include_relative history.md %}
