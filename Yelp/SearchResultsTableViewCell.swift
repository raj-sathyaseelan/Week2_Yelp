//
//  SearchResultsTableViewCell.swift
//  Yelp
//
//  Created by Raj Sathyaseelan on 10/24/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class SearchResultsTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var businessImageView: UIImageView!

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var reviewCountLabel: UILabel!
    @IBOutlet weak var milesLabel: UILabel!
    @IBOutlet weak var categoriesLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var reviewsImageVie: UIImageView!
    
    var business: Business! {
        didSet {
            
            nameLabel.text = business.name
            milesLabel.text = business.distance
            reviewsImageVie.setImageWith(business.ratingImageURL!)
            businessImageView.setImageWith(business.imageURL!)
            addressLabel.text = business!.address!
            reviewCountLabel.text = "\(business!.reviewCount!) Reviews"
            categoriesLabel.text =  business.categories
            
            nameLabel.sizeToFit()
            milesLabel.sizeToFit()
            addressLabel.sizeToFit()
            reviewCountLabel.sizeToFit()
            categoriesLabel.sizeToFit()
        }

    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        businessImageView.layer.cornerRadius = 3
        businessImageView.clipsToBounds = true
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
