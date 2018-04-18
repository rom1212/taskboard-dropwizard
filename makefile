default:
	@echo "Usage: To check code, run: make check"
check:
	./check-code.sh
build:
	mvn package -DskipTests
clean:
	mvn clean
