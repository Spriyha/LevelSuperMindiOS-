import SwiftUI

struct MainProfileView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        VStack {
         
            ProfileHeaderView(isLibraryViewOpen: selectedTab == 0)
          
            HStack {
                TabButton(title: "My Library", isSelected: selectedTab == 0) {
                    selectedTab = 0
                }
                
                TabButton(title: "Insights", isSelected: selectedTab == 1) {
                    selectedTab = 1
                }
            }
            .overlay(
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(Color.gray.opacity(0.5)),
                alignment: .bottom
            )
            .padding(.top, 10)

           
            if selectedTab == 0 {
                LibraryView()
            } else {
                InsightsView()
            }
        }
        .background(Color.backgroundDark)
    }
}


struct TabButton: View {
    let title: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        VStack {
            Button(action: action) {
                Text(title)
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(isSelected ? .white : .gray)
                    .frame(maxWidth: .infinity)
            }
           
            Rectangle()
                .frame(height: isSelected ? 2 : 0)
                .foregroundColor(.white)
        }
    }
}
