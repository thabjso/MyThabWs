FROM windev/webdev-base:313016

COPY MyThabWS.ZIP ${WEBDEVConfiguration}comptes/install/

RUN set -ex \
	&& cd ${WEBDEVBinaries} \
	&& ${WEBDEVBinaries}WDInstalle /DOCKER/INSTALLEGO/MyThabWS/rest

# Création de la persistance
VOLUME ${WEBDEVConfiguration}comptes/Donnees/MyThabWS/