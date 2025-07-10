# Execise nodeAffinity

## 1. Label your worker nodes with different colors
<pre><code>kubectl label node WORKER_NODE_1 color=red  
kubectl label node WORKER_NODE_2 color=green  
kubectl label node WORKER_NODE_3 color=blue</code></pre>

## 2. Create deployment and test if it's working
<pre><code>kubectl apply -f deployment.yml  
kubectl get pods -o wide</code></pre>
