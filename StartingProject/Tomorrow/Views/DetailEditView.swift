//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by Andrii Kurasov on 25.04.2024.
//

import SwiftUI

struct DetailEditView: View {
    @State private var scrum = DailyScrum.emptyScrum
    
    var body: some View {
        Form {
            Section(header: Text("meeting info")){
                TextField("Title", text: $scrum.title)
                HStack {
                    Slider(value: $scrum.lenghtInMinutesAsDouble, in: 5...30, step: 1){
                        Text("Lenght")
                    }
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
            }
        }
    }
}

struct DetailEditView_Previews: PreviewProvider{
    static var previews: some View {
        DetailEditView()
    }
}
