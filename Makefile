theme:
	rm -rf mica_home/conf/static/assets/theme
	mkdir -p mica_home/conf/static/assets/theme/plugins
	cp -r ../AdminLTE/dist mica_home/conf/static/assets/theme
	cp -r ../AdminLTE/plugins/bootstrap mica_home/conf/static/assets/theme/plugins/
	cp -r ../AdminLTE/plugins/chart.js/ mica_home/conf/static/assets/theme/plugins/
	cp -r ../AdminLTE/plugins/datatables mica_home/conf/static/assets/theme/plugins/
	cp -r ../AdminLTE/plugins/datatables-bs4/ mica_home/conf/static/assets/theme/plugins/
	cp -r ../AdminLTE/plugins/fontawesome-free/ mica_home/conf/static/assets/theme/plugins/
	cp -r ../AdminLTE/plugins/jquery mica_home/conf/static/assets/theme/plugins/
	cp -r ../AdminLTE/plugins/moment mica_home/conf/static/assets/theme/plugins/
	cp -r ../AdminLTE/plugins/toastr mica_home/conf/static/assets/theme/plugins/
	rm -rf agate_home/conf/static/assets/theme
	mkdir -p agate_home/conf/static/assets/theme
	cp -r mica_home/conf/static/assets/theme agate_home/conf/static/assets/
