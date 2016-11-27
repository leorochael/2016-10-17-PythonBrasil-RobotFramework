==============================================
Demonstração do uso do Robot Framewor + Sphinx
==============================================

Essas instruções assumem uso do Ubuntu 14.04 ou superior

Instalação
==========

Configure o Repositório do PostgreSQL 9.6
-----------------------------------------

Siga as instruções para adicionar o do repositório de pacotes do PostgreSQL em

 * https://www.postgresql.org/download/linux/ubuntu/

Note que, nesta data (2016-10-14), para instalar a versão 9.6 do PostgreSQL,
é necessário explicitamente pedir o componente ``9.6`` do repositório. Ou seja
sua linha de configuração do apt deve ser assim::

  deb http://apt.postgresql.org/pub/repos/apt/ <sua distro>-pgdg main 9.6

Onde ``<sua distro>`` deve ser substituído pelo nome da sua distribuição.

Instale pacotes do sistema necessários
--------------------------------------

.. code::

   sudo apt-get update
   sudo apt-get install postgresql-9.6 libpq-dev libjpeg-turbo8-dev \
       libxml2-dev libxslt1-dev libevent-dev libsasl2-dev libldap2-dev \
       libpng12-dev npm

