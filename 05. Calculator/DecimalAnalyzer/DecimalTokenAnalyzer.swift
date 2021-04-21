struct DecimalTokenAnalyzer {
    func convertInfixToPostfix(tokenExpression: [DecimalToken]) -> [DecimalToken]? {
        var postfixExpression = [DecimalToken]()
        var temporaryOperatorStorage = Stack<DecimalOperator>()
        
        for token in tokenExpression {
            switch token {
            case let integerToken as IntegerOperand:
                postfixExpression.append(integerToken)
            case let realNumberToken as RealNumberOperand:
                postfixExpression.append(realNumberToken)
            case let operatorToken as DecimalOperator:
                if temporaryOperatorStorage.isEmpty {
                    temporaryOperatorStorage.push(element: operatorToken)
                } else {
                    while let previousStoredOperatorToken = temporaryOperatorStorage.peek(), previousStoredOperatorToken >= operatorToken {
                        guard let previousStoredOperatorToken = temporaryOperatorStorage.peek() else {
                            return nil
                        }
                        postfixExpression.append(previousStoredOperatorToken)
                    }
                    temporaryOperatorStorage.push(element: operatorToken)
                }
            default:
                return nil
            }
        }
        
        while let previousStoredOperatorToken = temporaryOperatorStorage.pop() {
            postfixExpression.append(previousStoredOperatorToken)
        }
        
        return postfixExpression
    }
}
