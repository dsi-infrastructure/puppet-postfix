# Postix

Testé avec Travis CI

[![Build Status](https://travis-ci.org/sipf-infrastructure/postfix.png?branch=master)](https://travis-ci.org/sipf-infrastructure/postfix)

# Installation du module

Dans le répertoire '/etc/puppet/modules', lancez les commandes suivantes :

```
$ mkdir postfix
$ cd postfix
$ git clone https://github.com/sipf-infrastructure/postfix.git .

```

# Utilisation

Dans le fichier '/etc/puppet/manifests/site.pp', on définit ce qui suit :
```
node default {
  class { 'postfix':
    mail_domain = 'example.com',
  }
}
```

