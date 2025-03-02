
import Foundation
import UIKit
import SwiftUI

class RecommendedCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "RecommendedCell"
    
    private let imageView: UIImageView = {
        let imgView = UIImageView()
        imgView.contentMode = .scaleAspectFill
        imgView.clipsToBounds = true
        imgView.layer.cornerRadius = 10
        return imgView
    }()
    
    private let titleLabel: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        lbl.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        return lbl
    }()
    
    private let subtitleLabel: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .gray
        lbl.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        return lbl
    }()
    
    private let tagLabel: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        lbl.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        lbl.backgroundColor = UIColor.systemPurple
        lbl.textAlignment = .center
        lbl.layer.cornerRadius = 5
        lbl.clipsToBounds = true
        return lbl
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = UIColor(Color.backgroundMedium)

        contentView.layer.cornerRadius = 10
        contentView.clipsToBounds = true

        contentView.addSubview(imageView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(subtitleLabel)
        contentView.addSubview(tagLabel)
        
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupConstraints() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        tagLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 100), // Adjust image height
            
            titleLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 5),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
            
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 2),
            subtitleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            subtitleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
            
            tagLabel.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 5),
            tagLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            tagLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
            tagLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }

    func configure(with item: RecommendedItem) {
        imageView.image = UIImage(named: item.imageName)
        titleLabel.text = item.title
        subtitleLabel.text = item.subtitle
        tagLabel.text = item.tag
    }
}
