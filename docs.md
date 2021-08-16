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

* Ryan R. Curtin, Marcus Edel, Rahul Ganesh Prabhu, Suryoday Basak, Zhihao Lou, Conrad Sanderson.  
  [The ensmallen library for flexible numerical optimization](https://jmlr.org/papers/volume22/20-416/20-416.pdf).  
  Journal of Machine Learning Research, Vol. 22, No. 166, 2021.  ([bibtex](https://jmlr.org/papers/v22/20-416.bib))

See also the following paper detailing the internal design of ensmallen:

* R.R. Curtin, M. Edel, R. Prabhu, S. Basak, Z. Lou, C. Sanderson.
  [Flexible numerical optimization with ensmallen](files/ensmallen_tr.pdf).
  arXiv preprint [2003.01403](https://arxiv.org/abs/2003.04103).
  ([bibtex](files/ensmallen_tr.bib))

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
