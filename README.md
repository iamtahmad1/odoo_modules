# odoo_modules
########################################################################
apiVersion: v1
kind: Secret
metadata:
  name: regcred01
  namespace: odoo-test
data:
  .dockerconfigjson: 
type: kubernetes.io/dockerconfigjson
########################################################################