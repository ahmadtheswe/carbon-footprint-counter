# Prisma Documentation

This document provides basic information on how to use Prisma in the Carbon Footprint Counter application.

## Prerequisites

- Node.js and npm installed
- PostgreSQL database running (via Docker or locally)
- Connection string configured in `.env` file

## Basic Commands

### Initialize Prisma

```bash
npx prisma init
```

### Generate Prisma Client

After making changes to your schema, generate the Prisma client:

```bash
npx prisma generate
```

### Create Migrations

Create a new migration from schema changes:

```bash
npx prisma migrate dev --name <migration_name>
```

Example:
```bash
npx prisma migrate dev --name add_emissions_factor_table
```

### Apply Migrations

Apply all pending migrations to the database:

```bash
npx prisma migrate deploy
```

### Reset Database

Reset the database and apply all migrations:

```bash
npx prisma migrate reset
```

### View Database in Prisma Studio

Open Prisma Studio to view and edit data:

```bash
npx prisma studio
```

## Database Schema

The current schema includes:

- Emission factors tables
- Other tables defined in `schema.prisma`

## Working with Prisma in NestJS

1. Import the `PrismaService` in your modules
2. Inject the service into your controllers or services
3. Use the client to query your database

Example:
```typescript
import { PrismaService } from './prisma.service';

@Injectable()
export class YourService {
  constructor(private prisma: PrismaService) {}

  async findAll() {
    return this.prisma.emissionFactor.findMany();
  }
}
```

## Troubleshooting

- If you encounter connection issues, check your DATABASE_URL in the `.env` file
- Make sure your Docker container is running with `docker-compose -f docker/postgresql-docker-compose.yml up -d`
- For schema validation errors, check the constraints in your Prisma schema

## Further Reading

- [Prisma Documentation](https://www.prisma.io/docs/)
- [Prisma with NestJS](https://docs.nestjs.com/recipes/prisma)