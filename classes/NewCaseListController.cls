/**
 * Created by lukaszceran on 2018-10-25.
 */

public with sharing class NewCaseListController {
    public  list<Case> getNewCases () {
        list<Case>  NewCasesList = [Select id,CaseNumber FROM Case WHERE Status = 'New'];
        return NewCasesList;
    }

}