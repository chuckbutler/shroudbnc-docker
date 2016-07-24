# SHROUDBNC Dockerized

This container can be used to run an sbnc bouncer on your Docker enabled host.

Start up the container first to generate the first time config

    docker run -ti -v sbnc_data:/sbnc lazypower/sbnc su sbnc -c "sbnc --config=/sbnc"

Once you've answered the questions:

    docker run -d -v sbnc_data:/sbnc -p 8000:8000 lazypower/sbnc

This assumes you told sbnc to run on port 8000.

Happy IRC'ing
