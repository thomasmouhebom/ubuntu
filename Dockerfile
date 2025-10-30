FROM httpd:2.4

# Copie ton CMS dans le dossier web Apache
COPY ./cms/ /usr/local/apache2/htdocs/

# Active mod_rewrite (utile pour les CMS type WordPress)
RUN sed -i '/LoadModule rewrite_module/s/^#//g' /usr/local/apache2/conf/httpd.conf

