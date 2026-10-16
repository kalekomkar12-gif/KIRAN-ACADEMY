def calculateElectronicsGST(a, b):
    return round((a + b) * 1.18, 2)


def calculateFashionGST(c, d):
    return round((c + d) * 1.13, 2)


def calculateFoodGST(e):
    return round(e * 1.07, 2)


def totalBill(a, b, c, d, e):
    electronics_amount = calculateElectronicsGST(a, b)
    fashion_amount = calculateFashionGST(c, d)
    food_amount = calculateFoodGST(e)
    return round(electronics_amount + fashion_amount + food_amount, 2)


def calculateDiscountedBill(a, b, c, d, e):
    bill_total = totalBill(a, b, c, d, e)
    discount = bill_total * 0.20
    return round(bill_total - discount, 2)


a = 100
b = 100
c = 100
d = 100
e = 100

total_after_gst = totalBill(a, b, c, d, e)
final_payable_amount = calculateDiscountedBill(a, b, c, d, e)

print(f"Total after GST: {total_after_gst:.2f}")
print(f"Final payable amount: {final_payable_amount:.2f}")
