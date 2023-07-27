//
//  Task.swift
//  SwiftSample (iOS)
//
//  Created by Christopher Parsons on 22/07/2023.
//

struct Mission {
    let id: Int
    let name: String
    let difficulty: String
    let description: String
    let completed: Bool
    let completedAt: String
    let rating: Int 	
}


var example_mission = Mission(id: 100, name: "Dating", difficulty: "Medium", description: "Ask a girl for a date tomorrow" , completed: true, completedAt: "21st July", rating: 8)
var example_mission_2 = Mission(id: 101, name: "Cooking", difficulty: "Easy", description: "Cook a new dish and listen to a podcast" , completed: true, completedAt: "21st July", rating: 3)
	
