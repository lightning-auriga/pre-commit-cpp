FROM alpine:3.12

RUN apk add --no-cache \
    clang \
    cppcheck \
    python3 \
    py3-pip \
  && python3 -m pip install --no-cache-dir --upgrade pip \
  && pip3 install --no-cache-dir cpplint
