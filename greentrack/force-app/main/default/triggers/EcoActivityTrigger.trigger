trigger EcoActivityTrigger on Eco_Activity__c (after insert, after update) {
    if(Trigger.isAfter && (Trigger.isInsert || Trigger.isUpdate)) {
        EcoActivityHandler.updateImpactScores(Trigger.new);
    }
}