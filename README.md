```python
from pathlib import Path

readme = """# ViteGourmand — API Symfony (PHP 8 / MySQL)

API développée avec **Symfony** (contrôleurs) en **PHP 8** et **MySQL**, déployable en production avec **Apache**.

> Remplacez les valeurs entre `<>` (ex. `<VOTRE_REPO>`, `<api.mondomaine.com>`, etc.).

---

## Sommaire
- [Stack technique](#stack-technique)
- [Prérequis](#prérequis)
- [Installation et exécution en local](#installation-et-exécution-en-local)
- [Variables d’environnement](#variables-denvironnement)
- [Base de données et migrations](#base-de-données-et-migrations)
- [Tests](#tests)
- [Déploiement en production (Apache + PHP-FPM + MySQL)](#déploiement-en-production-apache--php-fpm--mysql)
- [Configuration Apache (VirtualHost)](#configuration-apache-virtualhost)
- [HTTPS (optionnel mais recommandé)](#https-optionnel-mais-recommandé)
- [Smoke tests (validation rapide)](#smoke-tests-validation-rapide)
- [Checklist Livraison (Université)](#checklist-livraison-université)
- [Livrables](#livrables)
- [Dépannage](#dépannage)

---

## Stack technique
- PHP 8.x
- Symfony (API via contrôleurs)
- Apache 2.4 (production)
- MySQL 8.x
- Composer 2.x
- Doctrine ORM + Migrations (si utilisé)

---

## Prérequis
### En local
- PHP 8.x
- Composer 2.x
- MySQL 8.x
- Extensions PHP recommandées : `pdo_mysql`, `intl`, `mbstring`, `xml`, `curl`, `zip`

### En production (serveur)
- Ubuntu/Debian (ou équivalent)
- Apache 2.4
- PHP-FPM 8.x + extensions
- MySQL 8.x
- Certbot (optionnel, recommandé pour HTTPS)

---

## Installation et exécution en local

### 1) Cloner et installer les dépendances
```bash
git clone https://github.com/<VOTRE_USER>/<VOTRE_REPO>.git
cd <VOTRE_REPO>
composer install
