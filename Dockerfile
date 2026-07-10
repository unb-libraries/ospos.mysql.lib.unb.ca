FROM mysql:5.7

ENV TZ="America/Moncton"

COPY ./conf.d /etc/mysql/conf.d

# Metadata
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL ca.unb.lib.generator="mysql" \
      org.opencontainers.image.title="ospos.mysql.lib.unb.ca" \
      org.opencontainers.image.description="ospos.mysql.lib.unb.ca provides database storage for Point-Of-Sale transactions at UNB Libraries." \
      org.opencontainers.image.vendor="University of New Brunswick Libraries" \
      org.opencontainers.image.authors="UNB Libraries <libsupport@unb.ca>" \
      org.opencontainers.image.source="https://github.com/unb-libraries/ospos.mysql.lib.unb.ca" \
      org.opencontainers.image.revision="$VCS_REF" \
      org.opencontainers.image.version="$VERSION" \
      org.opencontainers.image.created="$BUILD_DATE"
