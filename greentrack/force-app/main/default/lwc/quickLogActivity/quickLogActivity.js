import { LightningElement, track } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import ECO_OBJECT from '@salesforce/schema/Eco_Activity__c';
import ACTIVITY_TYPE from '@salesforce/schema/Eco_Activity__c.Activity_Type__c';
import TREES_PLANTED from '@salesforce/schema/Eco_Activity__c.Trees_Planted__c';
import WASTE_RECYCLED from '@salesforce/schema/Eco_Activity__c.Waste_Recycled__c';
import { createRecord } from 'lightning/uiRecordApi';

export default class QuickLogActivity extends LightningElement {
    @track activityType;
    @track treesPlanted;
    @track wasteRecycled;

    handleChange(event) {
        const field = event.target.label;
        if (field === 'Activity Type') this.activityType = event.target.value;
        if (field === 'Trees Planted') this.treesPlanted = event.target.value;
        if (field === 'Waste Recycled (kg)') this.wasteRecycled = event.target.value;
    }

    handleSubmit() {
        const fields = {};
        fields[ACTIVITY_TYPE.fieldApiName] = this.activityType;
        fields[TREES_PLANTED.fieldApiName] = this.treesPlanted;
        fields[WASTE_RECYCLED.fieldApiName] = this.wasteRecycled;

        const recordInput = { apiName: ECO_OBJECT.objectApiName, fields };

        createRecord(recordInput)
            .then(() => {
                this.dispatchEvent(
                    new ShowToastEvent({
                        title: 'Success',
                        message: 'Eco Activity logged successfully!',
                        variant: 'success'
                    })
                );
                // Reset fields
                this.activityType = '';
                this.treesPlanted = null;
                this.wasteRecycled = null;
            })
            .catch(error => {
                this.dispatchEvent(
                    new ShowToastEvent({
                        title: 'Error',
                        message: error.body.message,
                        variant: 'error'
                    })
                );
            });
    }
}
