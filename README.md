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
<pre><code>kubectl get pods -n __namespace__  
kubectl get deployments -n __namespace__</code></pre>

## Describe resource
<pre><code>kubectl describe pod __pod-id__. 
kubectl describe deployment __deployment-name__</code></pre>

## Switch to selected namespace
<pre><code>kubectl config set-context --current --namespace=__namespace__</code></pre>

## Execute command inside container (output will be written to local shell)
<pre><code>kubectl exec -it __pod-id__ -n __namespace__ -- __/command/inside/container__</code></pre>

## Access shell inside container
<pre><code>kubectl exec -it __pod-id__ -n __namespace__ -- __/bin/sh__</code></pre>
