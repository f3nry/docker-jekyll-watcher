FROM jekyll/builder:3.6

RUN apk add git

RUN git --version
RUN ruby -v

RUN jekyll -v

COPY builder.rb /var/run/builder.rb
COPY ssh-config /root/.ssh/config

CMD ["ruby", "/var/run/builder.rb"]
