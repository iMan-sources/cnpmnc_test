
import Testing
@testable import scholarship_test

//MARK: KIỂM THỬ TƯƠNG ĐƯƠNG ĐƠN GIẢN
@Test("SIMPLE EC Test 1: GPA -1, Income 5, Credits 15 → Lỗi (gpa invalid)")
func equivalenceTest1() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: -1.0, income: 5.0, credits: 15)
    #expect(result == .none)
}

@Test("SIMPLE EC Test 2: GPA 9, Income -1, Credits 15 → Lỗi (income invalid)")
func equivalenceTest2() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 9.0, income: -1.0, credits: 15)
    #expect(result == .none)
}

@Test("SIMPLE EC Test 3: GPA 9, Income 5, Credits -1 → Lỗi (credits invalid)")
func equivalenceTest3() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 9.0, income: 5.0, credits: -1)
    #expect(result == .none) 
}

@Test("SIMPLE EC Test 4: GPA 8, Income 5, Credits 15 → Toàn phần")
func equivalenceTest4() async throws {
    let rules = ScholarshipRules()
    let result = rules.decide(gpa: 8.0, income: 5, credits: 15)
    #expect(result == .partial)
}



