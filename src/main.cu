#include "../include/main.h"
#include "../include/hello-world.h"

using namespace std;

int main(){
  cout << "Hello World!" << endl;
  helloWorld<<<1,2>>>();
  cudaDeviceSynchronize();
  return 0;
}
