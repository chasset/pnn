---
layout: project-default
code: pnn
title: PNN
tagline: How to evaluate the performance?
---

This tutorial shows how to evaluate the performance of a Probabilistic neural network from the library [PNN](http://pnn.chasset.net) of the R statistical software. We suppose that you know how to install PNN and how to use it.

Before evaluating the performance, we need to get a working Probabilistic neural network:

```
> library(pnn)
> set.seed(1)
> data(norms, package = "pnn")
> pnn <- learn(norms)
> pnn <- smooth(pnn, sigma = 0.72)
```

We can now evaluate the performance of our Probabilistic neural network.

```
> pnn <- perf(pnn)
```

First, let us see the observed values coming from the training set 'norms'.

```
> pnn$observed
  [1] A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A
 [36] A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A
 [71] A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A
[106] A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A
[141] A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A
[176] A A A A A A A A A A A A A A A A A A A A A A A A A B B B B B B B B B B
[211] B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B
[246] B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B
[281] B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B
[316] B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B
[351] B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B
[386] B B B B B B B B B B B B B B B
Levels: A B
```

These observed categories can be compared with the following guessed categories.

```
> pnn$guessed
  [1] A A A A A A B A A A A A A A A A A A A A A A A A A A A A A A A A A A B
 [36] A A A A A A A A A A A A A A A A A A A A A A A A B A A A A A A A B A A
 [71] A B A B A A B A A A A A B A A A A A A A A A A A A A A A A A A A A A A
[106] A A A A A A A A A A A A A A A A A A A A A A A A B A A A A A A A A A A
[141] A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A A
[176] A A A A A A A A A A A A A A A A A A A A A A A A A B B B B B A B B A B
[211] B B B B B B B B B B B B B B B B A B B B B B B B B B B B B B A A B B B
[246] B B B B B B B B B B A B B B B B B B B B A B B A A B B B B B B B B B B
[281] B B B A A B B B B B B B B B B B B B B B A B A B B B B B B B B B B B B
[316] B B B B B B B B B B B B A B B B B B B B B B B B B B A B B A B B B B B
[351] B B A B B B B B B B B B B B B A B B B B B B B B B B B B B B B B B B B
[386] B B B A B B B B A B B B B B B
Levels: A B
```

The results of this performance test are:

* The number of success.

```
> pnn$success
[1] 371
```

* The number of fails.

```
> pnn$fails
[1] 29
```

* The success rate.

```
> pnn$success_rate
[1] 0.9275
```

* The Bayesian information criterion.

```
> pnn$bic
[1] -1037
```
