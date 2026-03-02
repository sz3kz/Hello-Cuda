#include "../../include/hello-world.h"

using namespace std;

/* Declare kernel (function executable via GPU) */
__global__ void helloWorld(){
  printf("Hello World!\n");
}
