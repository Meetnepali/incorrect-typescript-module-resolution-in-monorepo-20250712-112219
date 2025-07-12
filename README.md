# Task: Incorrect TypeScript Module Resolution in Monorepo

## Scenario
You are working in a monorepo TypeScript project with multiple packages and a shared module. Recently, TypeScript configuration changes have caused shared imports (e.g., `@shared/models`) to fail to resolve in some packages, and null safety is not being enforced as expected.

## Your Goal
- Fix the TypeScript configuration so path aliases like `@shared/models` resolve correctly in all packages
- Ensure strict null safety (`strictNullChecks`) is enforced everywhere

## Structure
```
monorepo/
├── package.json
├── tsconfig.base.json
├── packages/
│   ├── api/
│   │   ├── package.json
│   │   ├── tsconfig.json
│   │   └── src/
│   │       └── handler.ts
│   └── shared/
│       ├── package.json
│       ├── tsconfig.json
│       └── models/
│           └── user.ts
```

## Setup Instructions
1. Run `./install.sh` to install dependencies and build Docker images.
2. Run `./run.sh` to start the environment and execute the TypeScript compiler in the API package.

## Investigation
- Investigate why imports from `@shared/models` fail in the `api` package.
- Check why nullable references are not flagged by the TypeScript compiler in `api/src/handler.ts`.

## Expected Outcomes
- Once fixed, running the TypeScript compiler in `api` should succeed in resolving all path aliases and flag null safety errors where applicable.

## Verification
- After fixing, re-run `./run.sh`. There should be no module resolution errors.
- The TypeScript compiler should report any strict null check violations in `api/src/handler.ts`.
