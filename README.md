# Usage

**Before you start:**
You must first clone the base image repository at the same directory level as this one, since this project uses a sample EJBCA image included in the base image repository.

```sh
cd ..
git clone https://github.com/hablutzel1/docker-ejbca-hsm-driver-free-base.git
```

## Running the Sample

1. Modify the environment variables in `compose.yaml` to match your HSM details.
2. Open a terminal in this directory.
3. Run:
   ```sh
   docker compose up --build
   ```
4. Access EJBCA at https://localhost:8443/ejbca/adminweb
5. When finished, stop everything with:
   ```sh
   docker compose down
   ```
