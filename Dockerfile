FROM alpine:3.8

RUN set -eux; \
	apk add --no-cache wget ; \
	wget -O preview.tgz --no-check-certificate "https://github.com/ggggle/preview-docker/releases/download/1.0/preview.tgz"; \
	tar -C /usr/local -xzf preview.tgz; \
	rm preview.tgz;
	
WORKDIR /usr/local/alpine
	
CMD ["./dmm-preview"]