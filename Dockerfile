FROM debian as builder

RUN apt-get update -y
RUN apt-get install -y texlive texlive-lang-german texlive-latex-extra

ADD pdf /output
ADD latex /documents/
WORKDIR /documents

RUN for f in *.tex; do pdflatex --interaction=batchmode --output-directory /tmp $f; done

RUN mv /tmp/*.pdf /output

FROM nginx:alpine
COPY --from=builder /output /usr/share/nginx/html
