//
//  scholarship_test_strongEquivalence.swift
//  scholarship_test
//
//  Created by Le Viet Anh on 7/11/25.
//

import Testing
@testable import scholarship_test

//MARK: - KIỂM THỬ TƯƠNG ĐƯƠNG MẠNH

// G4 (GPA 9.0) test cases
@Test("Strong EC Test 1: G4-I1-C4 -> Toàn phần")
func strongECTest1() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 9.0, income: 3.0, credits: 16)
    #expect(result == .full, "Expected Full scholarship (Toàn phần)")
}

@Test("Strong EC Test 2: G4-I1-C3 -> Bán phần")
func strongECTest2() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 9.0, income: 3.0, credits: 13)
    #expect(result == .partial, "Expected Partial scholarship (Bán phần)")
}

@Test("Strong EC Test 3: G4-I1-C2 -> Khen thưởng")
func strongECTest3() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 9.0, income: 3.0, credits: 10)
    #expect(result == .praise, "Expected Praise (Khen thưởng)")
}

@Test("Strong EC Test 4: G4-I1-C1 -> Không học bổng")
func strongECTest4() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 9.0, income: 3.0, credits: 9)
    #expect(result == .none, "Expected No scholarship (Không học bổng)")
}

@Test("Strong EC Test 5: G4-I2-C4 -> Bán phần")
func strongECTest5() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 9.0, income: 7.0, credits: 16)
    #expect(result == .partial, "Expected Partial scholarship (Bán phần)")
}

@Test("Strong EC Test 6: G4-I2-C3 -> Bán phần")
func strongECTest6() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 9.0, income: 7.0, credits: 13)
    #expect(result == .partial, "Expected Partial scholarship (Bán phần)")
}

@Test("Strong EC Test 7: G4-I2-C2 -> Khen thưởng")
func strongECTest7() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 9.0, income: 7.0, credits: 10)
    #expect(result == .praise, "Expected Praise (Khen thưởng)")
}

@Test("Strong EC Test 8: G4-I2-C1 -> Không học bổng")
func strongECTest8() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 9.0, income: 7.0, credits: 9)
    #expect(result == .none, "Expected No scholarship (Không học bổng)")
}

@Test("Strong EC Test 9: G4-I3-C4 -> Khen thưởng")
func strongECTest9() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 9.0, income: 9.0, credits: 16)
    #expect(result == .praise, "Expected Praise (Khen thưởng)")
}

@Test("Strong EC Test 10: G4-I3-C3 -> Khen thưởng")
func strongECTest10() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 9.0, income: 9.0, credits: 13)
    #expect(result == .praise, "Expected Praise (Khen thưởng)")
}

@Test("Strong EC Test 11: G4-I3-C2 -> Khen thưởng")
func strongECTest11() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 9.0, income: 9.0, credits: 10)
    #expect(result == .praise, "Expected Praise (Khen thưởng)")
}

@Test("Strong EC Test 12: G4-I3-C1 -> Không học bổng")
func strongECTest12() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 9.0, income: 9.0, credits: 9)
    #expect(result == .none, "Expected No scholarship (Không học bổng)")
}

// G3 (GPA 7.5) test cases
@Test("Strong EC Test 13: G3-I1-C4 -> Bán phần")
func strongECTest13() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 7.5, income: 3.0, credits: 16)
    #expect(result == .partial, "Expected Partial scholarship (Bán phần)")
}

@Test("Strong EC Test 14: G3-I1-C3 -> Bán phần")
func strongECTest14() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 7.5, income: 3.0, credits: 13)
    #expect(result == .partial, "Expected Partial scholarship (Bán phần)")
}

@Test("Strong EC Test 15: G3-I1-C2 -> Khen thưởng")
func strongECTest15() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 7.5, income: 3.0, credits: 10)
    #expect(result == .praise, "Expected Praise (Khen thưởng)")
}

@Test("Strong EC Test 16: G3-I1-C1 -> Không học bổng")
func strongECTest16() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 7.5, income: 3.0, credits: 9)
    #expect(result == .none, "Expected No scholarship (Không học bổng)")
}

@Test("Strong EC Test 17: G3-I2-C4 -> Bán phần")
func strongECTest17() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 7.5, income: 7.0, credits: 16)
    #expect(result == .partial, "Expected Partial scholarship (Bán phần)")
}

@Test("Strong EC Test 18: G3-I2-C3 -> Bán phần")
func strongECTest18() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 7.5, income: 7.0, credits: 13)
    #expect(result == .partial, "Expected Partial scholarship (Bán phần)")
}

@Test("Strong EC Test 19: G3-I2-C2 -> Khen thưởng")
func strongECTest19() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 7.5, income: 7.0, credits: 10)
    #expect(result == .praise, "Expected Praise (Khen thưởng)")
}

@Test("Strong EC Test 20: G3-I2-C1 -> Không học bổng")
func strongECTest20() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 7.5, income: 7.0, credits: 9)
    #expect(result == .none, "Expected No scholarship (Không học bổng)")
}

@Test("Strong EC Test 21: G3-I3-C4 -> Khen thưởng")
func strongECTest21() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 7.5, income: 9.0, credits: 16)
    #expect(result == .praise, "Expected Praise (Khen thưởng)")
}

@Test("Strong EC Test 22: G3-I3-C3 -> Khen thưởng")
func strongECTest22() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 7.5, income: 9.0, credits: 13)
    #expect(result == .praise, "Expected Praise (Khen thưởng)")
}

@Test("Strong EC Test 23: G3-I3-C2 -> Khen thưởng")
func strongECTest23() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 7.5, income: 9.0, credits: 10)
    #expect(result == .praise, "Expected Praise (Khen thưởng)")
}

@Test("Strong EC Test 24: G3-I3-C1 -> Không học bổng")
func strongECTest24() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 7.5, income: 9.0, credits: 9)
    #expect(result == .none, "Expected No scholarship (Không học bổng)")
}

// G2 (GPA 5.5) test cases
@Test("Strong EC Test 25: G2-I1-C4 -> Khen thưởng")
func strongECTest25() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 5.5, income: 3.0, credits: 16)
    #expect(result == .praise, "Expected Praise (Khen thưởng)")
}

@Test("Strong EC Test 26: G2-I1-C3 -> Khen thưởng")
func strongECTest26() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 5.5, income: 3.0, credits: 13)
    #expect(result == .praise, "Expected Praise (Khen thưởng)")
}

@Test("Strong EC Test 27: G2-I1-C2 -> Khen thưởng")
func strongECTest27() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 5.5, income: 3.0, credits: 10)
    #expect(result == .praise, "Expected Praise (Khen thưởng)")
}

@Test("Strong EC Test 28: G2-I1-C1 -> Không học bổng")
func strongECTest28() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 5.5, income: 3.0, credits: 9)
    #expect(result == .none, "Expected No scholarship (Không học bổng)")
}

@Test("Strong EC Test 29: G2-I2-C4 -> Khen thưởng")
func strongECTest29() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 5.5, income: 7.0, credits: 16)
    #expect(result == .praise, "Expected Praise (Khen thưởng)")
}

@Test("Strong EC Test 30: G2-I2-C3 -> Khen thưởng")
func strongECTest30() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 5.5, income: 7.0, credits: 13)
    #expect(result == .praise, "Expected Praise (Khen thưởng)")
}

@Test("Strong EC Test 31: G2-I2-C2 -> Khen thưởng")
func strongECTest31() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 5.5, income: 7.0, credits: 10)
    #expect(result == .praise, "Expected Praise (Khen thưởng)")
}

@Test("Strong EC Test 32: G2-I2-C1 -> Không học bổng")
func strongECTest32() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 5.5, income: 7.0, credits: 9)
    #expect(result == .none, "Expected No scholarship (Không học bổng)")
}

@Test("Strong EC Test 33: G2-I3-C4 -> Khen thưởng")
func strongECTest33() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 5.5, income: 9.0, credits: 16)
    #expect(result == .praise, "Expected Praise (Khen thưởng)")
}

@Test("Strong EC Test 34: G2-I3-C3 -> Khen thưởng")
func strongECTest34() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 5.5, income: 9.0, credits: 13)
    #expect(result == .praise, "Expected Praise (Khen thưởng)")
}

@Test("Strong EC Test 35: G2-I3-C2 -> Khen thưởng")
func strongECTest35() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 5.5, income: 9.0, credits: 10)
    #expect(result == .praise, "Expected Praise (Khen thưởng)")
}

@Test("Strong EC Test 36: G2-I3-C1 -> Không học bổng")
func strongECTest36() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 5.5, income: 9.0, credits: 9)
    #expect(result == .none, "Expected No scholarship (Không học bổng)")
}

// G1 (GPA 4.0) test cases
@Test("Strong EC Test 37: G1-I1-C4 -> Không học bổng")
func strongECTest37() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 4.0, income: 3.0, credits: 16)
    #expect(result == .none, "Expected No scholarship (Không học bổng)")
}

@Test("Strong EC Test 38: G1-I1-C3 -> Không học bổng")
func strongECTest38() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 4.0, income: 3.0, credits: 13)
    #expect(result == .none, "Expected No scholarship (Không học bổng)")
}

@Test("Strong EC Test 39: G1-I1-C2 -> Không học bổng")
func strongECTest39() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 4.0, income: 3.0, credits: 10)
    #expect(result == .none, "Expected No scholarship (Không học bổng)")
}

@Test("Strong EC Test 40: G1-I1-C1 -> Không học bổng")
func strongECTest40() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 4.0, income: 3.0, credits: 9)
    #expect(result == .none, "Expected No scholarship (Không học bổng)")
}

@Test("Strong EC Test 41: G1-I2-C4 -> Không học bổng")
func strongECTest41() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 4.0, income: 7.0, credits: 16)
    #expect(result == .none, "Expected No scholarship (Không học bổng)")
}

@Test("Strong EC Test 42: G1-I2-C3 -> Không học bổng")
func strongECTest42() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 4.0, income: 7.0, credits: 13)
    #expect(result == .none, "Expected No scholarship (Không học bổng)")
}

@Test("Strong EC Test 43: G1-I2-C2 -> Không học bổng")
func strongECTest43() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 4.0, income: 7.0, credits: 10)
    #expect(result == .none, "Expected No scholarship (Không học bổng)")
}

@Test("Strong EC Test 44: G1-I2-C1 -> Không học bổng")
func strongECTest44() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 4.0, income: 7.0, credits: 9)
    #expect(result == .none, "Expected No scholarship (Không học bổng)")
}

@Test("Strong EC Test 45: G1-I3-C4 -> Không học bổng")
func strongECTest45() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 4.0, income: 9.0, credits: 16)
    #expect(result == .none, "Expected No scholarship (Không học bổng)")
}

@Test("Strong EC Test 46: G1-I3-C3 -> Không học bổng")
func strongECTest46() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 4.0, income: 9.0, credits: 13)
    #expect(result == .none, "Expected No scholarship (Không học bổng)")
}

@Test("Strong EC Test 47: G1-I3-C2 -> Không học bổng")
func strongECTest47() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 4.0, income: 9.0, credits: 10)
    #expect(result == .none, "Expected No scholarship (Không học bổng)")
}

@Test("Strong EC Test 48: G1-I3-C1 -> Không học bổng")
func strongECTest48() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 4.0, income: 9.0, credits: 9)
    #expect(result == .none, "Expected No scholarship (Không học bổng)")
}

