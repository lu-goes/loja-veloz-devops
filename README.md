# Loja Veloz – Plataforma de Pedidos Cloud-Native

## 📌 Visão Geral

Este repositório apresenta a proposta de modernização da aplicação **Pedidos Veloz**, uma plataforma de e-commerce baseada em arquitetura de microsserviços, utilizando práticas modernas de **DevOps Cloud-Native**. O projeto contempla desde o ambiente local de desenvolvimento até a execução em produção com Kubernetes, CI/CD automatizado e observabilidade.

O objetivo é demonstrar como a automação, a padronização de ambientes e a observabilidade contribuem para reduzir riscos de deploy, aumentar a escalabilidade e melhorar a confiabilidade do sistema.

---

## 🧱 Arquitetura da Solução

A aplicação é composta pelos seguintes componentes:

* API Gateway (HTTP)
* Serviço de Pedidos
* Serviço de Pagamentos
* Serviço de Estoque
* Banco de Dados PostgreSQL
* Mensageria (opcional) para eventos assíncronos

Os serviços seguem o padrão de microsserviços, com comunicação síncrona via HTTP e assíncrona via eventos, garantindo desacoplamento e maior resiliência.

---

## 🐳 Ambiente Local com Docker Compose

O ambiente local foi padronizado utilizando **Docker Compose**, permitindo que todos os serviços sejam iniciados com um único comando.

### Pré-requisitos

* Docker
* Docker Compose

### Execução

```bash
docker compose up -d
```

Esse comando inicializa todos os serviços, incluindo banco de dados e dependências, garantindo reprodutibilidade do ambiente de desenvolvimento.

---

## 📦 Conteinerização e Versionamento

Cada microsserviço possui um **Dockerfile** próprio, seguindo boas práticas:

* Multi-stage build
* Imagens enxutas
* Execução com usuário não-root
* Versionamento semântico das imagens

As imagens são publicadas em um registry remoto (ex.: Docker Hub ou GitHub Container Registry).

---

## ☸️ Kubernetes – Produção

Para o ambiente de produção, a aplicação é executada em um cluster Kubernetes.

### Recursos utilizados

* Deployments
* Services
* ConfigMaps
* Secrets
* Readiness e Liveness Probes

Os manifests estão organizados por serviço, facilitando manutenção e evolução da solução.

---

## 🔁 CI/CD com GitHub Actions

O pipeline de CI/CD automatiza o processo de entrega contínua, contemplando:

* Build das imagens Docker
* Execução de testes automatizados
* Publicação das imagens no registry
* Deploy automatizado no Kubernetes

Secrets sensíveis são gerenciados de forma segura pelo GitHub Actions.

---

## 📊 Observabilidade e Escalabilidade

A observabilidade do sistema é baseada nos três pilares:

* **Métricas**: Prometheus
* **Logs**: stdout (centralizáveis)
* **Tracing distribuído**: OpenTelemetry

A escalabilidade é garantida por meio do **Horizontal Pod Autoscaler (HPA)**, configurado com base no consumo de CPU.

---

## 🏗️ Infraestrutura como Código (Terraform)

A infraestrutura é descrita utilizando **Terraform**, mesmo que em nível de esqueleto, permitindo:

* Reprodutibilidade dos ambientes
* Versionamento da infraestrutura
* Maior governança sobre mudanças

---

## 🎥 Vídeo Pitch

O vídeo de apresentação do projeto está disponível no link abaixo:

🔗 *(inserir link do YouTube – não listado)*

---

## 📚 Referências

* Kubernetes Documentation
* Docker Documentation
* Terraform Documentation
* GitHub Actions Documentation
* 12-Factor App
* Martin Fowler – Microservices
