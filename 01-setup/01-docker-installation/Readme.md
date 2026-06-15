## 01 Dockers

Docker is a tool to run software in isolated boxes called containers. Each container has its own filesystem, network, and processes — but they all share the same Linux kernel underneath. This means you can run an entire web server, database, or app without polluting your Pi's system with installs and dependencies.

Image versus container: 

- An image is the blueprint (e.g. nginx or postgres:15)
- A container is a running instance of the image (so the blueprint)

I like to remember docker as follow: It is like shipping containers over the ocea. Every contianer holds its own complete cargo (the app _ everyting we need), they fit on the same ship (in this case the Pi) and are very well protected from each other to prevent leaking. If one catches fire other won't burn to the ground. 

Extending the metaphor:

- **Image** = the **blueprint**. One drawing, many identical containers.
- **Container** = the **steel box on the ship**. A running, sealed unit doing its job.
- **Dockerfile** = the **build instructions** the factory follows to weld the box together.
- **Registry (Docker Hub)** = the **global port warehouse** where blueprints are stored. AWS version: ECR.
- **Volume** = a **storage shed on the dock**. Ships come and go, the shed stays.
- **Network** = the **shipping lanes** between containers.
- **Port mapping (-p 8080:80)** = the **loading ramp**. Ramp 8080 on the ship → door 80 of the container.
- **Docker Engine** = the **harbor itself**. Cranes, dockworkers, the whole operation.
- **Docker Compose** = the **shipping manifest**. One file launches an entire fleet.
- **Layer** = **stacked cargo in the blueprint**. Unchanged layers get reused — faster rebuilds.