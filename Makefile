MAKE=/usr/bin/make
SSG5=ssg5
page_title="Dashboard SHD"
domain="http://localhost:8000"
src_folder=dashboard/
dst_folder=site/

dashboard:
	${SSG5} ${src_folder} ${dst_folder} ${page_title} ${domain}

debug:
	python -m http.server -d ${dst_folder}

watch:
	inotifywait -r -m -e modify ${src_folder} | while read path _ file; do ${MAKE} SSG5=${SSG5} dashboard; done

.PHONY: dashboard

