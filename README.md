# Hello Cuda
A classic "hello world" program written utilizing the CUDA parallel computing platform.

## How 2 Use
```bash
# Clone the repository
git clone git@github.com:sz3kz/Hello-Cuda.git
cd Hello-Cuda/

# Activate CMake configuration custom git submodule
make dotfiles-activate

# Build the project
mkdir build
cd build/
cmake ..
make
```

Example execution:
```bash
# Execute (user assumed to be in build/ directory)
./compute 1 2
```
