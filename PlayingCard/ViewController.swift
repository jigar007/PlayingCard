//
//  ViewController.swift
//  PlayingCard
//
//  Created by Jigar Thakkar on 28/2/18.
//  Copyright © 2018 Jigar Thakkar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var deck = PlayingCardDeck()
    
    @IBOutlet weak var playingCardView: PlayingCardView!{
        didSet{
            let swipe = UISwipeGestureRecognizer(target: self, action: #selector(nextCard))
            swipe.direction = [.left,.right]
            playingCardView.addGestureRecognizer(swipe)
        }
    }
    
    @IBAction func flipCard(_ sender: UITapGestureRecognizer) {
        playingCardView.isFaceUp = !playingCardView.isFaceUp
    }
    
    @objc func nextCard() {
        if let card = deck.draw() {
            playingCardView.rank = card.rank.order
            playingCardView.suit = card.suit.rawValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for _ in 1...10{
            if let card = deck.draw(){
                print("\(card)")
            }
        }
    }
}

