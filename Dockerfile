# 1) 베이스로 사용할 JDK 이미지 지정
FROM openjdk:17-jdk-slim

# 2) 컨테이너 내에서 사용 가능한 변수 지정
ARG JAR_FILE=/build/libs/*.jar

# 3) 선언한 JAR_FILE 변수를 컨테이너의 app.jar로 복사
COPY ${JAR_FILE} app.jar

# 4) 컨테이너 시작 시 실행할 명령
ENTRYPOINT ["java", "-jar", "/app.jar"]