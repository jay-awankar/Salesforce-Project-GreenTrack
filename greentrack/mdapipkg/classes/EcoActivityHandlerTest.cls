@isTest
public class EcoActivityHandlerTest {
    @isTest
    static void testUpdateImpactScores() {
        // 1. Get a test user (using the running user)
        User u = [SELECT Id FROM User WHERE Profile.Name = 'Standard User' LIMIT 1];

        System.runAs(u) {
            // 2. Insert Eco Activity (CreatedById will auto = u.Id)
            Eco_Activity__c eco = new Eco_Activity__c(
                Name = 'Tree Plantation Drive',
                Activity_Type__c = 'Tree Plantation',
                Trees_Planted__c = 10
            );
            insert eco;

            // 3. Query related Impact Score
            Impact_Score__c score = [
                SELECT Total_CO2_Saved__c 
                FROM Impact_Score__c 
                WHERE User__c = :u.Id 
                LIMIT 1
            ];

            // 4. Assert correctness
            System.assertEquals(210, score.Total_CO2_Saved__c, 'CO2 saved should be 210 for 10 trees.');
        }
    }
}