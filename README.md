# keycloak-helm
Helm Repo based ontop of [Bitnami Keycloak](https://github.com/bitnami/charts/tree/main/bitnami/keycloak/) chart with added migrations this should be a starting point to: 

### What is this ?
1- Deploy Keycloak in *LOWER* environments to iterate rapidly
2- Adopt fully code based configuration approach to keycloak
3- Automate DB and Secret integration

### How to use ?
1. Clone this repo 
2. edit / create new values file
3.
```sh
git clone https://github.com/najeeb-rifaat/keycloak-helm`
cd keycloak-helm
... EDIT the values file or create your own ... 
helm install -n keycloak --create-namespace keycloak .
```

### What is missing ?
`Alot` is missing as this is a demo that should inspire a more robust usecase.
  - values / variables mapping
  - multiple ingress support
  - mesh support
  - HA database setup
  - examples (active directory, other integrations examples ... etc)
