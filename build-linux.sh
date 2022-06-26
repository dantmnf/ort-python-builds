#!/bin/bash

cd onnxruntime
./build.sh --update --build --skip_submodule_sync --build_shared_lib --enable_pybind --build_wheel --config Release --parallel
mkdir -p ../wheels-linux
shopt -s globstar
cp -v build/**/dist/*.whl ../wheels-linux
