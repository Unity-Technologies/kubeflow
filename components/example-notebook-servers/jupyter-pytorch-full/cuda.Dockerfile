FROM gcr.io/unity-ai-data-mlp-prd/kubeflow/jupyter/pytorch-gpu:v1.4-vuln-patch

# install - requirements.txt
COPY --chown=jovyan:users requirements.txt /tmp/requirements.txt
RUN python3 -m pip install -r /tmp/requirements.txt --quiet --no-cache-dir \
 && rm -f /tmp/requirements.txt
