//
//  SecondVC.swift
//  FizzBuzzChallenge
//
//  Created by Kamil Wrobel on 4/26/19.
//  Copyright © 2019 Kamil Wrobel. All rights reserved.
//

import UIKit

class SecondVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
 
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    //MARK: - TableView Data Source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        return cell
    }


}
