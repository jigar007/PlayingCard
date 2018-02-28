//
//  PlayingCard.swift
//  PlayingCard
//
//  Created by Jigar Thakkar on 28/2/18.
//  Copyright © 2018 Jigar Thakkar. All rights reserved.
//

import Foundation

struct PlayingCard
{
    var suit: Suit
    var rank: Rank
    
    enum Suit:String {
        case spades = "♠️ "
        case hearts = "💚"
        case dimonds = "🔷"
        case clubs = "♣️"
        
        static var all = [Suit.spades,.hearts,.dimonds,.clubs]
    }
    
    enum Rank {
        case ace
        case face(String)
        case numeric(Int)
        
        var order: Int {
            switch self {
            case .ace: return 1
            case .numeric(let pips): return pips
            case .face(let kind) where kind == "J" : return 11
            case .face(let kind) where kind == "Q" : return 12
            case .face(let kind) where kind == "K" : return 13
            default: return 0
            }
        }
        
        static var all: [Rank]{
            var allRanks = [Rank.ace]
            for pips in 2...10 {
                allRanks.append(Rank.numeric(pips))
            }
            allRanks += [Rank.face("J"),.face("Q"),.face("K")]
            return allRanks
        }
    }
    
}
