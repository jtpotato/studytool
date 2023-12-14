//
//  CardData.swift
//  studytool
//
//  Created by Joel Tan on 13/12/2023.
//

import Foundation

struct CardRevealMoment {
    var time: Date;
    var rating: String;
}

struct CardData {
    var frontText: String;
    var backText: String;
    
    var cardID: UUID;
    
    var cardHistory: [CardRevealMoment] = [];
}
