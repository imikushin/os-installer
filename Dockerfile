FROM debian:jessie
ADD ./scripts /scripts
RUN /scripts/bootstrap

ENV RANCHEROS_VERSION v0.3.1

ADD http://localhost:10080/dist/artifacts/vmlinuz /dist/vmlinuz
ADD http://localhost:10080/dist/artifacts/initrd /dist/initrd

ENTRYPOINT ["/scripts/lay-down-os"]
