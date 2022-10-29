all:
	make apply
	make resume
	make delete

apply:
	@kubectl apply -f ksume.yaml
	@kubectl apply -f resume.yaml

delete:
	@kubectl delete -f resume.yaml
	@kubectl delete -f ksume.yaml

resume:
	@kubectl get resume -n hsblhsn -o yaml