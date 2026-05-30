kubectl get ApplicationSnapshotReplication -A -o name | while read obj; do
  echo "Deleting $obj"
  kubectl delete "$obj" --wait=false
done

kubectl get ApplicationSnapshot -A -o name | while read obj; do
  echo "Deleting $obj"
  kubectl delete "$obj" --wait=false
done

kubectl get ApplicationSnapshotRestore -A -o name | while read obj; do
  echo "Deleting $obj"
  kubectl delete "$obj" --wait=false
done

kubectl get ProtectionPlan -A -o name | while read obj; do
  echo "Deleting $obj"
  kubectl delete "$obj" --wait=false
done

kubectl get JobScheduler -A -o name | while read obj; do
  echo "Deleting $obj"
  kubectl delete "$obj" --wait=false
done

kubectl get AppProtectionPlan -A -o name | while read obj; do
  echo "Deleting $obj"
  kubectl delete "$obj" --wait=false
done

kubectl get Application -A -o name | while read obj; do
  echo "Deleting $obj"
  kubectl delete "$obj" --wait=false
done

kubectl get AppPlannedFailover -o name | while read obj; do
  echo "Deleting $obj"
  kubectl delete "$obj" --wait=false
done

kubectl get ApplicationSnapshotContents -o name | while read obj; do
  echo "Deleting $obj"
  kubectl delete "$obj" --wait=false
done

kubectl get  ApplicationSnapshotRestores -o name | while read obj; do
  echo "Deleting $obj"
  kubectl delete "$obj" --wait=false
done

kubectl get AppUnplannedFailovers -o name | while read obj; do
  echo "Deleting $obj"
  kubectl delete "$obj" --wait=false
done

kubectl get  haapplications -o name | while read obj; do
  echo "Deleting $obj"
  kubectl delete "$obj" --wait=false
done

kubectl get  haapplicationcontents -o name | while read obj; do
  echo "Deleting $obj"
  kubectl delete "$obj" --wait=false
done
