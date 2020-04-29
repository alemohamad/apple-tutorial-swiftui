//
//  WatchLandmarkDetail.swift
//  WatchLandmarks Extension
//
//  Created by Ale Mohamad on 29/04/2020.
//  Copyright © 2020 Ale Mohamad. All rights reserved.
//

import SwiftUI

struct WatchLandmarkDetail: View {
    @EnvironmentObject var userData: UserData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        userData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        ScrollView {
            VStack {
                CircleImage(image: self.landmark.image.resizable())
                    .scaledToFit()
                
                Text(self.landmark.name)
                    .font(.headline)
                    .lineLimit(nil)
                
                Toggle(isOn: $userData.landmarks[self.landmarkIndex].isFavorite) {
                    Text("Favorite")
                }
                
                Divider()
                
                Text(self.landmark.park)
                    .font(.caption)
                    .bold()
                    .lineLimit(nil)
                
                Text(self.landmark.state)
                    .font(.caption)
            }
            .padding(16)
        }
        .navigationBarTitle(Text("Landmarks"))
    }
}

struct WatchLandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        let userData = UserData()
        
        return Group {
            WatchLandmarkDetail(landmark: userData.landmarks[0])
                .environmentObject(userData)
                .previewDevice("Apple Watch Series 5 - 44 mm")
            
            WatchLandmarkDetail(landmark: userData.landmarks[0])
                .environmentObject(userData)
                .previewDevice("Apple Watch Series 5 - 40 mm")
        }
    }
}
