FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install


# Bind Mount 시에 COPY Snapshot을 생성하지 않아도 동작하지만, 프로덕션 환경에서 소스코드의 변경사항을 
# 추적할 필요가 없기 때문에, Sanpshot 생성 명령어를 넣어줌

COPY . .

EXPOSE 80

CMD [ "npm", "start" ]