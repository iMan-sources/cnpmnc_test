//
//  File.swift
//  scholarship_test
//
//  Created by Le Anh on 7/11/25.
//

import Testing
@testable import scholarship_test

//MARK: KIỂM THỬ QUYẾT ĐỊNH
@Test("Decision Test 1: GPA 8.0, Income 4.99, Credits 15.0 → Toàn phần")
func decisionTest1_Full() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 8.0, income: 4.99, credits: 15.0)
    #expect(result == .full)
}


@Test("Decision Test 2: GPA 7.0, Income 7.99, Credits 12.0 → Bán phần")
func decisionTest2_Partial() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 7.0, income: 7.99, credits: 12.0)
    #expect(result == .partial)
}

@Test("Decision Test 3: GPA 5.0, Income 10.0, Credits 10.0 → Khen thưởng")
func decisionTest3_Praise() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 5.0, income: 10.0, credits: 10.0)
    #expect(result == .praise)
}

@Test("Decision Test 4: GPA 4.99, Income 0.0, Credits 30.0 → Không")
func decisionTest4_None() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 4.99, income: 0.0, credits: 30.0)
    #expect(result == .none)
}

