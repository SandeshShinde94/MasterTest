/**
 * @description       : 
 * @author            : Sandesh PSL
 * @group             : 
 * @last modified on  : 11-26-2021
 * @last modified by  : Sandesh PSL
 * Modifications Log
 * Ver   Date         Author        Modification
 * 1.0   11-26-2021   Sandesh PSL   Initial Version
**/
public with sharing class AccController2 {
 
/**
 * @description       : 
 * @author            :  Sandesh PSL
 * @Name              :  fetchAccounts
 * @return            :  List<Account>
 * Modifications Log  
 * Ver   Date         Author        Modification
 * 1.0   11-26-2021   Sandesh PSL   Initial Version
**/
     @AuraEnabled  public static List<Account> fetchAccounts(){
        try {
            return [select id,Name,AccountNumber from Account WITH SECURITY_ENFORCED limit 10 ];
        } catch (Exception e) {
           // return null;
            throw new AuraHandledException(e.getMessage());
        }
    }
}