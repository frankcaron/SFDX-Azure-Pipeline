@istest 
public with sharing class apexMasterTest {

    @istest 
    static void apexMasterTest() {

        apexMaster test = new apexMaster();
        System.assertEquals( apexMaster.getHelloWorld() , 'Hello world, Azure DevOps is in the house!' );
    }
}