Progress Log
2025-08-06
Tasks Done Today

    Designed and created initial database schemas in SQL Server for dvld_web (schemas: core, lookup, payment, config, log, job, versioning, client, jurisdiction, auth, integration, shared).

    Set up database folder structure to track schema and migration scripts using Git.

    Created dev, staging, and production databases in Azure Data Studio.

    Established process for running schema creation scripts using batch files and shell scripts.

    Configured .env.sample files in backend and frontend to manage environment variables professionally.

    Set up .gitignore to exclude sensitive env files but keep .env.sample tracked for team sharing.

    Initialized Trello board to simulate real-world Agile task management and sprint planning.

    Reviewed and clarified concepts related to schemas, migrations, and environment variable management.

Notes / Challenges

    Learned that schema creation scripts must be run individually or carefully batched due to SQL Server constraints.

    Understanding the difference between storing DB code (migrations) in Git vs. actual DB instances.

    Clarified best practices for env file structure and git tracking to balance security and collaboration.

Next Steps

    Begin designing essential tables and writing migration scripts for core business entities.

    Integrate migration scripts into CI/CD pipeline for automated DB provisioning.

    Flesh out backend API project environment config to load env variables securely.

    Explore seeding sample data for local dev and testing.

    Continue building out Trello backlog and sprint planning for focused development.
