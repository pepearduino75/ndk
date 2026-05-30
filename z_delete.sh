kubectl api-resources --api-group=dataservices.nutanix.com -o wide --no-headers | while read name shortnames apiversion namespaced kind verb; do
  echo "### Resource: $name  Namespaced: $namespaced"

  if [ "$namespaced" = "true" ]; then
    kubectl get "$name" -A -o name 2>/dev/null | while read obj; do
      echo "Patching $obj"
      kubectl patch "$obj" --type=merge -p '{"metadata":{"finalizers":[]}}' || true
    done
  else
    kubectl get "$name" -o name 2>/dev/null | while read obj; do
      echo "Patching $obj"
      kubectl patch "$obj" --type=merge -p '{"metadata":{"finalizers":[]}}' || true
    done
  fi
done


