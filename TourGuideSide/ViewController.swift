//
//  ViewController.swift
//  TourGuideSide
//
//  Created by Vishnu on 7/13/17.
//  Copyright © 2017 Vishnu. All rights reserved.
//

import UIKit
import Charts

class ViewController: UIViewController {

    
    @IBOutlet weak var lineChartView: LineChartView!
    @IBOutlet weak var barChartView: BarChartView!
    
    var days = [String] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        days = ["Mon", "Tue", "Wed", "Thur", "Fri", "Sat", "Sun"]
        
        let earnings = [80.0, 45.0, 60.0, 100.0, 120.0, 160.0, 200.0]
        
        setChart(dataPoints: days, values: earnings)
        
    }

    func setChart(dataPoints: [String], values: [Double]) {
        
//        var dataEntries: [ChartDataEntry] = []
//        
//        for i in 0..<dataPoints.count {
//            let dataEntry = ChartDataEntry(x: Double(i), y: values[i])
//            dataEntries.append(dataEntry)
//        }
//        
//        let lineChartDataSet = LineChartDataSet(values: dataEntries, label: "Earnings in $")
//        let lineChartData = LineChartData(dataSet: lineChartDataSet)
//        lineChartView.data = lineChartData
//        lineChartView.descriptionText = ""
//        lineChartView.xAxis.labelPosition = .bottom
//        lineChartDataSet.colors = [(UIColor(red: 1/255, green: 152/255, blue: 117/255, alpha: 1.0))]
//        lineChartDataSet.circleColors = [(UIColor(red: 1/255, green: 152/255, blue: 117/255, alpha: 1.0))]
//        lineChartView.animate(xAxisDuration: 2.0, yAxisDuration: 2.0)
        
        var dataEntries: [BarChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let dataEntry = BarChartDataEntry(x: Double(i), y: values[i], data: dataPoints[i] as AnyObject)
            dataEntries.append(dataEntry)
        }
        
        barChartView.descriptionText = ""
        
        let chartDataSet = BarChartDataSet(values: dataEntries, label: "Units Sold")
        let chartData = BarChartData(dataSet: chartDataSet)
        barChartView.data = chartData
        
        
    }


}

