        az role assignment create --assignee cf32a0cc-373c-47c9-9156-0db11f6a6dfc \
              --role Contributor --scope /subscriptions/${{subscriptionID}}/resourceGroups/<distributorResourceGroup>
        if {az group create -n ${distributor-resource-group} -l ${image-location} } 
        az sig create -g ${distributor-resource-group}  --gallery-name ${image-gallery-name}
        az sig image-definition create -g ${distributor-resource-group} --gallery-name ${image-gallery-name} \
              --gallery-image-definition ${image-definiation} --publisher ${publisher} --offer ${offer}  --sku ${sku}  --os-type "linux"
