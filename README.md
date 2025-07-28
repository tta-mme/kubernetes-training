# Kubernetes training

## kubectl commands

### List resources in current namespace
<pre><code>kubectl get nodes  
kubectl get namespaces  
kubectl get pods  
kubectl get deployments  
kubectl get services  
kubectl get configmaps  
kubectl get secrets  
kubectl get persistentvolumes  
kubectl get persistentvolumeclaims  
kubectl get all</code></pre>

### List resources in selected namespace
<pre><code>kubectl get pods -n NAMESPACE  
kubectl get pods -n NAMESPACE -w  
kubectl get deployments -n NAMESPACE</code></pre>

### List resources from all namespaces
<pre><code>kubectl get pods -A</code></pre>

### List resources with more details
<pre><code>kubectl get nodes -o wide  
kubectl get pods -o wide</code></pre>

### Output as yaml
<pre><code>kubectl get deployment DEPLOYMENT_NAME -o yaml  
kubectl get configmap CONFIGMAP_NAME -o yaml</code></pre>

### Describe resource
<pre><code>kubectl describe pod POD_ID 
kubectl describe deployment DEPLOYMENT_NAME</code></pre>

### View logs
<pre><code>kubectl logs POD_ID  
kubectl logs POD_ID CONTAINER_NAME
kubectl logs POD_ID --tail=10  
kubectl logs POD_ID -f</code></pre>

### Get current namespace
<pre><code>kubectl config current-context</code></pre>

### Switch to selected namespace
<pre><code>kubectl config set-context --current --namespace=NAMESPACE</code></pre>

### Execute command inside container (output will be written to local shell)
<pre><code>kubectl exec -it POD_ID -- /command/inside/container</code></pre>

### Access shell inside container
<pre><code>kubectl exec -it POD_ID -- /bin/sh</code></pre>

### Port forwarding (local:remote)
<pre><code>kubectl port-forward pod/POD_ID 8080:80  
kubectl port-forward service/SERVICE_NAME 8080:80</code></pre>

### Create resources the imperative way
<pre><code>kubectl run POD_NAME --image=IMAGE_NAME  
kubectl create deployment DEPLOYMENT_NAME --image=IMAGE_NAME  
kubectl expose deployment DEPLOYMENT_NAME --port=PORT_NUMBER
kubectl create configmap CONFIGMAP_NAME --from-literal=KEY_1=VALUE_1 --from-literal=KEY_2=VALUE_2  
kubectl create configmap CONFIGMAP_NAME --from-file=KEY_VAULE_FILE  
kubectl create secret generic SECRET_NAME --from-literal=KEY_1=VALUE_1 --from-literal=KEY_2=VALUE_2  
kubectl create secret generic SECRET_NAME --from-env-file=KEY_VAULE_FILE</code></pre>

### Create resources declaratively
<pre><code>kubectl apply -f YAML_FILE  
kubectl apply -f KUSTOMIZE_FILE</code></pre>

### Delete resources
<pre><code>kubectl delete pod POD_ID  
kubectl delete pod POD_ID --grace-period 0 --force  
kubectl delete deployment DEPLOYMENT_NAME  
kubectl delete service SERVICE_NAME</code></pre>

### List available API resources
<pre><code>kubectl api-resources</code></pre>

### Resource abbreviations
| Resource                 | Abbreviation         |
|--------------------------|----------------------|
| Pod                      | po                   |
| Service                  | svc                  |
| Deployment               | deploy               |
| ReplicaSet               | rs                   |
| StatefulSet              | sts                  |
| DaemonSet                | ds                   |
| Job                      | job                  |
| CronJob                  | cj                   |
| ConfigMap                | cm                   |
| Secret                   | secret               |
| Namespace                | ns                   |
| PersistentVolume         | pv                   |
| PersistentVolumeClaim    | pvc                  |
| Node                     | no                   |
| Ingress                  | ing                  |
| ServiceAccount           | sa                   |
| NetworkPolicy            | netpol               |
| ResourceQuota            | quota                |
| HorizontalPodAutoscaler  | hpa                  |
| ClusterRole              | clusterrole          |
| ClusterRoleBinding       | clusterrolebinding   |
| Role                     | role                 |
| RoleBinding              | rolebinding          |
| CustomResourceDefinition | crd                  |
| Endpoint                 | ep                   |
| Event                    | ev                   |
| LimitRange               | limitrange           |

## Helm

### List available repos
<pre><code>helm repo list</code></pre>

### Add helm repo
<pre><code>helm repo add NAME URL  
helm repo update</code></pre>

### Search charts in repo
<pre><code>helm search repo CHART_NAME</code></pre>

### Show default values
<pre><code>helm show values CHART_NAME</code></pre>

### Deploy helm chart
<pre><code>helm install RELEASE_NAME CHART_NAME --set KEY_1=VALUE_1 --set KEY_2=VALUE_2  
helm install RELEASE_NAME CHART_NAME -f YAML_FILE  
helm install RELEASE_NAME CHART_NAME -f YAML_FILE --set KEY_1=VALUE_1</code></pre>

### List deployed helm releases
<pre><code>helm list</code></pre>

### Show release values
<pre><code>helm get values RELEASE_NAME</code></pre>

## k8s tools
* **[Helm](https://helm.sh/)** - The package manager for Kubernetes
* **[kubie](https://github.com/sbstp/kubie)** - switch between clusters and namespaces and show information in cli
* **[kubectx & kubens](https://github.com/ahmetb/kubectx)** - switch between clusters and namespaces
* **[k9s](https://github.com/derailed/k9s)** - Terminal UI to interact with your Kubernetes clusters
* **[stern](https://github.com/stern/stern)** - Tail and follow multiple pods logs on Kubernetes and multiple containers within the pod
* **[LazyJournal](https://github.com/Lifailon/lazyjournal)** - Terminal user interface for reading logs from journald, auditd, file system, Docker containers, Podman and Kubernetes pods for quick viewing, coloring output and filtering with fuzzy find, regex support and timestamp.

## Documentation
[Official Kubernetes Docs](https://kubernetes.io/docs/)  
[Kubernetes cheat sheet](https://kubernetes.io/docs/reference/kubectl/quick-reference/)  
[Helm command reference](https://helm.sh/docs/helm/)

##Links##

**kubectl on Windows:**
https://kubernetes.io/docs/tasks/tools/install-kubectl-windows/

**OC Client Installation:**

https://docs.okd.io/4.19/cli_reference/openshift_cli/getting-started-cli.html

**Helm releases:**

https://github.com/helm/helm/releases

**Git Repo Training:**

https://github.com/tta-mme/kubernetes-training

**Repo mit Übungen:**

https://github.com/kastl-ars/kubernetes-training

**NGINX Image (unprivileged):** 

quay.io/packit/nginx-unprivileged:latest

**Bitnami repo**

helm repo add bitnami https://charts.bitnami.com/bitnami
