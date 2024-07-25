# Inherit from a JupyterHub compatible Docker image
FROM pangeo/pangeo-notebook:2024.06.02

# Add conda packages
COPY environment.yml /tmp/environment.yml
RUN echo ${NB_PYTHON_PREFIX}
RUN mamba env update --prefix ${NB_PYTHON_PREFIX} --file /tmp/environment.yml

COPY --chown=${NB_USER}:${NB_USER} image-tests image-tests
