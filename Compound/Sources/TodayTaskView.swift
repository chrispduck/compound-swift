//
//  TodayTaskView.swift
//  SwiftSample (iOS)
//
//  Created by Christopher Parsons on 22/07/2023.
//

import SwiftUI

struct MissionOptionView: View {
    let mission: Mission
    let color: Color
    var body: some View {
        
        VStack (alignment: .center){
            Text(mission.name).font(.title)
            Text(mission.description)
        }.padding()
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(color, lineWidth: 2))
    }
}

struct MissionOptionView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            Spacer()
            MissionOptionView(mission: example_mission,color: .green )
            Spacer()
            MissionOptionView(mission: example_mission_2,color: .red)
            Spacer()

        }.padding()
    }
}

struct TodayTaskView: View {
    var body: some View {
        VStack{
            Spacer()
            MissionOptionView(mission: example_mission,color: .green )
            Spacer()
            MissionOptionView(mission: example_mission_2,color: .red)
            Spacer()

        }.padding()    }
}

struct TodayTaskView_Previews: PreviewProvider {
    static var previews: some View {
        TodayTaskView()
    }
}
