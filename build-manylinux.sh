PATH="/opt/python/cp310-cp310/bin:$PATH"
pip install cmake numpy
git config --global --add safe.directory '*'
cd /vol

bash ./build-posix.sh
