//
//  MovieCell.swift
//  NoStoryTest
//
//  Created by astanahub on 06.05.2024.
//

import UIKit

class MovieCell: UITableViewCell {
    
    lazy var titleLabel:UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var movieImage:UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier:String?){
        super.init(style:style,reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLayout(){
        let movieStackView = UIStackView(arrangedSubviews: [movieImage,titleLabel])
        movieStackView.translatesAutoresizingMaskIntoConstraints = false
        movieStackView.axis = .vertical
        movieStackView.addSubview(movieStackView)
        NSLayoutConstraint.activate([
            movieStackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            movieStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            movieStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            movieStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor)
        ])
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        //Configure the view for the selected state
    }
    
}

extension UITableView{
    static var identifier:String{
        return String(describing: self)
    }
}
