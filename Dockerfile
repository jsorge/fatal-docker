FROM swift:5.7.1-focal

WORKDIR /package
COPY . ./
RUN swift package resolve
RUN swift package clean

CMD ["swift", "test"]
