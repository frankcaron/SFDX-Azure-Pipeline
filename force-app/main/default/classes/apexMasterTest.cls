@istest 
public with sharing class apexMasterTest {

    @istest 
    static void apexMasterTest() {

        apexMaster test = new apexMaster();
        System.assertEquals( test.helloWorld() , 'Hello World' );
    }
}