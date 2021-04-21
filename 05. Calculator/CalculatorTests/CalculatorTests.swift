import XCTest
@testable import Calculator

class CalculatorTests: XCTestCase {
    var decimalExpressionAnalyzer: DecimalExpressionAnalyzer!
    var decimalTokenAnalyzer: DecimalTokenAnalyzer!
    var decimalCalculator: DecimalCalculator!
    
    override func setUp() {
        super.setUp()
        decimalExpressionAnalyzer = DecimalExpressionAnalyzer()
        decimalTokenAnalyzer = DecimalTokenAnalyzer()
        decimalCalculator = DecimalCalculator()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testExample() throws {
        let decimalExpressions = [
            "1 + 2 + 3 + 4",
            "2 - 4 - 6 - 8",
            "3 * 4 * 5 * 6"
        ]
        
        let testExpressions = [
            1 + 2 + 3 + 4,
            2 - 4 - 6 - 8,
            3 * 4 * 5 * 6
        ]
        
        for index in 0..<decimalExpressions.count {
            let decimalTokenExpression = decimalExpressionAnalyzer.convertExpressionToToken(expression: decimalExpressions[index])
            XCTAssertNotNil(decimalTokenExpression)
            print(decimalTokenExpression!)
            let decimalPostfixExpression = decimalTokenAnalyzer.convertInfixToPostfix(tokenExpression: decimalTokenExpression!)
            XCTAssertNotNil(decimalPostfixExpression)
            
//            let decimalCalculationResult = decimalCalculator.calculate(postfixTokenExpression: decimalPostfixExpression!)
//            XCTAssertNotNil(decimalCalculationResult)
//            XCTAssertEqual(testExpressions[index], (decimalCalculationResult as! IntegerOperand).value)
        }
        
    }
    
//        let decimalPostfixExpression = decimalTokenAnalyzer.convertInfixToPostfix(tokenExpression: decimalTokens)
//        guard let decimalPostfixTokens = decimalPostfixExpression else { return }
//        let decimalCalculationResult = decimalCalculator.calculate(postfixTokenExpression: decimalPostfixTokens)
//        if let result = decimalCalculationResult as? IntegerOperand {
//            print("result: \(result.value)")
//        } else if let result = decimalCalculationResult as? RealNumberOperand {
//            print("result: \(result.value)")
//        }
//
//        let binaryExpression = "1010 + 101 - 111"
//        let binaryTokenExpression = binaryExpressionAnalyzer.convertExpressionToToken(expression: binaryExpression)
//        guard let binaryTokens = binaryTokenExpression else { return }
//        let binaryPostfixExpression = binaryTokenAnalyzer.convertInfixToPostfix(tokenExpression: binaryTokens)
//        guard let binaryPostfixTokens = binaryPostfixExpression else { return }
//        let binaryCalculationResult = binaryCalculator.calculate(postfixTokenExpression: binaryPostfixTokens)
//        if let result = binaryCalculationResult as? BinaryOperand {
//            print("result: \(result.value)")
//        }
//    }

}
