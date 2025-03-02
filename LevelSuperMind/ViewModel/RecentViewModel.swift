
import Foundation

class RecentViewModel: ObservableObject {
    @Published var recentlyPlayed: [RecentlyPlayedItem] = [
        RecentlyPlayedItem(imageName: "Card top half"),
        RecentlyPlayedItem(imageName: "Card top half"),
        RecentlyPlayedItem(imageName:"Card top half"),
        ]
}
