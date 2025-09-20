# VS Code Setup for Carbon Footprint Counter

This directory contains VS Code configurations for running and debugging the Carbon Footprint Counter application.

## Debugging the Application

### Available Debug Configurations

1. **Debug NestJS Application**
   - Starts the application in debug mode with hot-reload
   - Use this for general development and debugging

2. **Debug Current Test**
   - Debugs the currently open test file
   - Make sure you have a test file active in the editor before using this

3. **Debug E2E Tests**
   - Runs and debugs the end-to-end tests

### How to Start Debugging

1. Open the Debug panel in VS Code (Ctrl+Shift+D or Cmd+Shift+D on Mac)
2. Select the desired configuration from the dropdown at the top
3. Click the green play button or press F5 to start debugging

## Available Tasks

You can run the following tasks from VS Code's Terminal menu → Run Task:

### Development Tasks
- **Start NestJS Application**: Runs the app in development mode with hot-reload
- **Build Application**: Compiles the TypeScript code to JavaScript

### Testing Tasks
- **Run Unit Tests**: Executes all unit tests
- **Run E2E Tests**: Executes all end-to-end tests

### Database Tasks
- **Start PostgreSQL Docker**: Starts the PostgreSQL container
- **Stop PostgreSQL Docker**: Stops the PostgreSQL container
- **Run Prisma Studio**: Opens Prisma Studio to view and edit database data
- **Apply Prisma Migrations**: Applies all pending migrations to the database

## Recommended Workflow

1. Start the PostgreSQL container using the "Start PostgreSQL Docker" task
2. Ensure your `.env` file has the correct `DATABASE_URL` 
3. Apply any pending Prisma migrations with the "Apply Prisma Migrations" task
4. Start debugging the application with the "Debug NestJS Application" configuration
5. Use breakpoints to pause execution and inspect variables

## Troubleshooting

- **Database Connection Issues**: Make sure the PostgreSQL Docker container is running
- **Missing Environment Variables**: Check your `.env` file
- **Port Conflicts**: Ensure port 5300 is available for PostgreSQL and port 3000 for the NestJS app
- **Module Resolution Errors**: Run the "Build Application" task to check for compilation errors