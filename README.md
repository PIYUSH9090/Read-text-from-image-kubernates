we already seen this read image from text, Now we will dockerize of this task so, Lets begin....

1) First i write the dockerfile with some Dependencies.

2) I added some libraries in requirements.txt file.

3) Then i made docker image file with this command ~
```
sudo docker build -t read-text .
```

4) Then i made the container and goto inside the container with this command ~
```
sudo docker run -it --entrypoint=/bin/bash read-text
```
After then you will do ,
```
ls
```
Then you will get output.txt in that list,. because its run the python program by itself.

5) After then we have to push this docker image to docker hub with this command
```
docker push piyush9090/read-text
```
6) Now you have to open another terminal and start the minikube with this command,
```
minikube start
```
7) It will take some time to start, after then you have to open dashboard with this command,
```
minikube dashboard
```
Now you will get your minikube dashboard in another window in your browser.

8) Let's deploy our small read-text application in kubernates Now if we want to apply the deployment file then we should go into that directory in local
```
cd /home/piyush/Desktop/Empowerinnovate/kubernates/Read-text-image-kubernates-gcloud/k8s
```
9) First you need to authenticate your google cloud
```
gcloud auth login
```

10) We have to create first project in google cloud gcloud projects create [PROJECT_ID] --name=[PROJECT_NAME]
```
gcloud projects create readtext-621999 --name=readtext-621999
```
11) If you already have any project in gcloud then Let's initialize the google cloud
```
gcloud init
```

12) Now let's create the cluster of kubernates gcloud container clusters create [CLUSTER_NAME] --num-nodes=2
```
gcloud container clusters create translator3 --num-nodes=2 --zone us-east1-b
```

13) After creating cluster we should give the permission(credentials) for that container cluster
```
gcloud container clusters get-credentials translator3 --zone us-east1-b --project readtext-621999
```

14)Deploy the yaml file
```
kubectl apply -f deployment.yaml --record=true
```

15) Get the pods
```
kubectl get pods
```
Now you will get error of crashloopbackoff in your pods and if you will see the minikube dashboard then you will get error "back-off restarting failed container" because our docker container is not continue running, its restarting.

So kubernates is trying to restart it but that docker container can't restart so its throwing that error.






That's it....!!!
