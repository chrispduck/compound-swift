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
            Text(mission.name).font(.title2).foregroundColor(color)
            Text(mission.description).foregroundColor(color)
        }.padding()
    }
}

struct MissionOptionView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            Spacer()
            MissionOptionView(mission: example_mission,color: .green )
            Spacer()
            MissionOptionView(mission: example_mission_2, color: .red)
            Spacer()
        }.padding()
    }
}

struct TodayTaskView: View {
    var body: some View {
        VStack{
            Text("Pick your task").font(.title)
            Spacer()
            ZStack {
              Rectangle()
                .frame(height: 150)
                .foregroundColor(.red)
                MissionOptionView(mission: example_mission, color: .white )
            }
            ZStack {
              Rectangle()
                .frame(height: 150) 
                .foregroundColor(.blue)
                MissionOptionView(mission: example_mission_2, color: .white )
            }
            ZStack {
              Rectangle()
                .frame(height: 150)
                .foregroundColor(.green)
                Text("Pick your own").foregroundColor(.white).font(.title2)
            }
            Spacer()
        
        }.padding(.vertical, 40)
    }
}

struct TodayTaskView_Previews: PreviewProvider {
    static var previews: some View {
        TodayTaskView()
    }
}
