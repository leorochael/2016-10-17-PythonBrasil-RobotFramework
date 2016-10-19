
.PHONY : all
all: odoo/bin/start_odoo

odoo/bin/start_odoo : bin/buildout odoo/buildout.cfg
	cd odoo ; ../bin/buildout -Nv

bin/buildout bin/nodeenv : bin/pip requirements.txt
	bin/pip install --upgrade -r requirements.txt

bin/chromedriver : bin/npm
	source bin/activate ;\
		npm install -g chromedriver

bin/lessc : bin/npm
	source bin/activate ;\
	  npm install -g less less-plugin-clean-css

bin/npm : bin/nodeenv
	bin/nodeenv -p --prebuilt

bin/pip :
	virtualenv .
	bin/pip install --upgrade pip
	bin/pip install --upgrade setuptools
