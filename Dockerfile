From ubuntu:latest
RUN mkdir /tmp/my-codebase
RUN apt-get update && apt-get install -y git
ADD src.tar.xz /tmp/my-codebase/
ADD document.txt /tmp/my-codebase/
ADD docs /tmp/my-codebase/

EXPOSE 78 2023
ENTRYPOINT ["git"]
CMD ["--version"]
