dc=docker-compose.yml
mica_home = /tmp/test-mica
agate_home = /tmp/test-agate

install: install-mica install-agate

install-mica:
	sudo mkdir -p ${mica_home}/conf/static
	sudo cp -r static/* ${mica_home}/conf/static
	sudo cp -r mica_home/conf/* ${mica_home}/conf

install-agate:
	sudo mkdir -p ${agate_home}/conf/static
	sudo cp -r static/* ${agate_home}/conf/static
	sudo cp -r agate_home/conf/* ${agate_home}/conf

theme:
	rm -rf static/assets/theme
	mkdir -p static/assets/theme/plugins
	cp -r ../AdminLTE/dist static/assets/theme
	cp -r ../AdminLTE/plugins/bootstrap static/assets/theme/plugins/
	cp -r ../AdminLTE/plugins/chart.js/ static/assets/theme/plugins/
	cp -r ../AdminLTE/plugins/datatables static/assets/theme/plugins/
	cp -r ../AdminLTE/plugins/datatables-select static/assets/theme/plugins/
	cp -r ../AdminLTE/plugins/datatables-bs4/ static/assets/theme/plugins/
	cp -r ../AdminLTE/plugins/fontawesome-free/ static/assets/theme/plugins/
	cp -r ../AdminLTE/plugins/jquery static/assets/theme/plugins/
	cp -r ../AdminLTE/plugins/moment static/assets/theme/plugins/
	cp -r ../AdminLTE/plugins/select2 static/assets/theme/plugins/
	cp -r ../AdminLTE/plugins/select2-bootstrap4-theme static/assets/theme/plugins/
	cp -r ../AdminLTE/plugins/toastr static/assets/theme/plugins/

refresh:
	./refresh.sh

pull:
	sudo docker-compose -f ${dc} pull

restart:
	sudo docker-compose -f ${dc} down
	sudo docker-compose -f ${dc} up -d

build:
	sudo docker-compose -f ${dc} build --no-cache
