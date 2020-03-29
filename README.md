# ChaospottDocuments

Chaospott legal documents

This repo will update the chaospott/documents container on dockerhub using circleci and will be automatically deployed so that the generated pdf files will be available under https://documents.chaospott.de/YOURFILE.pdf
It takes a few minutes to render new data.

If you want to use it manually you can use it with theese commands:
Build with
```bash
docker build -t chaospott/documents .
```

Run with
```bash
docker run -d -p 80:80 chaospott/documents
```
