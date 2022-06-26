#!/bin/bash

cd onnxruntime
./build.sh --update --build --skip_submodule_sync --build_shared_lib --enable_pybind --build_wheel --numpy_version 1.21.3 --config Release --parallel
mkdir -p ../wheels-linux
shopt -s globstar
cp -v build/**/dist/*.whl ../wheels-linux
