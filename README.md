# install-Istio
To install Istio you have to follow this steps in command line \

helm repo add istio https://istio-release.storage.googleapis.com/charts \
helm repo add grafana https://grafana.github.io/helm-charts ...
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts \

helm repo update \

kubectl apply -f namespace.yaml \
helm install istio-base istio/base -n istio-system \
helm install istiod istio/istiod -n istio-system --wait \
helm install grafana grafana/grafana -n istio-system \
helm install -f prometheus-values.yaml prometheus prometheus-community/prometheus -n istio-system% \
