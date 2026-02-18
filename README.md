#  Pipeline CI/CD Azure avec Terraform et GitHub Actions

##  Présentation
Ce projet met en place un pipeline CI/CD complet et automatisé sur Microsoft Azure en utilisant :

- Terraform (Infrastructure as Code)
- GitHub Actions (CI/CD)
- Docker (Conteneurisation)
- Azure Container Apps
- Azure Container Registry (ACR)
- Authentification OIDC (sans mot de passe)

Le pipeline permet de construire, tester, publier et déployer automatiquement une application Flask.

---


##  Architecture


Développeur → GitHub → GitHub Actions → ACR → Azure Container Apps → Production

---

##  Structure 


```bash

ci-cd-azure-devops-pipeline/
│
├── app/
│   ├── app.py
│   └── test_app.py
│
├── Dockerfile
├── requirements.txt
│
├── terraform/
│   ├── provider.tf
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
│
└── .github/
    └── workflows/
        ├── terraform.yml
        └── pipeline.yml


```

---

##  Technologies utilisées



- Microsoft Azure (Container Apps, ACR, Managed Identity)

- Terraform

- GitHub Actions

- Docker

- Python (Flask, Pytest)

- OIDC

- RBAC



---



##  Fonctionnement du pipeline

1\. Push sur la branche `main`

2\. Exécution des tests unitaires

3\. Build de l’image Docker

4\. Push vers Azure Container Registry

5\. Déploiement automatique sur Azure


---


##  Sécurité


- Authentification sans mot de passe via OIDC

- Managed Identity pour l’accès à ACR

- Aucun secret sensible dans le dépôt

---

##  Déploiement

L’infrastructure est provisionnée avec Terraform :


```bash

terraform init
terraform plan
terraform apply
```

## 🌐 Démo en ligne


```bash
https://flask-app-demo.reddune-a48762f9.northeurope.azurecontainerapps.io
```


##  Auteur

```bash
Providence Goma
Ingénieur Cloud / DevOps
GitHub : https://github.com/ggp2



