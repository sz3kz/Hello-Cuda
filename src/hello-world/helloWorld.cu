#include "../../include/hello-world.h"

using namespace std;

/* Declare kernel (function executable via GPU) */
__global__ void helloWorld(){
  int my_block_id = blockIdx.x;     // Identifies the specific invocation of the kernel
  int my_thread_id = threadIdx.x;   // Identifies the specific thread running
  printf("(%d|%d) Hello World!\n", my_block_id, my_thread_id);
}
