//
//  Data.swift
//  Nano Challenge 2
//
//  Created by Dheanda Allen on 27/07/22.
//

import SwiftUI

struct Question{
    var QuestionString: String
    var QuestionImage: String
//    var QuestionTemplate: String
    var QuestionOption: [String]
    var QuestionAnswer: String
    }

struct QuestionData{
    static let shared: [Question] =
   [
    Question(QuestionString: "Let people view and navigate a data hierarchy using a series of vertical columns.", QuestionImage: "columnView", QuestionOption: ["Collection View", "Column View"] , QuestionAnswer: "Column View"),
    
    Question(QuestionString: "Manage an ordered set of content and presents it in a customizable and highly visual layout.", QuestionImage: "collectionView", QuestionOption: ["Collection View", "Outline View"] , QuestionAnswer: "Collection View"),
    
    Question(QuestionString: "Presents hierarchical data in a scrolling list of cells that are organized into columns and rows.", QuestionImage: "outlineView", QuestionOption: ["Outline View", "Column View"] , QuestionAnswer: "Outline View"),
    
    Question(QuestionString: "Present data in one or more columns of rows.", QuestionImage: "listTable", QuestionOption: ["Column View", "List and Table"] , QuestionAnswer: "List and Table"),

    Question(QuestionString: "Presents multiple mutually exclusive panes of content in the same area, and can be switch between", QuestionImage: "tabView", QuestionOption: ["List and Table", "Tab View"] , QuestionAnswer: "List and Table"),
    
    Question(QuestionString: "Presents a range of tasks that people can perform in the current context.", QuestionImage: "activityView", QuestionOption: ["Share View", "Tab View"] , QuestionAnswer: "List and Table"),
    
    Question(QuestionString: "It initiates an instantaneous action", QuestionImage: "button", QuestionOption: ["Tab", "Button"] , QuestionAnswer: "Button"),
    
    Question(QuestionString: "Displays a menu of items or actions that directly relate to the button’s purpose.", QuestionImage: "pullDownButton", QuestionOption: ["Pop-up Button", "Pull-down Button"] , QuestionAnswer: "Pull-down Button"),
    
    Question(QuestionString: "Displays a menu of mutually exclusive options", QuestionImage: "popUpButton", QuestionOption: ["Pop-up Button", "Pull-down Button"] , QuestionAnswer: "Pop-up Button"),
    
    Question(QuestionString: "Appears at the top of an app screen, enabling navigation through a hierarchy of content.", QuestionImage: "navigationBar", QuestionOption: ["Navigation Bar", "Tab Bar"] , QuestionAnswer: "Navigation Bar"),
    
    Question(QuestionString: "Reveal and hide information and functionality related to specific controls or views.", QuestionImage: "disclosureControl", QuestionOption: ["Disclosure Control", "Segmented Control"] , QuestionAnswer: "Navigation Bar"),
    
    Question(QuestionString: "Appears at the top of an app screen, enabling navigation through a hierarchy of content.", QuestionImage: "searchField", QuestionOption: ["Search Field", "Text Field"] , QuestionAnswer: "Search Field"),
    
    Question(QuestionString: "Enables app navigation and provides quick access to top-level collections of content ", QuestionImage: "sidebar", QuestionOption: ["Navigation Bar", "Side Bar"] , QuestionAnswer: "Side Bar"),
    
    Question(QuestionString: "Use bar items to navigate between mutually exclusive panes of content in the same view.", QuestionImage: "tabBar", QuestionOption: ["Navigation Bar", "Tab Bar"] , QuestionAnswer: "Tab Bar"),
    
    Question(QuestionString: "Gives people critical information they need right away.", QuestionImage: "alert", QuestionOption: ["Alert", "Action"] , QuestionAnswer: "Tab Bar"),
    
    Question(QuestionString: "A modal view that presents choices related to an action people initiate.", QuestionImage: "actionSheet", QuestionOption: ["Action Sheet", "Share Sheet"] , QuestionAnswer: "Action Sheet"),
    
    Question(QuestionString: "Displays a row of indicator images, each of which represents a page in a flat list.", QuestionImage: "pageControl", QuestionOption: ["Action Sheet", "Page Control"] , QuestionAnswer: "Page Control"),
    
    Question(QuestionString: "Displays one or more scrollable lists of distinct values that people can choose from.", QuestionImage: "picker", QuestionOption: ["Alert", "Picker"] , QuestionAnswer: "Picker"),
    
    ]
}

