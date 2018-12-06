FROM ubuntu:xenial

#docker build -t test .

ARG AET=PENFIELD
ENV E_AET=$AET

ARG PORT=11112
ENV E_PORT=$PORT

ARG OD='/dicoms'
ENV E_OD=$OD

RUN apt-get update && apt-get install -y --no-install-recommends dcmtk

ENTRYPOINT /usr/bin/storescp --aetitle $E_AET $E_PORT --output-directory $E_OD --sort-on-study-uid ''


