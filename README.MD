# docker dcmtk PACS server 

## build:   

```bash
cd project_dir
docker build -t dcmtk_pacs .
```

## push to docker hub:  

```bash
docker login
docker tag dcmtk_pacs yinglilu/dcmtk_pacs:0.1
docker push yinglilu/dcmtk_pacs:0.1
```

## deploy:  

```bash
#received dicom files store in this folder
mkdir -p /dicoms

docker pull yinglilu/dcmtk_pacs

docker run -d --restart=always --log-driver syslog -p 11112:11112 -v /dicoms:/dicoms yinglilu/dcmtk_pacs
```
