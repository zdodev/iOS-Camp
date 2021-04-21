class BinaryOperand: BinaryToken {
    let value: Int

    init(value: Int) {
        self.value = value
        super.init(priority: .lowest)
    }
}
