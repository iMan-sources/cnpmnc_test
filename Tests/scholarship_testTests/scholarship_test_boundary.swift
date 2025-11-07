//
//  File.swift
//  scholarship_test
//
//  Created by Le Anh on 7/11/25.
//

import Testing
@testable import scholarship_test


//MARK: KIỂM THỬ GIÁ TRỊ BIÊN
// Test case 1: Giá trị trung bình hợp lệ
@Test("Boundary Test 1: GPA 7.5, Income 6, Credits 13 → Bán phần")
func boundaryTest1_NormalValues() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 7.5, income: 6.0, credits: 13)
    #expect(result == .partial)
}

// Test case 2-7: Kiểm thử biên cho GPA
@Test("Boundary Test 2: GPA -1, Income 6, Credits 13 → Không")
func boundaryTest2_GPA_Negative() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: -1.0, income: 6.0, credits: 13)
    #expect(result == .none)
}

@Test("Boundary Test 3: GPA 0, Income 6, Credits 13 → Không")
func boundaryTest3_GPA_Zero() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 0.0, income: 6.0, credits: 13)
    #expect(result == .none)
}

@Test("Boundary Test 4: GPA 0.1, Income 6, Credits 13 → Không")
func boundaryTest4_GPA_MinPositive() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 0.1, income: 6.0, credits: 13)
    #expect(result == .none)
}

@Test("Boundary Test 5: GPA 9.9, Income 6, Credits 13 → Bán phần")
func boundaryTest5_GPA_NearMax() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 9.9, income: 6.0, credits: 13)
    #expect(result == .partial)
}

@Test("Boundary Test 6: GPA 10.0, Income 6, Credits 13 → Bán phần")
func boundaryTest6_GPA_Max() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 10.0, income: 6.0, credits: 13)
    #expect(result == .partial)
}

@Test("Boundary Test 7: GPA 11, Income 6, Credits 13 → Không")
func boundaryTest7_GPA_OverMax() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 11.0, income: 6.0, credits: 13)
    #expect(result == .none)
}

// Test case 8-13: Kiểm thử biên cho Income
@Test("Boundary Test 8: GPA 7.5, Income -1, Credits 13 → Không")
func boundaryTest8_Income_Negative() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 7.5, income: -1.0, credits: 13)
    #expect(result == .none)
}

@Test("Boundary Test 9: GPA 7.5, Income 0.0, Credits 13 → Bán phần")
func boundaryTest9_Income_Zero() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 7.5, income: 0.0, credits: 13)
    #expect(result == .partial)
}

@Test("Boundary Test 10: GPA 7.5, Income 0.1, Credits 13 → Bán phần")
func boundaryTest10_Income_MinPositive() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 7.5, income: 0.1, credits: 13)
    #expect(result == .partial)
}

@Test("Boundary Test 11: GPA 7.5, Income 19.9, Credits 13 → Khen")
func boundaryTest11_Income_NearBoundary() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 7.5, income: 19.9, credits: 13)
    #expect(result == .praise)
}

@Test("Boundary Test 12: GPA 7.5, Income 20.0, Credits 13 → Khen")
func boundaryTest12_Income_Boundary() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 7.5, income: 20.0, credits: 13)
    #expect(result == .praise)
}

@Test("Boundary Test 13: GPA 7.5, Income 21.0, Credits 13 → Không")
func boundaryTest13_Income_OverBoundary() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 7.5, income: 21.0, credits: 13)
    #expect(result == .none)
}

// Test case 14-19: Kiểm thử biên cho Credits
@Test("Boundary Test 14: GPA 7.5, Income 6, Credits -1 → Không")
func boundaryTest14_Credits_Negative() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 7.5, income: 6.0, credits: -1)
    #expect(result == .none)
}

@Test("Boundary Test 15: GPA 7.5, Income 6, Credits 0 → Không")
func boundaryTest15_Credits_Zero() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 7.5, income: 6.0, credits: 0)
    #expect(result == .none)
}

@Test("Boundary Test 16: GPA 7.5, Income 6, Credits 0.1 → Không")
func boundaryTest16_Credits_MinPositive() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 7.5, income: 6.0, credits: 0)
    #expect(result == .none)
}

@Test("Boundary Test 17: GPA 7.5, Income 6, Credits 29.9 → Bán phần")
func boundaryTest17_Credits_NearMax() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 7.5, income: 6.0, credits: 29.9)
    #expect(result == .partial)
}

@Test("Boundary Test 18: GPA 7.5, Income 6, Credits 30 → Bán phần")
func boundaryTest18_Credits_Max() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 7.5, income: 6.0, credits: 30)
    #expect(result == .partial)
}

@Test("Boundary Test 19: GPA 7.5, Income 6, Credits 31 → Không")
func boundaryTest19_Credits_OverMax() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 7.5, income: 6.0, credits: 31)
    #expect(result == .none)
}
