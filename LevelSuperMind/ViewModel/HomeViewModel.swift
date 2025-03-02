
import Foundation
import SwiftUI

    class HomeViewModel: ObservableObject {
        @Published var recommendedItems: [RecommendedItem] = [
            RecommendedItem(imageName: "Card top half", title: "Meditation · 10 Mins", subtitle: "Freedom Series", tag: "Avi Arya"),
            RecommendedItem(imageName: "Card top half1", title: "Meditation Series", subtitle: "Freedom Series", tag: "Avi Arya"),
            RecommendedItem(imageName: "Card top half", title: "Meditation", subtitle: "Freedom Series", tag: "Avi Arya")
        ]
    }


