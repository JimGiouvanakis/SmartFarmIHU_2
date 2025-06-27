//
//  TeamMapper.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 27/6/25.
//

import Foundation

struct TeamMapper {
    
    // MARK: - Properties
    
    // ..
    
    // MARK: - Methods
    
    func getTeamData() -> [TeamModel] {
        var array: [TeamModel] = []
        var item: TeamModel = .init()
        
        item.id = "TeamMember_1"
        item.image = "Professor1"
        item.name = ViewStrings.prof1Name.localized
        item.academicRole = ViewStrings.prof1AcRole.localized
        item.projectRole = ViewStrings.prof1PrRole.localized
        item.side = true
        
        array.append(item)
        
        item.id = "TeamMember_2"
        item.image = "Professor2"
        item.name = ViewStrings.prof2Name.localized
        item.academicRole = ViewStrings.prof2AcRole.localized
        item.projectRole = ViewStrings.prof3PrRole.localized
        item.side = false
        
        array.append(item)
        
        item.id = "TeamMember_3"
        item.image = "Professor3"
        item.name = ViewStrings.prof3Name.localized
        item.academicRole = ViewStrings.prof3AcRole.localized
        item.projectRole = ViewStrings.prof3PrRole.localized
        item.side = true
        
        array.append(item)
        
        item.id = "TeamMember_4"
        item.image = "Professor4"
        item.name = ViewStrings.prof4Name.localized
        item.academicRole = ViewStrings.prof4AcRole.localized
        item.projectRole = ViewStrings.prof4PrRole.localized
        item.side = false
        
        array.append(item)
        
        item.id = "TeamMember_5"
        item.image = "Professor5"
        item.name = ViewStrings.prof5Name.localized
        item.academicRole = ViewStrings.prof5AcRole.localized
        item.projectRole = ViewStrings.prof5PrRole.localized
        item.side = true
        
        array.append(item)
        
        item.id = "TeamMember_6"
        item.image = "Professor6"
        item.name = ViewStrings.prof6Name.localized
        item.academicRole = ViewStrings.prof6AcRole.localized
        item.projectRole = ViewStrings.prof6PrRole.localized
        item.side = false
        
        array.append(item)
        
        item.id = "TeamMember_7"
        item.image = "Professor7"
        item.name = ViewStrings.prof7Name.localized
        item.academicRole = ViewStrings.prof7AcRole.localized
        item.projectRole = ViewStrings.prof7PrRole.localized
        item.side = true
        
        array.append(item)
        
        item.id = "TeamMember_8"
        item.image = "Professor8"
        item.name = ViewStrings.prof8Name.localized
        item.academicRole = ViewStrings.prof8AcRole.localized
        item.projectRole = ViewStrings.prof8PrRole.localized
        item.side = false
        
        array.append(item)
        
        item.id = "TeamMember_9"
        item.image = "Professor9"
        item.name = ViewStrings.prof9Name.localized
        item.academicRole = ViewStrings.prof9AcRole.localized
        item.projectRole = ViewStrings.prof9PrRole.localized
        item.side = true
        
        array.append(item)
        
        return array
    }
}


// MARK: - Localization

extension TeamMapper {
    enum ViewStrings: String, LocalizableProtocol {
        
        //  MARK: - TeamMapper
        
        case prof1Name                                = "professor1_name"
        case prof1AcRole                              = "professor1_academinc_role"
        case prof1PrRole                              = "professor1_project_role"
        
        case prof2Name                                = "professor2_name"
        case prof2AcRole                              = "professor2_academinc_role"
        case prof2PrRole                              = "professor2_project_role"
        
        case prof3Name                                = "professor3_name"
        case prof3AcRole                              = "professor3_academinc_role"
        case prof3PrRole                              = "professor3_project_role"
        
        case prof4Name                                = "professor4_name"
        case prof4AcRole                              = "professor4_academinc_role"
        case prof4PrRole                              = "professor4_project_role"
        
        case prof5Name                                = "professor5_name"
        case prof5AcRole                              = "professor5_academinc_role"
        case prof5PrRole                              = "professor5_project_role"
        
        case prof6Name                                = "professor6_name"
        case prof6AcRole                              = "professor6_academinc_role"
        case prof6PrRole                              = "professor6_project_role"
        
        case prof7Name                                = "professor7_name"
        case prof7AcRole                              = "professor7_academinc_role"
        case prof7PrRole                              = "professor7_project_role"
        
        case prof8Name                                = "professor8_name"
        case prof8AcRole                              = "professor8_academinc_role"
        case prof8PrRole                              = "professor8_project_role"
        
        case prof9Name                                = "professor9_name"
        case prof9AcRole                              = "professor9_academinc_role"
        case prof9PrRole                              = "professor9_project_role"
        
        var tableName: String {
            "Localizable"
        }
    }
}
