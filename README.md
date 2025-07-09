# Kubernetes training

## List resources in current namespace
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

## List resources in selected namespace
<pre><code>kubectl get pods -n NAMESPACE  
kubectl get deployments -n NAMESPACE</code></pre>

## Output as yaml
<pre><code>kubectl get deployment DEPLOYMENT_NAME -o yaml  
kubectl get configmap CONFIGMAP_NAME -o yaml</code></pre>

## Describe resource
<pre><code>kubectl describe pod POD_ID 
kubectl describe deployment DEPLOYMENT_NAME</code></pre>

## Get current namespace
<pre><code>kubectl config current-context</code></pre>

## Switch to selected namespace
<pre><code>kubectl config set-context --current --namespace=NAMESPACE</code></pre>

## Execute command inside container (output will be written to local shell)
<pre><code>kubectl exec -it POD_ID -n NAMESPACE -- /command/inside/container</code></pre>

## Access shell inside container
<pre><code>kubectl exec -it POD_ID -n NAMESPACE -- /bin/sh</code></pre>

## Forward local port to container port
<pre><code>kubectl port-forward pod/POD_ID -n NAMESPACE</code></pre>

## Delete resources
<pre><code>kubectl delete pod POD_ID -n NAMESPACE  
kubectl delete deployment DEPLOYMENT_NAME -n NAMESPACE  
kubectl delete service SERVICE_NAME -n NAMESPACE</code></pre>

# Documentation
[Visit Kubernetes Docs](https://kubernetes.io/docs/)  
[Kubernetes cheat sheet](https://kubernetes.io/docs/reference/kubectl/quick-reference/)
