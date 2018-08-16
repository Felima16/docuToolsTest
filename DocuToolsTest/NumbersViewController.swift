//
//  ViewController.swift
//  DocuToolsTest
//
//  Created by Fernanda de Lima on 15/08/2018.
//  Copyright © 2018 FeLima. All rights reserved.
//

import UIKit

class NumbersViewController: UIViewController {
    
    var numbers:[Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initNumbers()
    }
    
    private func initNumbers(){
        for i in 0...100{
            let n = i * i
            numbers.append(n)
        }
    }

}

extension NumbersViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "numberIdentifier") as! UITableViewCell
        cell.textLabel?.text = "\(numbers[indexPath.row])"
        return cell
    }
    
    
}

