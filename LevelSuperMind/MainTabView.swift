
import Foundation
import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }

            ExploreView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Explore")
                }

            MainProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("You")
                }
        }
        .accentColor(.white) 
        .background(Color.backgroundDark)
    }
}

#Preview {
    MainTabView()
}
