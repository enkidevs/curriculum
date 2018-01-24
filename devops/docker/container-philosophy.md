## Container Philosophy

Containers are meant to be **immutable** and **ephemeral**.
This allows us to build an immutable infrastructure where we only start/stop and re-deploy containers but never change them.
Any update is done by re-deploying a new container, not by changing existing ones.

Containers derived from the same image are identical to each other in terms of their application code and runtime dependencies

But unlike images, which are read-only, running containers include a writable layer (the container layer) on top of the read-only layers of the image. Runtime changes, including any writes and updates to data and files, are saved in the container layer. Thus, multiple concurrent running containers that share the same underlying image may have container layers that differ substantially.
