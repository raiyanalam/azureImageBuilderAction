####Create Image Template Resource###
az resource create  --resource-group ${{resource-group}}  --properties  @${{aib-template-file}} \
    --is-full-object  --resource-type Microsoft.VirtualMachineImages/imageTemplates -n ${{aib-templage-name}}

#### Run Image Template Resource ###
az resource invoke-action  --resource-group ${{resource-group}} --resource-type  Microsoft.VirtualMachineImages/imageTemplates \
      -n ${{image-template-name}} --action Run
