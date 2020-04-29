//
//  NotificationView.swift
//  WatchLandmarks Extension
//
//  Created by Ale Mohamad on 29/04/2020.
//  Copyright © 2020 Ale Mohamad. All rights reserved.
//

import SwiftUI

struct NotificationView: View {
    let title: String?
    let message: String?
    let landmark: Landmark?
    
    init(title: String? = nil,
         message: String? = nil,
         landmark: Landmark? = nil) {
        self.title = title
        self.message = message
        self.landmark = landmark
    }
    
    var body: some View {
        VStack {
            if landmark != nil {
                CircleImage(image: landmark!.image.resizable())
                    .scaledToFit()
                    .padding(.horizontal, 16.0)
            }
            
            Text(title ?? "Unkonwn Landmark")
                .font(.headline)
                .lineLimit(nil)
            
            Divider()
            
            Text(message ?? "You are within 5 miles of one of your favorite landmarks.")
                .font(.caption)
                .lineLimit(nil)
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NotificationView()
            
            NotificationView(title: "Turtle Rock",
                             message: "You are within 5 miles of Turtle Rock.",
                             landmark: UserData().landmarks[0])
        }
        .previewLayout(.sizeThatFits)
    }
}
