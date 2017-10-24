//
//  TextTwistModel.swift
//  TextTwist
//
//  Created by C4Q  on 10/23/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import Foundation

class TextTwistModel {
    func guess(_ word: String) -> Bool {
              return currentInfo.words.contains(word)
            }
        func addLetter(_ c: Character) {
               self.currentLetters.append(c)
           }

       func removeLetter(_ c: Character) -> Bool {
            guard let removalIndex = currentLetters.index(of: c) else {
                     return false
                    }
               self.currentLetters.remove(at: removalIndex)
                return true
            }
        var currentLetters: String
        var guessedWords: [String] = []
        func resetCurrentLetters() {
                self.currentLetters = currentInfo.letters
            }
        private var currentInfo: TestTwistInfo
    
       init() {
               let randIndex = Int(arc4random_uniform(3))
                self.currentInfo = WordData.allInfo[randIndex]
                self.currentLetters = WordData.allInfo[randIndex].letters
           }
}
