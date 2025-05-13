FROM ghcr.io/hablutzel1/ejbca-hsm-driver-free-base:0.2.0

# TODO try to move the following to a builder stage and copy only the minimum files to get a lighter final stage.
RUN microdnf install -y wget
RUN wget -O /tmp/dinamo-4.11.0-1.el8.x86_64.rpm https://downloads.dinamonetworks.io/bin/client/linux/x64/4.11.0/dinamo-4.11.0-1.el8.x86_64.rpm
RUN rpm -i /tmp/dinamo-4.11.0-1.el8.x86_64.rpm
RUN rm /tmp/dinamo-4.11.0-1.el8.x86_64.rpm

COPY dinamo_restricted_mode.cfg /tmp/dinamo/dinamo_restricted_mode.cfg

COPY environment-hsm /opt/dinamo/environment-hsm

ENV HSM_PKCS11_LIBRARY="/usr/lib64/libtacndp11.so"
ENV HSM_PKCS11_LIBRARY_NAME="HSM Dinamo" 
