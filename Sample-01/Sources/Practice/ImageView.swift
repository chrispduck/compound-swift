//
//  SwiftUIView.swift
//  SwiftSample (iOS)
//
//  Created by Christopher Parsons on 22/07/2023.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image("cat").resizable().scaledToFit().clipShape(Circle()).shadow(radius: 10)
        
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
