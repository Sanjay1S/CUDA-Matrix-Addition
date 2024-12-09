## Assignment 1 - CUDA and Bender Setup

### _Name_ : Sanjay Srinivasa
### _SID_ : 862548647

---------------------------------------------

### _Q1_ - How many total thread blocks do we use?
```
= (1000*1000)/256 
= 3906.5
= 3907 thread blocks
``` 
####  - In total, for this matrix addition, we use 3969 thread blocks

### _Q2_ - Are all thread blocks full? That is, do all threads in the thread block have data to operate on?
``` 
No, we are not using all threads, so the grid is not full. There will be 192 threads which will be unused or not operated on.
```

### _Q3_ - How can this basic Matrix Addition program be improved? What changes do you think can be made to speed up the code?
``` 
Answer - This program of Matrix Addition can be improved by decreasing the matrix size and increase the block size (32x32)
```

