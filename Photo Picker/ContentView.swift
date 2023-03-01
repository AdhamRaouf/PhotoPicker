    //
    //  ContentView.swift
    //  Photo Picker
    //
    //  Created by Adham Raouf on 30/10/2022.
    //

import SwiftUI

struct ContentView: View {
    @State private var isShowingPhotoPicker = false
    @State private var avatarImage = UIImage(named: "Default avatar")!
    var body: some View {
        VStack {
            Image(uiImage: avatarImage)
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .padding()
                .onTapGesture { isShowingPhotoPicker = true }
            Spacer()
            
        }
        .navigationTitle("Profile")
        .sheet(isPresented: $isShowingPhotoPicker, content: {
            PhotoPicker(avatarImage: $avatarImage)
        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
        }
        .preferredColorScheme(.dark)
    }
}
