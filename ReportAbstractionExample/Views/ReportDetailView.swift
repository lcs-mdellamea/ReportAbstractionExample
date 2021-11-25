//
//  ReportDetailView.swift
//  ReportAbstractionExample
//
//  Created by Madison Dellamea on 11/25/21.
//

import SwiftUI

struct ReportDetailView: View {
    
    //MARK: Stored Property
    let thisReport: Report
    
    //MARK: Computed Property
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Text(thisReport.name)
                
                Text(thisReport.comment)
                
                // Swift is a type-strict language.
                // Text can only show STRINGS and the variable "grade" is an INTEGER.
                Text("\(thisReport.grade)")
            }
        }
    }
}

struct ReportDetailView_Previews: PreviewProvider {
    static var previews: some View {
        // For the "thisReport" parameter, we supply, as an argument, the first item form the "listOfReports".
        ReportDetailView(thisReport: listOfReports.first!)
    }
}
