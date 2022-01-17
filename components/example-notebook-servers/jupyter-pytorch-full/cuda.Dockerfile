FROM gcr.io/unity-ai-data-mlp-prd/kubeflow/jupyter/pytorch-gpu:latest

# install - requirements.txt
COPY --chown=jovyan:users requirements.txt /tmp/requirements.txt
RUN python3 -m pip install -r /tmp/requirements.txt --quiet --no-cache-dir \
 && rm -f /tmp/requirements.txt
