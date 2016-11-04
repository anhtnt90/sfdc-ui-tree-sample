<aura:application extends="force:slds" controller="TreeTestController">
    
    <aura:attribute name="treeHeader" type="String" default="Accounts &amp; Contacts"/>
    <aura:attribute name="treeItems" type="List"/>
    <aura:attribute name="treeConfig" type="Map" default="{'labelProperties': ['Name'], 'expandProperties': ['Contacts'], 'isSelectable': true, 'isNodeSelectionEnabled': true, 'expandLevel': 1}" />
    
    <aura:handler name="init" value="{!this}" action="{!c.doInit}" />
    <aura:handler name="treeSelectionEvent" event="ui_tree:TreeSelectionEvent" action="{!c.handleTreeSelection}"/>
    
    <div class="slds-page-header" role="banner">
        <div class="slds-media slds-media--center">
            <div class="slds-media__body">
                <p class="slds-page-header__title slds-truncate slds-align-middle">Lightning Tree test app</p>
            </div>
        </div>
    </div>
    
    <div class="slds-m-around--x-large">
    	<ui_tree:Tree header="{!v.treeHeader}" items="{!v.treeItems}" config="{!v.treeConfig}" />
    </div>
</aura:application>
