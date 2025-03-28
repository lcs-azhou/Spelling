//
//  QuizView.swift
//  Spelling
//
//  Created by Russell Gordon on 2023-10-30.
//

import SwiftUI

struct QuizView: View {
    
    // MARK: Stored properties
    @State var currentItem = itemsToSpell.randomElement()!

    //    The user's guess
    @State var userGuess = ""
    
    //    The outcome
    @State var currentOutcome: Outcome = .undetermined
    
    // MARK: Computed properties
    var body: some View {
        
        VStack {
            Image(currentItem.imageName)
                .resizable()
                .scaledToFit()
            
            HStack{
                //            Allow the user to input
                TextField("Enter the name of the item", text: $userGuess)
                
                // Show Outcome (show the string attached to each case in the enumeration)
                Text(currentOutcome.rawValue)
            }
            
            HStack {
                //       Make it possible to Check
                Button {
                    checkGuess()
                } label: {
                    Text("Submit")
                }
                //        Pick a new word
                Button {
                    newWord()
                } label: {
                    Text("newword")
                }
            }

        }
        
    }
    
    //    Function(s)
    func checkGuess(){
        if userGuess == currentItem.word{
            print("correct")
            currentOutcome = .correct
        } else{
            print("incorrect")
            currentOutcome = .incorrect
        }
    }
    
    //    Pick a new word
    func newWord() {
        currentItem = itemsToSpell.randomElement()!
        userGuess = ""
        currentOutcome = .undetermined
    }
    
}

#Preview {
    QuizView()
}
