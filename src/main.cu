#include "../include/main.h"
#include "../include/hello-world.h"

using namespace std;

int main(int argc, char * argv[] ){
  if (argc != 3){
    puts("Invalid invocation format.");
    printf("\tUsage: %s <blockAmount> <threadAmount>", argv[0]);
    return 1;
  }
  long blocks = strtol(argv[1], NULL, 10);
  long threads_per_block = strtol(argv[2], NULL, 10);
  //printf("block: %ld \n",blocks);
  //printf("threads per block: %ld \n",threads_per_block);
  cout << "Hello World!" << endl;
  helloWorld<<<blocks, threads_per_block>>>();
  cudaDeviceSynchronize();
  return 0;
}
