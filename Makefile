
all:
	make clean
	make restart
	make show

restart:
	mkdir -p ./temp
	bash ./helpers/restart.sh

clean:
	rm -rf ./temp

show:
	xdg-open ./src/workbench.html

