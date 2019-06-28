FROM nginx
RUN echo "Building hello makisu ..."
COPY html/ /usr/share/nginx/html/
