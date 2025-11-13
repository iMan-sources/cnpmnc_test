//
//  File.swift
//  scholarship_test
//
//  Created by Le Anh on 7/11/25.
//

import Testing
@testable import scholarship_test

//MARK: KIỂM THỬ TƯƠNG ĐƯƠNG YẾU
@Test("WEAK EC Test 1: GPA 9.0, Income 4, Credits 15 -> Toàn phần")
func testCase1() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 9.0, income: 4.0, credits: 15)
    #expect(result == .full, "Expected Full scholarship (Toàn phần)")
}

@Test("WEAK EC Test 2: GPA 7.5, Income 7, Credits 12 -> Bán phần")
func testCase2() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 7.5, income: 7.0, credits: 12)
    #expect(result == .partial, "Expected Partial scholarship (Bán phần)")
}

@Test("WEAK EC Test 3: GPA 6.0, Income 9, Credits 10 -> Khen")
func testCase3() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 6.0, income: 9.0, credits: 10)
    #expect(result == .praise, "Expected Praise (Khen)")
}

@Test("WEAK EC Test 4: GPA 3.0, Income 5, Credits 20 -> Không học bổng")
func testCase4() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 3.0, income: 5.0, credits: 20)
    #expect(result == .none, "Expected No scholarship (Không học bổng)")
}

@Test("WEAK EC Test 5: GPA 9.0, Income 15, Credits 15 -> Khen thưởng")
func testCase5() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 9.0, income: 15.0, credits: 15)
    #expect(result == .praise, "Expected Praise (Khen)")
}
