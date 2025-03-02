//
//  EditShortCutView.swift
//  LevelSuperMind
//
//  Created by Sagar Maurya on 01/03/25.
//

import Foundation
import SwiftUI

struct EditShortcutsView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var selectedShortcuts = ["Mind", "Body", "Sleep"]
    private let allShortcuts = ["Courses", "Journal", "Music", "Affirmation", "Mantras", "Timer"]
    
    var body: some View {
        VStack {
            HStack {
                Text("Select max 3 shortcuts")
                    .font(.headline)
                    .foregroundColor(.white)
                Spacer()
                Button("Cancel") {
                    presentationMode.wrappedValue.dismiss()
                }
                .foregroundColor(.gray)
            }
            .padding()
            
            // Selected Shortcuts
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 10) {
                ForEach(selectedShortcuts, id: \.self) { shortcut in
                    ShortcutButton(title: shortcut, removable: true) {
                        if let index = selectedShortcuts.firstIndex(of: shortcut) {
                            selectedShortcuts.remove(at: index)
                        }
                    }
                }
            }
            .padding()
            
            Divider().background(Color.gray)
            
            // Available Shortcuts
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 10) {
                ForEach(allShortcuts, id: \.self) { shortcut in
                    ShortcutButton(title: shortcut, removable: false) {
                        if selectedShortcuts.count < 3 {
                            selectedShortcuts.append(shortcut)
                        }
                    }
                }
            }
            .padding()
            
            Spacer()
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                Text("Save")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.purple)
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}

struct ShortcutButton: View {
    let title: String
    let removable: Bool
    let action: () -> Void
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack {
                Image(systemName: "square.grid.2x2") 
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                Text(title)
                    .font(.footnote)
                    .foregroundColor(.white)
            }
            .frame(width: 80, height: 80)
            .background(Color.purple.opacity(0.8))
            .cornerRadius(10)
            .onTapGesture {
                action()
            }
            
            if removable {
                Button(action: {
                    action()
                }) {
                    Image(systemName: "minus.circle.fill")
                        .foregroundColor(.red)
                        .offset(x: 5, y: -5)
                }
            }
        }
    }
}
