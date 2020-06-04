@istest 
public with sharing class apexMasterTest {

    @istest 
    static void apexMasterTest() {
        System.assertEquals( apexMaster.helloWorld() , 'Hello World' );
    }
}