```bash
docker run -p 3000:80 --name node-server -d node-server

# 로컬머신에서 컨테이너로 파일 복사
docker cp dummy/. node-server:test

# 컨테이너에서 로컬머신으로 파일 복사 (로그파일에 주로 사용)
docker cp node-server:test dummy
```