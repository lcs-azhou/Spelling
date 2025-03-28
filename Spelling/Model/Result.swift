//
//  Result.swift
//  Spelling
//
//  Created by Ansheng Zhou on 2025-03-28.
//

import Foundation

struct Result: Identifiable {
    
    let id = UUID() //unique identifier
    
    //The item the user was radomly given
    let item: Item
    
    //What the user guessed
    let guessProvided: String
    
    //Was the user correct or not?
    let outcome: Outcome
    
}
