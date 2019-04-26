//
//  SecondVC.swift
//  FizzBuzzChallenge
//
//  Created by Kamil Wrobel on 4/26/19.
//  Copyright © 2019 Kamil Wrobel. All rights reserved.
//

import UIKit

class SecondVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
 
    
    //MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    
    //MARK: - Properties
    let numbers : [Int] = {
        var numbers = [Int]()
        for number in 1...1000 {
            numbers.append(number)
        }
        return numbers
    }()
    
    
    
    //MARK: - LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    

    //MARK: - TableView Data Source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FizzCell" , for: indexPath) as? FizzCustomTVCell else { return UITableViewCell() }
        cell.titleLabel.text = checkForBuzz(for: numbers[indexPath.row])
        return cell
    }
    
    /// This method checks wheather the number is divisible by 3, or 5, or 3 and 5, and returns appropriate String, or number its self if all statement are false.
    func checkForBuzz(for number: Int) -> String {

        if number % 3 == 0 && number % 5 == 0 {
            return "Fizz Buzz"
        } else if number % 3 == 0 {
            return "Fizz"
        } else if number % 5 == 0 {
            return "Buzz"
        } else {
            return "\(number)"
        }
        
    }


}
