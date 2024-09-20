FROM jenkins/jenkins:lts

# Jenkins için root kullanıcısını aktif hale getirelim
USER root

# Gereken paketleri yükleyelim
RUN apt-get update && apt-get install -y \
    git \
    curl \
    unzip

# Gereken dizinleri oluşturup izinlerini ayarlayalım
RUN mkdir -p /var/jenkins_home && chown -R jenkins:jenkins /var/jenkins_home

# Kullanıcıyı tekrar jenkins'e döndürelim
USER jenkins
