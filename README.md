# rancher-stacks

rancher stacks for my home network

blackbox and rancher cli must be installed

nfs volumes must be created before the stacks are executed
```
# example volume
rancher volume create --driver nfs --opt share=nfshost:/share volume-name
```
