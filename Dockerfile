FROM alpine:3.12
ENV clang_version=10.0.0-r2
LABEL description="Clang Format ${clang_version}"
RUN apk add --no-cache clang=${clang_version} git jq bash
RUN apk add --no-cache clang git jq
COPY .clang-format /.clang-format
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]