FROM debian:7.8
ADD ./scripts /scripts
RUN /scripts/bootstrap

ENV RANCHEROS_VERSION v0.1.2

ADD https://github.com/rancherio/os/releases/download/${RANCHEROS_VERSION}/vmlinuz /dist/vmlinuz
ADD https://github.com/rancherio/os/releases/download/${RANCHEROS_VERSION}/initrd /dist/initrd

ENTRYPOINT ["/scripts/lay-down-os"]
CMD ["/dev/sda"]
