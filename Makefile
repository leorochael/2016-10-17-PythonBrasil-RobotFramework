
.PHONY : all
all: odoo/var/odoo/filestore/testdb bin/chromedriver

odoo/var/odoo/filestore/testdb : odoo/bin/start_odoo
	bin/pg_ctl start
	bin/start_odoo --load-language=pt_BR -d testdb --stop-after-init
	bin/pg_ctl stop

odoo/bin/start_odoo : bin/buildout odoo/buildout.cfg bin/lessc
	cd odoo ; ../bin/buildout -Nv

bin/buildout bin/nodeenv : bin/pip requirements.txt
	bin/pip install --upgrade -r requirements.txt

bin/chromedriver : bin/npm
	. bin/activate ;\
		npm install -g chromedriver

bin/lessc : bin/npm
	. bin/activate ;\
	  npm install -g less less-plugin-clean-css

bin/npm : bin/nodeenv
	bin/nodeenv -p --prebuilt

bin/pip :
	virtualenv .
	bin/pip install --upgrade pip
	bin/pip install --upgrade setuptools
