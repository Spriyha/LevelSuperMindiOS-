import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    @State private var isExpanded = false

    var body: some View {
        ZStack {
            Color.backgroundDark.ignoresSafeArea()

            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    
                    
                    ZStack {
                        GeometryReader { geometry in
                            Image("Background image")
                                .resizable()
                                .scaledToFill()
                                .frame(width: geometry.size.width, height: 300)
                                .clipped()
                        }
                        .frame(height: 300)
                        .ignoresSafeArea(edges: .top)
                    }
                    MeditationBannerView()

                    
                    
                    VStack(alignment: .leading) {
                        Text("Explore")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.horizontal)

                        ExploreView()
                    }

                   
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Recommended For You")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.horizontal)

                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 12) {
                                ForEach(viewModel.recommendedItems) { item in
                                    VStack(alignment: .leading, spacing: 4) {
                                        Image(item.imageName)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 140, height: 180)
                                            .clipShape(RoundedRectangle(cornerRadius: 15))
                                            .clipped()

                                        Text(item.title)
                                            .font(.caption)
                                            .fontWeight(.bold)
                                            .padding(.horizontal, 6)
                                            .foregroundColor(Color.tealAccent)
                                            .cornerRadius(5)

                                        Text(item.subtitle)
                                            .font(.subheadline)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .padding(.horizontal, 6)

                                        Text(item.tag)
                                            .font(.subheadline)
                                            .foregroundColor(.white)
                                            .padding(.horizontal, 6)
                                    }
                                    .frame(width: 140)
                                }
                            }
                            .padding(.horizontal)
                        }
                    }

                   
                    
                    VStack(alignment: .leading, spacing: 8) {
                        HStack{
                            Text("Recents")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding(.horizontal)
                            Spacer()
                            Text("See All")
                                .font(.headline)
                                .foregroundColor(.gray)
                                .padding(.horizontal)
                        }
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 12) {
                                ForEach(viewModel.recommendedItems) { item in
                                    VStack(alignment: .leading, spacing: 4) {
                                        Image(item.imageName)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 140, height: 180)
                                            .clipShape(RoundedRectangle(cornerRadius: 15))
                                            .clipped()

                                        Text(item.title)
                                            .font(.caption)
                                            .fontWeight(.bold)
                                            .padding(.horizontal, 6)
                                            .foregroundColor(Color.tealAccent)
                                            .cornerRadius(5)

                                        Text(item.subtitle)
                                            .font(.subheadline)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .padding(.horizontal, 6)

                                        Text(item.tag)
                                            .font(.subheadline)
                                            .foregroundColor(.white)
                                            .padding(.horizontal, 6)
                                    }
                                    .frame(width: 140)
                                }
                            }
                            .padding(.horizontal)
                        }
                    }

                    LearnBannerView()
                        .padding(.horizontal)
                    FeaturedCollectionView()
                        .padding(.horizontal)

                    CleanMindBannerView()
                }
                .padding(.bottom, 50)
            }
        }
    }
}
