//
//  Home.swift
//  Landmarks
//
//  Created by Ale Mohamad on 28/04/2020.
//  Copyright © 2020 Ale Mohamad. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    var body: some View {
        NavigationView {
            Text("Landmarks Content")
                .navigationBarTitle(Text("Featured"))
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
