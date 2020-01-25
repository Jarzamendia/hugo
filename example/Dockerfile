FROM jarzamendia/hugo-builder:0.63.1 as builder

ENV HUGO_SOURCE_REPO "github.com/Jarzamendia/prf.git"
#ENV HUGO_SOURCE_USERNAME ""
#ENV HUGO_SOURCE_PASSWORD ""

#RUN git clone "https://${HUGO_SOURCE_USERNAME}:${HUGO_SOURCE_PASSWORD}@${HUGO_SOURCE_REPO}" . ;
RUN git clone "https://${HUGO_SOURCE_REPO}" . ;

RUN hugo;

FROM jarzamendia/caddy:1.0.4

COPY --from=builder /src/public /srv