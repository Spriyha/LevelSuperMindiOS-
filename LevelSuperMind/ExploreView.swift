import SwiftUI

struct ExploreView: View {
    @State private var isExpanded = false
    
  
    private let initialButtons: [ExploreItem] = [
        ExploreItem(icon: "figure.mind.and.body", label: "Meditation"),
        ExploreItem(icon: "flame.fill", label: "Workout"),
        ExploreItem(icon: "bed.double.fill", label: "Sleep")
    ]
    
    private let allButtons: [ExploreItem] = [
        ExploreItem(icon: "figure.mind.and.body", label: "Meditation"),
        ExploreItem(icon: "flame.fill", label: "Workout"),
        ExploreItem(icon: "bed.double.fill", label: "Sleep"),
        ExploreItem(icon: "leaf.fill", label: "Mantra"),
        ExploreItem(icon: "calendar", label: "Events"),
        ExploreItem(icon: "book.fill", label: "Courses"),
        ExploreItem(icon: "person.3.fill", label: "Community"),
        ExploreItem(icon: "clock.fill", label: "Timer"),
        ExploreItem(icon: "star.fill", label: "Affirmation"),
        ExploreItem(icon: "music.note", label: "Music"),
        ExploreItem(icon: "book.closed.fill", label: "Journal")
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 4), spacing: 5) {
                ForEach(isExpanded ? allButtons : initialButtons) { item in
                    ExploreButton(icon: item.icon, label: item.label)
                }
                
                Button(action: {
                    withAnimation {
                        isExpanded.toggle()
                    }
                }) {
                    ExploreButton(icon: isExpanded ? "chevron.up" : "chevron.down", label: isExpanded ? "Close" : "More")
                }
            }
            if isExpanded {
                Button(action: {
                  
                }) {
                    Text("Edit Shortcuts")
                        .font(.system(size: 14))
                        .foregroundColor(Color.backgroundLight)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.backgroundMedium)
                        .cornerRadius(8)
                }
            }
        }
        .padding()
    }
}

struct ExploreButton: View {
    let icon: String
    let label: String
    
    var body: some View {
        VStack {
            Image(systemName: icon)
                .font(.system(size: 24))
                .foregroundColor(.white)
                .frame(width: 60, height: 60)
                .background(Color.backgroundLight)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            Text(label)
                .font(.caption)
                .foregroundColor(.white)
        }
    }
}

#Preview {
    ExploreView()
}
