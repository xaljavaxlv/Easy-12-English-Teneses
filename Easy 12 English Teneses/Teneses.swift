//
//  Teneses.swift
//  Easy 12 English Teneses
//
//  Created by Vlad Zavada on 20.12.2021.
//

import Foundation

enum Teneses: String, CaseIterable {
    case amIsAre = "Am, Is, Are"
    case presentContinuous = "Present Continuous"
    case presentSimple = "Present Simple"
    case pastSimple = "Past Simple"
    case pastContinuous = "Past Continuous"
    case presentPerfect = "Present Perfect"
    
    enum AmIsAre: String, CaseIterable {
        case statements = "am, is, are"
        case questions = "am, is, are (Questions)"
        case imScared = "I'm tired, I'm scared, I'm late"
    }
}



//enum AmIsAre: String, CaseIterable {
//   case jj
//}
