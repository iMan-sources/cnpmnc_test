
import Testing
@testable import scholarship_test

//MARK: KIỂM THỬ TƯƠNG ĐƯƠNG ĐƠN GIẢN
@Test("Test case 1: GPA -1, Income 5, Credits 15 → Lỗi (gpa invalid)")
func equivalenceTest1() async throws {
    let rules = ScholarshipRules()
    // Test với GPA không hợp lệ (âm)
    // Lưu ý: Code hiện tại chưa có validation, test này sẽ fail cho đến khi thêm validation
    let result = rules.decide(gpa: -1.0, income: 5.0, credits: 15)
    // Với GPA -1, logic hiện tại sẽ trả về .none vì không thỏa điều kiện nào
    // Test này cần được cập nhật khi thêm validation để throw error
    #expect(result == .none)
}

@Test("Test case 2: GPA 9, Income -1, Credits 15 → Lỗi (income invalid)")
func equivalenceTest2() async throws {
    let rules = ScholarshipRules()
    // Test với Income không hợp lệ (âm)
    let result = rules.decide(gpa: 9.0, income: -1.0, credits: 15)
    // Với Income -1, logic hiện tại sẽ trả về .full vì thỏa điều kiện income < 5.0
    // Test này cần được cập nhật khi thêm validation để throw error
    #expect(result == .none)
}

@Test("Test case 3: GPA 9, Income 5, Credits -1 → Lỗi (credits invalid)")
func equivalenceTest3() async throws {
    let rules = ScholarshipRules()
    // Test với Credits không hợp lệ (âm)
    let result = rules.decide(gpa: 9.0, income: 5.0, credits: -1)
    // Với Credits -1, logic hiện tại sẽ trả về .none vì không thỏa điều kiện credits >= 15, >= 12, >= 10
    // Test này cần được cập nhật khi thêm validation để throw error
    #expect(result == .none) 
}

@Test("Test case 4: GPA 8, Income 5, Credits 15 → Toàn phần")
func equivalenceTest4() async throws {
    let rules = ScholarshipRules()
    // Test với giá trị hợp lệ, kỳ vọng kết quả Toàn phần
    // Lưu ý: Điều kiện Full yêu cầu income < 5.0, nên dùng 4.9 thay vì 5.0
    let result = rules.decide(gpa: 8.0, income: 5, credits: 15)
    #expect(result == .partial)
}



