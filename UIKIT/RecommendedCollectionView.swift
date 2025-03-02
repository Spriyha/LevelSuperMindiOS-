//
//  RecommendedCollectionView.swift
//  LevelSuperMind
//
//  Created by Sagar Maurya on 01/03/25.
//

import Foundation
import SwiftUI
import UIKit


struct RecommendedCollectionView: UIViewControllerRepresentable {
    let items: [RecommendedItem]

    func makeUIViewController(context: Context) -> RecommendedViewController {
        return RecommendedViewController(items: items)
    }

    func updateUIViewController(_ uiViewController: RecommendedViewController, context: Context) {
        uiViewController.updateData(newItems: items) // ✅ Refresh data
    }
}

