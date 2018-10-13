//
//  MovieCell.swift
//  flixster
//
//  Created by Chris Q. on 9/15/18.
//  Copyright © 2018 Chris Q. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    var movie: Movie! {
        didSet{
            let title = movie.title as! String
            let overview = movie.overview as! String
            self.titleLabel.text = title
            self.overviewLabel.text = overview
            let posterURL = movie.posterUrl
            self.posterImageView.af_setImage(withURL: posterURL!)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
