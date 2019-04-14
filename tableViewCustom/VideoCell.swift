//
//  VideoCell.swift
//  tableViewCustom
//
//  Created by Sanskar Jethi on 14/04/19.
//  Copyright © 2019 Sanskar Jethi. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {

	@IBOutlet weak var videoImageView: UIImageView!
	@IBOutlet weak var videoTitleLabel: UILabel!
	
	func setVideo(video: Video) {
		videoImageView.image = video.image
		videoTitleLabel.text = video.title
	}
}
