//
//  TableViewController.swift
//  MySnippet
//
//  Created by 손은주 on 2017. 8. 19..
//  Copyright © 2017년 ejsohn. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {
    @IBOutlet weak var title: UILabel!
}

class TableViewController: UITableViewController {

    let cellIdentifier:String = "tableCell"
    
    let section = [
        "UI",
    ]
    
    let content = [
        [
            "revolvingBall",
        ]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return section.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.section[section]
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return content[section].count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TableCell
        
        cell.title.text = content[indexPath.section][indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let segue = content[indexPath.section][indexPath.row]
        performSegue(withIdentifier: segue, sender: self)
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        /// Do nothing.
    }
}
