//
//  scholarship_white_test.swift
//  scholarship_test
//
//  Created by Le Viet Anh on 13/11/25.
//

import Testing
@testable import scholarship_test

//MARK: KIỂM THỬ WHITE BOX - ĐỘ ĐO C1 & C2 (CONDITION COVERAGE)

// Test case 1: (10, 18, 3) - Full scholarship
// Điều kiện Full: gpa >= 8.0 (true) && credits >= 15 (true) && income < 5.0 (true)
@Test("C1 & C2 Test 1: GPA 10, Credits 18, Income 3 → Toàn phần")
func c1c2Test1_FullScholarship() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 10.0, income: 3.0, credits: 18)
    #expect(result == .full, "Expected Full scholarship (Toàn phần)")
}

// Test case 2: (8, 15, 6) - Partial scholarship
// Điều kiện Full: gpa >= 8.0 (true) && credits >= 15 (true) && income < 5.0 (false) → không thỏa
// Điều kiện Partial: gpa >= 7.0 (true) && credits >= 12 (true) && income < 8.0 (true) → thỏa
@Test("C1 & C2 Test 2: GPA 8, Credits 15, Income 6 → Bán phần")
func c1c2Test2_PartialScholarship() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 8.0, income: 6.0, credits: 15)
    #expect(result == .partial, "Expected Partial scholarship (Bán phần)")
}

// Test case 3: (10, 20, 16) - Praise scholarship
// Điều kiện Full: gpa >= 8.0 (true) && credits >= 15 (true) && income < 5.0 (false) → không thỏa
// Điều kiện Partial: gpa >= 7.0 (true) && credits >= 12 (true) && income < 8.0 (false) → không thỏa
// Điều kiện Praise: gpa >= 5.0 (true) && credits >= 10 (true) → thỏa
@Test("C1 & C2 Test 3: GPA 10, Credits 20, Income 16 → Khen thưởng")
func c1c2Test3_PraiseScholarship() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 10.0, income: 16.0, credits: 20)
    #expect(result == .praise, "Expected Praise scholarship (Khen thưởng)")
}

// Test case 4: (4, 10, 8) - None scholarship
// Điều kiện Full: gpa >= 8.0 (false) → không thỏa
// Điều kiện Partial: gpa >= 7.0 (false) → không thỏa
// Điều kiện Praise: gpa >= 5.0 (false) → không thỏa
// → None
@Test("C1 & C2 Test 4: GPA 4, Credits 10, Income 8 → Không học bổng")
func c1c2Test4_NoScholarship() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 4.0, income: 8.0, credits: 10)
    #expect(result == .none, "Expected No scholarship (Không học bổng)")
}

//MARK: KIỂM THỬ WHITE BOX - ĐỘ ĐO C3 (MULTIPLE CONDITION COVERAGE)

// Test case 1: (10, 30, 0) - Full scholarship
// Điều kiện Full: gpa >= 8.0 (true) && credits >= 15 (true) && income < 5.0 (true)
@Test("C3 Test 1: GPA 10, Credits 30, Income 0 → Toàn phần")
func c3Test1_FullScholarship() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 10.0, income: 0.0, credits: 30)
    #expect(result == .full, "Expected Full scholarship (Toàn phần)")
}

// Test case 2: (7, 15, 4) - Partial scholarship
// Điều kiện Full: gpa >= 8.0 (false) → không thỏa
// Điều kiện Partial: gpa >= 7.0 (true) && credits >= 12 (true) && income < 8.0 (true)
@Test("C3 Test 2: GPA 7, Credits 15, Income 4 → Bán phần")
func c3Test2_PartialScholarship() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 7.0, income: 4.0, credits: 15)
    #expect(result == .partial, "Expected Partial scholarship (Bán phần)")
}

// Test case 3: (7, 12, 4.0) - Partial scholarship
// Điều kiện Full: gpa >= 8.0 (false) → không thỏa
// Điều kiện Partial: gpa >= 7.0 (true) && credits >= 12 (true) && income < 8.0 (true)
@Test("C3 Test 3: GPA 7, Credits 12, Income 4.0 → Bán phần")
func c3Test3_PartialScholarship() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 7.0, income: 4.0, credits: 12)
    #expect(result == .partial, "Expected Partial scholarship (Bán phần)")
}

// Test case 4: (7.2, 12, 6) - Partial scholarship
// Điều kiện Full: gpa >= 8.0 (false) → không thỏa
// Điều kiện Partial: gpa >= 7.0 (true) && credits >= 12 (true) && income < 8.0 (true)
@Test("C3 Test 4: GPA 7.2, Credits 12, Income 6 → Bán phần")
func c3Test4_PartialScholarship() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 7.2, income: 6.0, credits: 12)
    #expect(result == .partial, "Expected Partial scholarship (Bán phần)")
}

// Test case 5: (6.5, 13, 6.5) - Praise scholarship
// Điều kiện Full: gpa >= 8.0 (false) → không thỏa
// Điều kiện Partial: gpa >= 7.0 (false) → không thỏa
// Điều kiện Praise: gpa >= 5.0 (true) && credits >= 10 (true)
@Test("C3 Test 5: GPA 6.5, Credits 13, Income 6.5 → Khen thưởng")
func c3Test5_PraiseScholarship() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 6.5, income: 6.5, credits: 13)
    #expect(result == .praise, "Expected Praise scholarship (Khen thưởng)")
}

// Test case 6: (5, 10, 6) - Praise scholarship
// Điều kiện Full: gpa >= 8.0 (false) → không thỏa
// Điều kiện Partial: gpa >= 7.0 (false) → không thỏa
// Điều kiện Praise: gpa >= 5.0 (true) && credits >= 10 (true)
@Test("C3 Test 6: GPA 5, Credits 10, Income 6 → Khen thưởng")
func c3Test6_PraiseScholarship() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 5.0, income: 6.0, credits: 10)
    #expect(result == .praise, "Expected Praise scholarship (Khen thưởng)")
}

// Test case 7: (6, 10, 8) - Praise scholarship
// Điều kiện Full: gpa >= 8.0 (false) → không thỏa
// Điều kiện Partial: gpa >= 7.0 (false) → không thỏa
// Điều kiện Praise: gpa >= 5.0 (true) && credits >= 10 (true)
@Test("C3 Test 7: GPA 6, Credits 10, Income 8 → Khen thưởng")
func c3Test7_PraiseScholarship() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 6.0, income: 8.0, credits: 10)
    #expect(result == .praise, "Expected Praise scholarship (Khen thưởng)")
}

// Test case 8: (0, 20, 11) - None scholarship
// Điều kiện Full: gpa >= 8.0 (false) → không thỏa
// Điều kiện Partial: gpa >= 7.0 (false) → không thỏa
// Điều kiện Praise: gpa >= 5.0 (false) → không thỏa
// → None
@Test("C3 Test 8: GPA 0, Credits 20, Income 11 → Không học bổng")
func c3Test8_NoScholarship() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 0.0, income: 11.0, credits: 20)
    #expect(result == .none, "Expected No scholarship (Không học bổng)")
}

// Test case 9: (4.0, 8, 12.0) - None scholarship
// Điều kiện Full: gpa >= 8.0 (false) → không thỏa
// Điều kiện Partial: gpa >= 7.0 (false) → không thỏa
// Điều kiện Praise: gpa >= 5.0 (false) && credits >= 10 (false) → không thỏa
// → None
@Test("C3 Test 9: GPA 4.0, Credits 8, Income 12.0 → Không học bổng")
func c3Test9_NoScholarship() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 4.0, income: 12.0, credits: 8)
    #expect(result == .none, "Expected No scholarship (Không học bổng)")
}


