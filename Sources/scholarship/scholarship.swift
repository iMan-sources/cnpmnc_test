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
    case praise   // Giấy khen / khen thưởng
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

/// Luật gốc (đúng) — suy ra từ đặc tả trong tài liệu & ví dụ test:
/// - Full:    GPA ≥ 8.0 && credits ≥ 15 && income < 5.0
/// - Partial: GPA ≥ 7.0 && credits ≥ 12 && income < 8.0
/// - Praise:  GPA ≥ 6.0 && credits ≥ 10
/// - None:    Otherwise
///
/// Ghi chú: Thứ tự ưu tiên đảm bảo "Full" thắng "Partial" nếu cùng thỏa.
public struct ScholarshipRules {
    public init() {}

    public func decide(gpa: Double, income: Double, credits: Int) -> Scholarship {
        // Full first (ưu tiên cao nhất)
        if gpa >= 8.0 && credits >= 15 && income < 5.0 {
            return .full
        }

        // Partial
        if gpa >= 7.0 && credits >= 12 && income < 8.0 {
            return .partial
        }

        // Praise
        if gpa >= 6.0 && credits >= 10 {
            return .praise
        }

        return .none
    }
}
