//
//  Filter.swift
//  Spelling
//
//  Created by Ansheng Zhou on 2025-03-28.
//

import Foundation

//Inputs:
//  -the original array
//  -what outcome the user wants to see(undetermined, incorrect, correct)
//Output:
//  -the filtered list

func filtering(
    originalList: [Result],
    ondesiredOutcome: Outcome
) -> [Result] {
    
    //When desired outcome is undetermined,
    //send bakc the unfiltered orginal array
    if ondesiredOutcome == .undetermined {
        return originalList
    }
    
    //create an empty list to populate before returning it
    var filteredResults: [Result] = []
    
    //iterate over the entire original list
    for result in originalList {
        
        //copy any result that match the desired outcome to the new list
        if result.outcome == ondesiredOutcome {
            filteredResults.append(result)
        }
        
    }
    return filteredResults
}
