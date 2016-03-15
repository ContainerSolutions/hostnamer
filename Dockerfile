FROM scratch

EXPOSE 8080

COPY dist/hostnamer /hostnamer
CMD ["/hostnamer"]
