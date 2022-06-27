Ansible
===========

Provision ops infrastructure from local Mac.

Requirements
---------------

1. VirtualBox

Getting Started
---------------

1. Export the ansible python interpreter
```export LOCALHOST_PYTHON="$(which python | head -n 1)"```
2. Start minikube and the docker daemon
```minikube start --container-runtime=docker --vm=true```
```eval $(minikube -p minikube docker-env)```
3. Replace all encrypted entriesin the files inside the `secrets` folder
3. Run the playbook ``` cd ansible && ansible-playbook playbooks/analytics.yml ```
