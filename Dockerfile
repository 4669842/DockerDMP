FROM mono
RUN apt-get update
RUN apt-get install -y tzdata unzip zip git wget
RUN wget https://d-mp.org/downloads/release/latest/DMPServer.zip
RUN unzip DMPServer.zip
RUN wget http://godarklight.info.tm/dmp/downloads/plugins/DMPServerListReporter2/DMPServerListReporter.dll -P /DMPServer/Plugins/
EXPOSE 6702
CMD ["mono", "/DMPServer/DMPServer.exe"]
