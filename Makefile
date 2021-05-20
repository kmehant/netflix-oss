run:
	mvn clean compile package install

k:
	kubectl delete daemonsets,replicasets,services,deployments,pods,rc --all
	kubectl apply -f ./k8s
