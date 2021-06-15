FROM mcr.microsoft.com/dotnet/sdk:5.0

RUN cd /opt/ && mkdir mongo && cd mongo \
    && curl -O https://downloads.mongodb.com/compass/mongosh-0.15.0-linux-x64.tgz \
    && tar -xvf  mongosh-0.15.0-linux-x64.tgz && rm mongosh-0.15.0-linux-x64.tgz

RUN echo alias mongo=/opt/mongo/bin/mongosh >> ~/.bashrc

