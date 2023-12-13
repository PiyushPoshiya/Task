//
//  DashboardScreen.swift
//  PracticalTask
//
//  Created by Piyush on 13/12/23.
//

import UIKit
import DGCharts

class DashboardScreen: UIViewController {

    @IBOutlet weak var pieChart: PieChartView!
    
    let months = ["Jan", "Feb", "Mar"]
    let unitsSold = [20.0, 30.0, 50.0]

    override func viewDidLoad() {
        super.viewDidLoad()

        setChart(dataPoints: months, values: unitsSold)
    }

    func setChart(dataPoints: [String], values: [Double]) {
      var dataEntries: [ChartDataEntry] = []
      for i in 0..<dataPoints.count {
        let dataEntry1 = ChartDataEntry(x: Double(i), y: values[i], data: dataPoints[i] as AnyObject)
        dataEntries.append(dataEntry1)
      }
    print(dataEntries[0].data)
    let pieChartDataSet = PieChartDataSet(entries: dataEntries, label: "")
      let pieChartData = PieChartData(dataSet: pieChartDataSet)
        pieChart.data = pieChartData
      
        let colors: [UIColor] = [UIColor.systemPink, UIColor.systemPurple, UIColor.systemOrange]
      
//      for _ in 0..<dataPoints.count {
//        let red = Double(arc4random_uniform(256))
//        let green = Double(arc4random_uniform(256))
//        let blue = Double(arc4random_uniform(256))
//          
//        let color = UIColor(red: CGFloat(red/255), green: CGFloat(green/255), blue: CGFloat(blue/255), alpha: 1)
//        colors.append(color)
//      }
      pieChartDataSet.colors = colors
    }

    @IBAction func btnLogOut(_ sender: Any) {
        let objVC = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "LoginScreen") as! LoginScreen
        let appNavigation: UINavigationController = UINavigationController(rootViewController: objVC)
        appNavigation.setNavigationBarHidden(true, animated: true)
        UIApplication.shared.windows[0].rootViewController = appNavigation
        UIApplication.shared.windows[0].makeKeyAndVisible()

    }

}
