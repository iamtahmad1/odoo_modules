FROM bitnami/odoo

RUN apt-get update && apt-get install -y build-essential libgl1 libglib2.0-0

WORKDIR /opt/bitnami/odoo/

COPY custom_modules/requirement.txt ./

RUN venv/bin/pip install -r requirement.txt

RUN mkdir -p /opt/bitnami/odoo/addons_custom

RUN mkdir -p /opt/bitnami/odoo/test

ADD custom_modules /opt/bitnami/odoo/addons_custom/

EXPOSE 8069 8071 8072

RUN mkdir -p /home/odoo/nltk_data

RUN chmod -R 777 /home/odoo/

RUN chmod -R 777 /opt/bitnami/odoo/addons_custom/