
public with sharing class SmartContactCardController {

    @AuraEnabled(cacheable=true)
    public static Professional_Profile__c getProfile(Id profileId) {
        if (profileId == null) {
            return null;
        }

        List<Professional_Profile__c> profiles = [
            SELECT Id, Name, Full_Name__c, Email__c,
                   Phone__c, Job_Title__c, About_Me__c,
                   LinkedIn_URL__c, GitHub_URL__c,
                   Portfolio_URL__c, Profile_Image_URL__c,
                   Profile_Slug__c, Public_Profile__c
            FROM Professional_Profile__c
            WHERE Id = :profileId
            WITH USER_MODE
            LIMIT 1
        ];

        return profiles.isEmpty() ? null : profiles[0];
    }

    @AuraEnabled(cacheable=true)
    public static List<Skill__c> getSkills(Id profileId) {
        if (profileId == null) {
            return new List<Skill__c>();
        }

        return [
            SELECT Id, Name, Skill_Name__c, Skill_Level__c
            FROM Skill__c
            WHERE Professional_Profile__c = :profileId
            WITH USER_MODE
            ORDER BY Skill_Name__c
        ];
    }

    @AuraEnabled(cacheable=true)
    public static List<Project__c> getProjects(Id profileId) {
        if (profileId == null) {
            return new List<Project__c>();
        }

        return [
            SELECT Id, Name, Project_Name__c, Description__c,
                   Technologies__c, Project_URL__c
            FROM Project__c
            WHERE Professional_Profile__c = :profileId
            WITH USER_MODE
            ORDER BY Project_Name__c
        ];
    }

    @AuraEnabled(cacheable=true)
    public static List<Certification__c> getCertifications(Id profileId) {
        if (profileId == null) {
            return new List<Certification__c>();
        }

        return [
            SELECT Id, Name, Certification_Name__c,
                   Issuing_Organization__c, Credential_URL__c,
                   Issue_Date__c
            FROM Certification__c
            WHERE Professional_Profile__c = :profileId
            WITH USER_MODE
            ORDER BY Issue_Date__c DESC
        ];
    }
}
