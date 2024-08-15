# vault-unseal

[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/vault-unseal)](https://artifacthub.io/packages/search?repo=vault-unseal)
[![License](https://img.shields.io/badge/License-MIT-blue)](https://opensource.org/licenses/MIT)

## Usage

[Helm](https://helm.sh) must be installed to use the charts. Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

```sh
helm repo add vault-unseal https://babykart.github.io/vault-unseal
```

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages. You can then run `helm search repo
vault-unseal` to see the charts.

To install the vault-unseal chart:

```sh
helm upgrade --install vault-unseal vault-unseal/vault-unseal
```

Using an OCI-based registry:

```sh
helm upgrade --install vault-unseal oci://ghcr.io/babykart/helm-charts/vault-unseal --version <version>
 ```

To uninstall the chart:

```sh
helm delete vault-unseal
```
