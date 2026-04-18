#include "../include/main.h"
#include "../include/hello-world.h"

using namespace std;

int main(int argc, char * argv[] ){
  if (argc != 3){
    puts("Invalid invocation format.");
    printf("\tUsage: %s <blockAmount> <threadAmount>", argv[EXECUTABLE_NAME]);
    return 1;
  }
  unsigned int blocks = static_cast<unsigned int>(std::strtoul(argv[BLOCKS], nullptr, BASE_DECIMAL));
  unsigned int threads_per_block = static_cast<unsigned int>(std::strtoul(argv[THREADS_PER_BLOCK], nullptr, BASE_DECIMAL));
  //printf("block: %ld \n",blocks);
  //printf("threads per block: %ld \n",threads_per_block);
  cout << "Hello World!" << endl;
  helloWorld<<<blocks, threads_per_block>>>();
  cudaDeviceSynchronize();
  return 0;
}
