# Inherit from a JupyterHub compatible Docker image
FROM pangeo/pangeo-notebook:2024.06.02

# Add conda packages
COPY environment.yml /tmp/environment.yml
RUN mamba env update --prefix ${CONDA_ENV} --file /tmp/environment.yml

COPY --chown=${NB_USER}:${NB_USER} image-tests image-tests
