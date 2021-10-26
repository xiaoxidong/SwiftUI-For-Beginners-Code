//
//  DateView.swift
//  SwiftUI For Designers Code
//
//  Created by XiaoDong Yuan on 2021/10/25.
//

import SwiftUI

struct DateView: View {
    var body: some View {
        Button {
            dateAction()
        } label: {
            Text("Date 操作")
        }
    }
    
    func dateAction() {
        // 日期转化成字符串
        // 日期转化成要求的字符串
        /*
        let currentdate = Date()
        let dateformatter = DateFormatter()
        dateformatter.dateStyle = .full
        dateformatter.timeStyle = .long
        dateformatter.dateFormat = "YYYY-MM-dd HH:mm:ss"
        let dateString = dateformatter.string(from: currentdate)
        print(dateString)
        */
        
        // 指定的字符串转化为 Date
        /*
        let dateString = "2021-10-24"
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "YYYY-MM-dd"
        let newDate = dateformatter.date(from: dateString)
        print(newDate)
        */
        
        // Date 的拆分
        /*
        let currentdate = Date()
        let calendar = Calendar.current
        var dateComponents = calendar.dateComponents([.year,.month, .day, .hour,.minute,.second], from: currentdate )
        dateComponents.timeZone = TimeZone(identifier: "Asia/Shanghai")
        print(dateComponents.year)
        print(dateComponents.minute)
        */

        // 时间差
        var currentdate = Date()
        // 时间间隔，按照秒数计算，24 * 60 * 60 是一天
        let timeInterval: TimeInterval = 24 * 60 * 60
        // 明天的这个时间
        let tomorrow = currentdate.addTimeInterval(timeInterval)
        // 昨天的这个时间
        let yesterday = currentdate.advanced(by: timeInterval)
        
    }
}

struct DateView_Previews: PreviewProvider {
    static var previews: some View {
        DateView()
    }
}
