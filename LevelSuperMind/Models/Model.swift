
import Foundation
struct RecentlyPlayedItem: Identifiable {
    let id = UUID()
    let imageName: String
}


struct RecommendedItem: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let subtitle: String
    let tag: String
   
}

struct ExploreItem: Identifiable {
    let id = UUID()
    let icon: String
    let label: String
}
struct StatisticModel: Identifiable {
    let id = UUID()
    let title: String
    let icon: String
    let sessions: Int
    let xp: Int
}
struct MeditationItem: Identifiable {
    let id = UUID()
    let title: String
    let duration: String
    let imageName: String
}
