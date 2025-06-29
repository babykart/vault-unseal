# vault-unseal

![Version: 0.10.0](https://img.shields.io/badge/Version-0.10.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.7.2](https://img.shields.io/badge/AppVersion-0.7.2-informational?style=flat-square)

A Helm chart for vault-unseal

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| babykart | <babykart@gmail.com> | <https://github.com/babykart> |

## Source Code

* <https://github.com/lrstanley/vault-unseal.git>

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
helm upgrade --install vault-unseal oci://ghcr.io/babykart/helm-charts/vault-unseal
 ```

To uninstall the chart:

```sh
helm delete vault-unseal
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity |
| config.annotations | object | `{}` | Config secret annotations |
| config.existingSecret | string | `""` | If you want to manage the configuration out of the helm chart, specify the name of the secret |
| config.stringData | string | `"environment: dev\ncheck_interval: 15s\nmax_check_interval: 30m\nvault_nodes:\n  - https://1.2.3.4:8200\nunseal_tokens:\n  - your-token\n  - your-second-token\ntls_skip_verify: false\nemail:\n  enabled: false\n  hostname: smtp.hostname.com\n  port: 25\n  username: your-username\n  password: your-password\n  # address to send from.\n  from_addr: your-alerts@hostname.com\n  # addresses to send to. the first will be the TO, the second and on will be CC'd\n  # onto the message.\n  send_addrs:\n    - your-alert-group@hostname.com\n    - example-user@hostname.com\n  # Skip TLS certificate validation.\n  tls_skip_verify: false\n  # Require TLS for SMTP connections.\n  # The default is opportunistic.\n  mandatory_tls: false\nnotify_max_elapsed: 10m\nnotify_queue_delay: 60s\n"` | Config secret stringData |
| containers.env | list | `[]` | Containers environement |
| deployment.annotations | object | `{}` | Deployment annotations |
| deployment.labels | object | `{}` | Deployment labels |
| deployment.replicaCount | int | `1` | Deployment replica count |
| deployment.revisionHistoryLimit | int | `1` | Deployment revision history limit |
| deployment.strategy.type | string | `"RollingUpdate"` | Deployment strategy type |
| extraVolumeMounts | list | `[]` | Extra volume mounts |
| extraVolumes | list | `[]` | Extra volumes |
| fullnameOverride | string | `""` | Full name override |
| image.pullPolicy | string | `"IfNotPresent"` | Image pull policy |
| image.registry | string | `"ghcr.io"` | Image registry |
| image.repository | string | `"lrstanley/vault-unseal"` | Image repository |
| image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion. |
| imagePullSecrets | list | `[]` | Image pull secrets |
| nameOverride | string | `""` | Name override |
| nodeSelector | object | `{}` | Node selector labels |
| podAnnotations | object | `{}` | Pod annotations |
| podSecurityContext | object | `{}` | Pod security context |
| resources | object | `{"limits":{"cpu":"100m","memory":"32Mi"},"requests":{"cpu":"10m","memory":"8Mi"}}` | Resources |
| securityContext.capabilities | object | `{"drop":["ALL"]}` | Security context capabilities |
| securityContext.runAsNonRoot | bool | `false` | Security context run as non root |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `false` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| serviceAccount.token | bool | `false` | Creates the token object |
| tolerations | list | `[]` | Tolerations |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
