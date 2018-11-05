---
layout: default-nav
title: Documentation
description: ensmallen | flexible C++ library for efficient mathematical optimization
mathjax: true
order: 2
---

# **ensmallen documentation**
{:.no_toc}

ensmallen is a library for function optimization.  It is devoted to efficiently
solving the problem

$$\operatorname{argmin} f(x)$$

for many different types of $f(x)$.  The documentation is split into two parts:

 * [Function type documentation](#function-type-documentation): how to implement
   the different types of functions $f(x)$ that ensmallen can handle

 * [Optimizer documentation](#optimizer-documentation): how to use each of
   ensmallen's optimizers to find $\operatorname{argmin} f(x)$

Everything in ensmallen is in the `ens` namespace so it is often useful to put a
`using` directive in your code:

```c++
using namespace ens;
```

# Contents
{:.no_toc}

* TOC
{:toc}

# Function type documentation

{% include_relative function_types.md %}

# Optimizer documentation

{% include_relative optimizers.md %}
