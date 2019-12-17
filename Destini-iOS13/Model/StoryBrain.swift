//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation
struct StoryBrain {
    let stories: [Story] = [
        Story(
            title: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
            choice1: Choice(choice: "I'll hop in. Thanks for the help!", destination: 2),
            choice2: Choice(choice: "Better ask him if he's a murderer first.", destination: 1)
        ),
        Story(
            title: "He nods slowly, unfazed by the question.",
            choice1: Choice(choice: "At least he's honest. I'll climb in.", destination: 2),
            choice2: Choice(choice: "Wait, I know how to change a tire.", destination: 3)
        ),
        Story(
            title: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
            choice1: Choice(choice: "I love Elton John! Hand him the cassette tape.", destination: 5),
            choice2: Choice(choice: "It's him or me! You take the knife and stab him.", destination: 4)
        ),
        Story(
            title: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
            choice1: Choice(choice: "The", destination: 0),
            choice2: Choice(choice: "End", destination: 0)
        ),
        Story(
            title: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
            choice1: Choice(choice: "The", destination: 0),
            choice2: Choice(choice: "End", destination: 0)
        ),
        Story(
            title: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
            choice1: Choice(choice: "The", destination: 0),
            choice2: Choice(choice: "End", destination: 0)
        )
    ]
    lazy var storyInContext: Story = stories[0]
    
    mutating func handleChoice(choice: String){
        if choice == storyInContext.choice1.choice {
            storyInContext = stories[storyInContext.choice1.destination]
        } else if choice == storyInContext.choice2.choice {
            storyInContext = stories[storyInContext.choice2.destination]
        }
    }
    
}

