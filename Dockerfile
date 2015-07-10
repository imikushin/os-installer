FROM debian:jessie
ADD ./scripts /scripts
RUN /scripts/bootstrap

ENV RANCHEROS_VERSION v0.3.4-dev

ADD tmp/vmlinuz /dist/vmlinuz
ADD tmp/initrd /dist/initrd

ENTRYPOINT ["/scripts/lay-down-os"]
