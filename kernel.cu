#include <stdio.h>

#define TILE_SIZE 16

__global__ void matAdd(int dim, const float *A, const float *B, float* C) {

    /********************************************************************
     *
     * Compute C = A + B
     *   where A is a (dim x dim) matrix
     *   where B is a (dim x dim) matrix
     *   where C is a (dim x dim) matrix
     *
     ********************************************************************/

    /*************************************************************************/
    // INSERT KERNEL CODE HERE
        int i = threadIdx.x + blockDim.x * blockIdx.x;

        int dimensions = dim*dim;

        if(i < dimensions)
        {
            C[i] = A[i] + B[i];
        }


    /*************************************************************************/

}

void basicMatAdd(int dim, const float *A, const float *B, float *C)
{
    // Initialize thread block and kernel grid dimensions ---------------------

    const unsigned int BLOCK_SIZE = TILE_SIZE;
	
    /*************************************************************************/
    //INSERT CODE HERE

    int number_of_blocks = ((dim*dim) - 1)/BLOCK_SIZE + 1;

    dim3 Dimension_Grid(number_of_blocks, 1, 1);
    dim3 Dimension_Block(BLOCK_SIZE,  1, 1);
    /*************************************************************************/
	
	// Invoke CUDA kernel -----------------------------------------------------

    /*************************************************************************/
    //INSERT CODE HERE
	matAdd<<<Dimension_Grid,Dimension_Block>>>(dim,A,B,C);
    /*************************************************************************/

}

