### Tradeoff due to lack of resource:
    1. I would push my terraform code to a SCM and provision my infrastructure through a pipeline
    2. I would add a backend.tf to create a S3 backend to prevent data inconsistency working in collaboration with my team
    3. 