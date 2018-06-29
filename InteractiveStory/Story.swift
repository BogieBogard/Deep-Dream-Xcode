//
//  Story.swift
//  InteractiveStory
//
//  Created by Matthew Bogard on 6/29/18.
//  Copyright © 2018 Matthew Bogard. All rights reserved.
//

import UIKit

enum Story {
    case returnTrip(name: String)
    case touchDown
    case homeward
    case rover(name: String)
    case cave
    case crate
    case monster
    case droid(name: String)
    case home
}

extension Story {
    var artwork: UIImage {
        switch self {
        case .returnTrip: return #imageLiteral(resourceName: "ReturnTrip")
        case .touchDown: return #imageLiteral(resourceName: "TouchDown")
        case .homeward: return #imageLiteral(resourceName: "Homeward")
        case .rover: return #imageLiteral(resourceName: "Rover")
        case .cave: return #imageLiteral(resourceName: "Cave")
        case .crate: return #imageLiteral(resourceName: "Crate")
        case .monster: return #imageLiteral(resourceName: "Monster")
        case .droid: return #imageLiteral(resourceName: "Droid")
        case .home: return #imageLiteral(resourceName: "Home")
        }
    }
    
    var text: String {
        switch self {
        case .returnTrip(let name):
            return "On your return trip from studying Saturn's rings, you hear a distress signal that seems to be coming from the surface of Mars. It's strange because there hasn't been a colony there in years. \"Help me \(name), you're my only hope.\""
        case .touchDown:
            return "You deftly land your ship near where the distress signal originated. You didn't notice anything strange on your fly-by, behind you is an abandoned rover from the early 21st century and a small crate."
        case .homeward:
            return "You continue your course to Earth. Two days later, you receive a transmission from HQ saing that they have detected some sort of anomaly on the surface of Mars near an abandoned rover. They ask you to investigate, but ultimately the decision is yours because your mission has already run much longer than planned and supplies are low."
        case .rover(let name):
            return "The rover is covered in dust and most of the solar panels are broken. But you are quite surprised to see the on-board system booted up and running. In fact, there is a message on the screen. \"\(name), come to 28.2342, -81.08273\". These coordinates aren't far but you don't know if your oxygen will last there and back."
        case .cave:
            return "Your EVA suit is equipped with a headlamp which you use to navigate to a cave. After searching for a while your oxygen levels are starting to get pretty low. You know you should go refill your tank, but there's a faint light up ahead."
        case .crate:
            return "Unlike everything else around you the crate seems new and...alien. As you examine the create you notice something glinting on the ground beside it. Aha, a key! It must be for the crate..."
        case .monster:
            return "You pick up the key and try to unlock the crate, but the key breaks off in the keyhole.You scream out in frustration! Your scream alerts a creature that captures you and takes you away..."
        case .droid(let name):
            return "After a long walk slightly uphill, you end up at the top of a small crater. You look around and are overjoyed to see your robot friend, \(name)-S1124. It had been lost on a previous mission to Mars. You take it back to your ship and fly back to Earth."
        case .home:
            return "You arrive home on Earth. While your mission was a success, you forever wonder what was sending that signal. Perhaps a future mission will be able to investigate."
        }
    }
}



















