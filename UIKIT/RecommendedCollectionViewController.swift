import UIKit

class RecommendedViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    private var collectionView: UICollectionView!
    private var recommendedItems: [RecommendedItem]
    
    // ✅ Corrected: Custom Initializer to Accept Data
    init(items: [RecommendedItem]) {
        self.recommendedItems = items
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.clear
        setupCollectionView()
    }
    
    private func setupCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 200, height: 180)
        layout.minimumLineSpacing = 10
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(RecommendedCollectionViewCell.self, forCellWithReuseIdentifier: RecommendedCollectionViewCell.identifier)
        
        view.addSubview(collectionView)
        
        // ✅ Use Auto Layout Instead of Frame Calculation
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    // ✅ Fix: Ensure UI Updates Happen on the Main Thread
    func updateData(newItems: [RecommendedItem]) {
        DispatchQueue.main.async {
            self.recommendedItems = newItems
            self.collectionView.reloadData()
        }
    }
    
    // ✅ Data Source
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recommendedItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RecommendedCollectionViewCell.identifier, for: indexPath) as! RecommendedCollectionViewCell
        cell.configure(with: recommendedItems[indexPath.row])
        return cell
    }
}
