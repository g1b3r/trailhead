/**
 * Created by Cezu on 2019-01-25.
 */

trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {

    List<Task> taskList = new List<Task>();

    for (Opportunity opp : trigger.new) {
        if (opp.StageName == 'Closed Won') {
            taskList.add(new Task(Subject = 'Follow Up Test Task', WhatId = opp.Id));
        }
    }

    if (taskList.size() > 0) {
        insert taskList;
    }
}