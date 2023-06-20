//
//  FrameworkDetailView.swift
//  Apple Frameworks
//
//  Created by anil pdv on 20/06/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {} label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }.padding(.horizontal)
            }

            Spacer()
            FrameworkTitleView(name: framework.name, imageName: framework.imageName)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button {} label: {
                Text("Learn More")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 280, height: 50)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework)
    }
}
