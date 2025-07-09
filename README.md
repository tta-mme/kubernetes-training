# kubernetes-training

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
<pre><code>kubectl get pods -n **namespace**  
kubectl get deployments -n **namespace**</code></pre>

## Describe resource
<pre><code>kubectl describe pod **pod-id**. 
kubectl describe deployment **deployment-name**</code></pre>

## Switch to selected namespace
<pre><code>kubectl config set-context --current --namespace=**namespace**</code></pre>

## Execute command inside container (output will be written to local shell)
<pre><code>kubectl exec -it **pod-id** -n **namespace** -- **/command/inside/container**</code></pre>

## Access shell inside container
<pre><code>kubectl exec -it **pod-id** -n **namespace** -- **/bin/sh**</code></pre>
