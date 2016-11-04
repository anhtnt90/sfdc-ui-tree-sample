({
	doInit : function(component, event, helper) {
        var action = component.get("c.getTestData");
        action.setCallback(this, function(response){
            var state = response.getState();
            if (component.isValid() && state === "SUCCESS")
                component.set("v.treeItems", response.getReturnValue());
            else
                console.log(response);
        });
        $A.enqueueAction(action);
    },
    
    handleTreeSelection : function(component, event, helper) {
        var selection = event.getParam("selection");
        alert("Tree selection: "+ JSON.stringify(selection));
    }
})