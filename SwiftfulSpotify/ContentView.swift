//
//  ContentView.swift
//  SwiftfulSpotify
//
//  Created by user274186 on 2/4/25.
//

import SwiftUI
import SwiftfulUI
import SwiftfulRouting

struct ContentView: View {
    
    @State private var users: [User] = []
    @State private var products: [Product] = []
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(users) { user in
                    Text(user.firstName)
                }
                ForEach(products) { product in
                    Text(product.title)
                }
                Text("\(products.count)")
                Text("\(users.count)")
            }
        }
        .padding()
        .task {
            await getData()
        }
    }
    
    private func getData() async {
        do {
            users = try await DatabaseHelper().getUsers()
            products = try await DatabaseHelper().getProducts()
        } catch  {
            
        }
    }
}

#Preview {
    ContentView()
}
