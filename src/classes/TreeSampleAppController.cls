global class TreeSampleAppController {
	@AuraEnabled
    public static List<Account> getTestData() {        
        return [SELECT account.name, (SELECT contact.name FROM account.contacts) FROM account LIMIT 5];
    }
}