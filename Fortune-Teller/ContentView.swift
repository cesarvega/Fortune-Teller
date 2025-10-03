//
//  ContentView.swift
//  Fortune-Teller
//
//  Created by Acid Burn on 10/3/25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var authViewModel: AuthenticationViewModel
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Image(systemName: "sparkles")
                    .font(.system(size: 60))
                    .foregroundStyle(.tint)
                
                Text("Welcome, \(authViewModel.currentUser?.displayName ?? "User")!")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("You're successfully signed in")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Spacer()
                
                Button(action: {
                    authViewModel.signOut()
                }) {
                    Text("Sign Out")
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal, 40)
                .padding(.bottom, 40)
            }
            .padding()
            .navigationTitle("Fortune Teller")
        }
    }
}

#Preview {
    ContentView()
}
