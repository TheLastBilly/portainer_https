FROM portainer/portainer

RUN apt install openssl

RUN mkdir /gen_cert
COPY ./gen_cert.sh /gen_cert/
COPY ./settings.csr /gen_cert/
RUN cd /gen_cert && sh ./gen_cert.sh

RUN mkdir /certs
RUN cp /gen_cert/cert* /certs/

RUN rm -rf /gen_cert