<p align="center">
  <img src="assets/camille.png" alt="Camille, the mascot of Liko" width="240">
</p>

<h1 align="center">argo-cd.liko</h1>

**This repository contains the ArgoCD module for the Liko data language. This module is officially maintained by the Liko team.**

It contains all the CRDs present in the official ArgoCD repository, at the corresponding release version.

---

## Installation

Initialize a local module with `liko init`, then add `argo-cd.liko` as a dependency.

```bash
liko init
```
```bash
liko add argo-cd
```

```bash
liko install
```

## Usage

The module can now be used from any directory within the current module.

```liko
#ArgoCD: import "argo-cd/application"

$: #ArgoCD.Application & {
    metadata: {
        name: "application-name"
    }
    spec: {
        syncPolicy: {
            automated: {
                selfHeal: true
                allowEmpty: false
            }
        }
        destination: {
            name: "my-cluster"
            namespace: "ns"
        }
        
        project: "my-project"
    }
}
```
