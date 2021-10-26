FROM ejaftech/e-odoo14:14.0.20210928
USER root
RUN set -x; \
	apt-get update \
		&& pip3 install --upgrade xlrd xmltodict pillow setuptools \
		&& apt-get install python-openpyxl python3-openpyxl gcc libqpdf-dev python3-dev build-essential -y 
RUN pip3 install geoip2
RUN pip3 install wheel
USER odoo