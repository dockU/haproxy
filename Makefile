build:
    cd meta && docker build -t haproxy-build && docker run -d -v build:/opt/build/ haproxy-build
