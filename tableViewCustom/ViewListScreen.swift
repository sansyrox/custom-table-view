//
//  ViewListScreen.swift
//  tableViewCustom
//
//  Created by Sanskar Jethi on 14/04/19.
//  Copyright © 2019 Sanskar Jethi. All rights reserved.
//

import UIKit

class ViewListScreen: UIViewController {

	@IBOutlet weak var tableView: UITableView!
	var videos: [Video] = []
	
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		videos = createArray()

		tableView.delegate = self
		tableView.dataSource = self
    }
	
	func createArray() -> [Video] {
		
		var tempVideos: [Video] = []
		
		let video1 = Video(image: #imageLiteral(resourceName: "ss-delegates"), title: "Your First App")
		let video2 = Video(image: #imageLiteral(resourceName: "ss-uipickerview-card"), title:"My Dev Setup")
		let video3 = Video(image: #imageLiteral(resourceName: "vlog-4"), title: "iOS Interview")
		let video4 = Video(image: #imageLiteral(resourceName: "beginner-first-app"), title: "UIPicker View Tutorial")
		let video5 = Video(image: #imageLiteral(resourceName: "int-overview"), title: "Day in the life")
		
		
		
		tempVideos.append(video1)
		tempVideos.append(video2)
		tempVideos.append(video3)
		tempVideos.append(video4)
		tempVideos.append(video5)
		
		return tempVideos
	}
	

}


extension ViewListScreen: UITableViewDataSource, UITableViewDelegate {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return videos.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let video = videos[indexPath.row]
		
		let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
		
		cell.setVideo(video: video)
		
		
		return cell
	}
	
	
}
