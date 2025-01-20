public with sharing class LandingPageContentClass {
    @AuraEnabled(cacheable=true)
    public static List<Page_Section_Content__c> getReleaseContent() {

        List<Page_Section_Content__c> objList = [Select Heading__c, Icon_Name__c, Icon_Size__c, Description__c from Page_Section_Content__c where AppPageSection__r.PageSectionName__c='Landing-Release Notes' and IsActive__c=true];
        return objList;
    }

    @AuraEnabled(cacheable=true)
    public static List<Page_Section_Content__c> getDocContent(String appName) {

        if(appName.length()>0){
            List<Page_Section_Content__c> objList = [Select Id,Heading__c, Description__c from Page_Section_Content__c where AppPageSection__r.PageSectionName__c=:appName +'-Docs' and IsActive__c=true];
            return objList; 
        }
        else{
            List<Page_Section_Content__c> objList = [Select Id,Heading__c, Description__c from Page_Section_Content__c where AppPageSection__r.PageSectionName__c='Landing-Docs' and IsActive__c=true];
        return objList;
        }

        
    }

    @AuraEnabled(cacheable=true)
    public static List<Page_Section_Content__c> getAppsList() {

        List<Page_Section_Content__c> objList = [Select Id,Heading__c, Description__c, Icon_Name__c, Icon_Size__c, Persona__c from Page_Section_Content__c where AppPageSection__r.PageSectionName__c='Landing-Business Apps' and IsActive__c=true ORDER BY Heading__c];
        return objList;
    }
    

    @AuraEnabled(cacheable=true)
    public static List<Page_Section_Content__c> getAppOverview(String appName) {

        List<Page_Section_Content__c> objList = [Select Id,Heading__c, Description__c, Icon_Name__c, Icon_Size__c, Video_Link__c from Page_Section_Content__c where AppPageSection__r.PageSectionName__c='Application-Overview' and Name=:appName and IsActive__c=true];
        return objList;
    }

    @AuraEnabled(cacheable=true)
    public static List<Page_Section_Content__c> getSetup(String appName) {

        List<Page_Section_Content__c> objList = [Select Id,Sub_Heading__c, Heading__c, Description__c, Icon_Name__c, Icon_Size__c, Button_Text__c from Page_Section_Content__c where AppPageSection__r.PageSectionName__c='Application-Setup' and Name=:appName and IsActive__c=true];
        return objList;
    }

    @AuraEnabled(cacheable=true)
    public static List<Page_Section_Content__c> getPopUpModalData(String appName) {

        List<Page_Section_Content__c> objList = [Select Id,Sub_Heading__c, Heading__c, Description__c from Page_Section_Content__c where AppPageSection__r.PageSectionName__c='Application-PopUpModal' and Name=:appName and IsActive__c=true];
        return objList;
    }

}