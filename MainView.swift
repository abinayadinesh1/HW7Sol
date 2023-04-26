//
//  MainView.swift
//  HW72
//
//  Created by Abinaya on 3/21/23.
//

import SwiftUI
import PhotosUI
import Firebase
struct MainView: View {
<<<<<<< HEAD
    let database = Firestore.firestore()
    @State var allSpots = [String]()
=======
    @State var selectedLocation = ""
    @State var restaurantName = ""
    @State var rating = 0
    @State private var showingImagePicker = false
>>>>>>> 0b05137 (final hw7 solution)
    
    //TODO: create and implement the function readAll() as shown in the slides.
    // take a peek at FirestoreManager.swift, specifically lines 24-27 for reference on what variables we have


    var body: some View {
<<<<<<< HEAD
        ZStack {
            Image("firecracker")
=======
        VStack {
            Text("Add a spot").font(.title)
            TextField("Kimchi Garden", text: $restaurantName).frame(alignment: .center).padding(.leading, 50).padding(.trailing, 50).font(.body).multilineTextAlignment(.center)
            VStack {
                Picker("Select a location", selection: $selectedLocation) {
                    ForEach(locations, id: \.self) {
                        Text($0).frame(alignment: .center).font(.body)
                    }
                }
            }.pickerStyle(.menu)
            TextField("How much did you enjoy it out of 10?", value: $rating, format: .number).font(.body).multilineTextAlignment(.center)
            
            Button(action: {updateObj()}) {
                Text("Save")            }
        }.background(
            Image("grass")
>>>>>>> 0b05137 (final hw7 solution)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            ScrollView{
                ForEach(allSpots, id: \.self) { spot in
                    Text(spot).font(.title2)
                    Divider()
                }
            }.padding(.top, 30).onAppear {
                //TODO: call the readAll function here
        }
        }

    }
}
