
---

## 🔹 1. backend/api (NestJS)

- **Type** : API principale du backend
- **But** : Fournir les endpoints REST pour manipuler les entités du domaine (clients, tickets, messages, etc.)
- **Fonctions principales** :
  - Reçoit les requêtes du frontend
  - Valide et traite la logique métier
  - Interagit avec la base PostgreSQL via Prisma
  - Éventuellement communique avec des services annexes (classify-lambda, etc.)

---

## 🔹 2. Prisma ORM

- Fichier principal : `prisma/schema.prisma`
- Représente les modèles de données (tables : `Client`, `Project`, `Ticket`, etc.)
- Génère le client TypeScript pour les requêtes SQL
- Centralisé pour tous les services (API, Lambda, etc.)

---

## 🔹 3. PostgreSQL (via Docker)

- Base de données relationnelle
- Contient toutes les entités métier
- Accédée uniquement via Prisma (Nest ou Lambda)

---

## 🔹 4. classify-lambda

- **Type** : Fonction autonome (AWS Lambda ou équivalent)
- **Rôle** :
  - Reçoit des tickets en texte brut
  - Les analyse avec un modèle IA (LLM, API ou modèle embarqué)
  - Retourne une classification (ex: type de problème, urgence, client concerné)
- **Communication** :
  - Peut être appelée par `backend/api`
  - Peut publier des résultats vers une file d’attente (ex: Kafka, SNS) ou en base

---

## 🔹 5. frontend

- UI utilisateur (web app)
- Se connecte à l'API NestJS
- Ne parle jamais directement à la base

---

## 📌 Principes d’architecture

- 📦 Monorepo, avec séparation claire par services : `backend/api`, `classify-lambda`, `frontend`, etc.
- 📚 Prisma centralisé dans le dossier `/prisma`, utilisé par tous
- 🔁 Communication interne par appel HTTP (NestJS -> Lambda), ou files/events plus tard
- ⚙️ Déploiement futur via Docker, CI/CD GitHub Actions, etc.

