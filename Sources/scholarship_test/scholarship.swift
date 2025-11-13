//
//  File.swift
//  scholarship_test
//
//  Created by Le Anh on 6/11/25.
//

import Foundation

public enum Scholarship: Equatable, CustomStringConvertible {
    case full     // Học bổng toàn phần
    case partial  // Học bổng bán phần
    case praise   // khen thưởng
    case none     // Không có học bổng

    public var description: String {
        switch self {
        case .full: return "Full"
        case .partial: return "Partial"
        case .praise: return "Praise"
        case .none: return "None"
        }
    }
}

/// - Full:    GPA ≥ 8.0 && credits ≥ 15 && income < 5.0
/// - Partial: GPA ≥ 7.0 && credits ≥ 12 && income < 8.0
/// - Praise:  GPA ≥ 6.0 && credits ≥ 10
/// - None:    Otherwise
///
/// Ghi chú: Thứ tự ưu tiên đảm bảo "Full" thắng "Partial" nếu cùng thỏa.
public struct ScholarshipRules {
    public init() {}

    public func decide(gpa: Double, income: Double, credits: Double) -> Scholarship {
        // Validation: Kiểm tra giá trị hợp lệ
        // GPA phải trong khoảng [0, 10]
        if gpa < 0 || gpa > 10 {
            return .none
        }
        
        // Income phải >= 0
        if income < 0 || income > 20 {
            return .none
        }
        
        // Credits phải trong khoảng [0, 30]
        if credits < 0 || credits > 30 {
            return .none
        }
        
        // Full first (ưu tiên cao nhất)
        if gpa >= 8.0 && credits >= 15 && income < 5.0 {
            return .full
        }

        // Partial
        if gpa >= 7.0 && credits >= 12 && income < 8.0 {
            return .partial
        }

        // Praise
        if gpa < 5.0 && credits < 10 {
            return .praise
        }

        return .none
    }
}
