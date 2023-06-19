# Docker Volume을 사용하는 3가지 방식

### Anonymous Volume
---
- 컨테이너에 연결된 일종의 볼륨을 생성
- 컨테이너가 제거되면 볼륨도 제거
- --rm 플래그 사용 시 컨테이너 중지에도 볼륨제거 
- 컨테이너 간의 데이터 공유 불가
- Dockerfile의 VOLUME 명령으로 실행되거나 '-v' 로 생성된 경우, 컨테이너에 이미 존재하는 특정 데이터를 잠그는 데 유용 -> 데이터가 다른 모듈에 의해 덮어쓰여지는 것을 방지
- 호스트 머신에 폴더를 생성하기 때문에 read-write 레이어를 관리할 필요 없이 호스트 머신 파일 시스템에 아웃소싱 가능
ex) docker run -v /app/data ...


### Named Volume
---
- Dockerfile에서 생성 불가 컨테이너 실행 시 '-v' 명령으로 생성
- 특정 컨테이너에 연결되어 생성되지 않음
- 컨테이너 종료,제거 시 삭제되지 않음
- 여러 컨테이너 간에 데이터 공유 가능
- 컨테이너 라이프사이클 간에 데이터가 유지 됨
   - ex) docker run -v data:/app/data ...


### Bind Mount : 실제 호스트 머신의 폴더르 가리키는 절대경로
---
- 호스트 머신에 저장되는 위치를 특정할 수 있음
- 특정 컨테이너의 의존성을 갖지 않음
- 컨테이너 라이프사이클 간 데이터 유지
- 데이터를 삭제 할 경우 실제 호스트 머신에서 삭제해야 함
   - ex) docker run -v /path/to/code:/app/code ... 
