# TicketBot-AI
This project is developed by a small team as both a production-grade SaaS initiative and a learning opportunity to master serverless infrastructure, modern cloud patterns, and LLM integration

# TicketBot AI

TicketBot AI is a SaaS platform designed to automate customer support ticket processing from platforms like Zendesk or Freshdesk, aimed at e-commerce businesses.

The system retrieves incoming tickets, classifies them using a large language model (LLM), and either generates an automatic response or routes them to a human support agent depending on their category.

## Core Features

- Integration with customer support platforms (Zendesk, Freshdesk, etc.)
- Automatic ticket classification via LLM
- Customizable taxonomy per client
- Automatic response generation for simple tickets
- Routing to human support for complex or sensitive cases
- Admin interface to manage categories and review ticket history
- Multi-tenant architecture (multiple client accounts)

## Tech Stack

- **Backend**: TypeScript, NestJS, AWS Lambda (serverless)
- **Infrastructure as Code**: AWS CDK (TypeScript)
- **Database**: PostgreSQL (Aurora Serverless in prod, Docker in local)
- **Queueing / Async**: Amazon SQS
- **Frontend**: React (TypeScript, not yet implemented)
- **LLM Providers**: OpenAI (GPT-4), Anthropic planned
- **CI/CD**: GitHub Actions

## Architecture Overview

The system follows a serverless microservice architecture on AWS. Each business function is isolated in its own Lambda and orchestrated via SQS queues to ensure resilience and asynchronous processing.

### Main Lambdas

- `ingest-ticket`: receives tickets via webhook or polling
- `classify-ticket`: calls LLM to classify the ticket
- `respond-or-route`: generates a response or forwards to human support
- `update-taxonomy`: lets clients manage their category configuration

## Environments

- **Local**: PostgreSQL via Docker, NestJS APIs run locally
- **AWS Dev**: Serverless stack deployed via CDK (Lambdas, SQS, Aurora)
- **Staging / Prod**: coming soon

## Local Development

Requirements:

- Node.js 18+
- Docker
- AWS CLI configured (for CDK usage)
- OpenAI account + API key

```bash
# Start local PostgreSQL
docker-compose up -d db

# Start classify Lambda locally (example)
cd backend/classify-lambda
npm install
npm run start:dev
emmanuelle.THOONSEN@celad.com. Appuyez sur Tabulation pour insérer.
