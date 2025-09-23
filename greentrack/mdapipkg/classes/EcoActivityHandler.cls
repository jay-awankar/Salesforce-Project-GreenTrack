public class EcoActivityHandler {
    public static void updateImpactScores(List<Eco_Activity__c> ecoList) {
        Map<Id, Decimal> userImpact = new Map<Id, Decimal>();

        // Step 1: Calculate CO2 saved for each eco activity
        for(Eco_Activity__c eco : ecoList) {
            Decimal co2Saved = (eco.Trees_Planted__c != null ? eco.Trees_Planted__c * 21 : 0) +
                               (eco.Waste_Recycled__c != null ? eco.Waste_Recycled__c * 1.5 : 0);

            if(eco.CreatedById != null) {
                if(userImpact.containsKey(eco.CreatedById)) {
                    userImpact.put(eco.CreatedById, userImpact.get(eco.CreatedById) + co2Saved);
                } else {
                    userImpact.put(eco.CreatedById, co2Saved);
                }
            }
        }

        // Step 2: Find existing Impact Scores for these users
        Map<Id, Impact_Score__c> existingScores = new Map<Id, Impact_Score__c>(
            [SELECT Id, User__c, Total_CO2_Saved__c 
             FROM Impact_Score__c 
             WHERE User__c IN :userImpact.keySet()]
        );

        List<Impact_Score__c> toUpdate = new List<Impact_Score__c>();
        List<Impact_Score__c> toInsert = new List<Impact_Score__c>();

        // Step 3: Update existing OR insert new
        for(Id userId : userImpact.keySet()) {
            if(existingScores.containsKey(userId)) {
                Impact_Score__c score = existingScores.get(userId);
                score.Total_CO2_Saved__c = (score.Total_CO2_Saved__c != null ? score.Total_CO2_Saved__c : 0) 
                                           + userImpact.get(userId);
                toUpdate.add(score);
            } else {
                toInsert.add(new Impact_Score__c(
                    User__c = userId,
                    Total_CO2_Saved__c = userImpact.get(userId)
                ));
            }
        }

        if(!toInsert.isEmpty()) insert toInsert;
        if(!toUpdate.isEmpty()) update toUpdate;
    }
}