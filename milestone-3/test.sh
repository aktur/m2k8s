NAMESPACE=m2k8s
# kubectl apply -f namespace.yml -f mysql.yml -f app.yml
# kubectl expose deployment profile --type=NodePort -n $NAMESPACE
# kubectl config set-context --current --namespace $NAMESPACE
# kubectl exec mypod -it sh
URL=$(minikube service profile --url -n $NAMESPACE)
echo $URL
echo "-> http POST $URL/profile username=unamerkel password=changeme firstName=Una lastName=Merkel email=unamerkel@example.com"
http POST $URL/profile username=unamerkel password=changeme firstName=Una lastName=Merkel email=unamerkel@example.com
echo "-> http GET $URL/profile/unamerkel"
http GET $URL/profile/unamerkel
echo "-> http -f POST $URL/profile/unamerkel/image file@una_merkel.jpg"
http -f POST $URL/profile/unamerkel/image file@una_merkel.jpg
echo "-> http -f GET $URL/profile/unamerkel/image file@una_merkel.jpg"
http -f GET $URL/profile/unamerkel/image file@una_merkel.jpg
