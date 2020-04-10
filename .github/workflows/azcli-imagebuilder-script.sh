####Create Image Template Resource###
az resource create  --resource-group ${{distributor-resource-group}}  --properties  @${{imagebuilder-template.json}} \
    --is-full-object  --resource-type Microsoft.VirtualMachineImages/imageTemplates -n ${{image-templage-name}}

#### Run Image Template Resource ###
az resource invoke-action  --resource-group ${{distributor-resource-group}} --resource-type  Microsoft.VirtualMachineImages/imageTemplates \
      -n ${{image-templage-name}} --action Run
