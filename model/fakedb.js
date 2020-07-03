const user = {      
    firstName: "John",
    lastName: "Doe",
    id: "123456789",
    email: "jd@gmail.com",
    phone: "416-224-6231",
    address: "123 Cherry Street",
    Address2: "Toronto, ON",
    payment: 
        {
            method: "Visa",
            cardHolderName: "John Doe",
            cardNo: 3456,
        },
    receipts: [
        {
            receiptID: "123456",
            orderNo: "6942",
            date: "07-01-2020",
            subtotal: "4100.00",
            total: "4633.00",
            business: {
            businessName: "Seneca",
            businessNo: "905-421-4423",
            address1: "1750 Finch Ave E",
            address2: "North York, ON",
            businessEmail: "info@senecacollege.ca",
            },
            products: [
            {
            name: "Dell Inspiron 3000",
            unitPrice: "750.00",
            quantity: "4"
            },{
            name: "Monitor",
            unitPrice: "200.00",
            quantity: "2"
            },{
            name: "Website",
            unitPrice: "700",
            quantity: "1"
            }]
        },
            {
            receiptID: "234567",
            orderNo: "9423",
            date: "07-01-2020",
            subtotal: "2050.00",
            total: "2316.50",
            business: {
            businessName: "Spring Spa",
            businessNo: "646-231-5663",
            address1: "760 Fake Street",
            address2: "Markham, ON",
            businessEmail: "info@springspa@.ca",
            },
            products: [
            {
            name: "Massage Table",
            unitPrice: "500.00",
            quantity: "3"
            },{
            name: "Massage Oil",
            unitPrice: "20.00",
            quantity: "15"
            },{
            name: "Cleaning Supplies",
            unitPrice: "50.00",
            quantity: "5"
            }]
        },
            {
            receiptID: "345678",
            orderNo: "2376",
            date: "06-27-2020",
            subtotal: "2700.00",
            total: "3051.00",
            business: {
            businessName: "Daru Co.",
            businessNo: "647-129-4432",
            address1: "670 Real Street",
            address2: "Etobicoke, ON",
            businessEmail: "info@daru.ca",
            },
            products: [
            {
            name: "Receipt app",
            unitPrice: "2700.00",
            quantity: "1"
            }]
        },
            {
            receiptID: "456789",
            orderNo: "9201",
            date: "06-27-2020",
            subtotal: "6500.00",
            total: "7345.00",
            business: {
            businessName: "CPOS",
            businessNo: "416-223-4421",
            address1: "570 CPO Road",
            address2: "Toronto, ON",
            businessEmail: "info@CPOS.ca",
            },
            products: [
            {
            name: "Debt Machine",
            unitPrice: "2000.00",
            quantity: "3"
            },{
            name: "CPOS Account",
            unitPrice: "500",
            quantity: "1"
            }]
        },
            {
            receiptID: "567890",
            orderNo: "5021",
            date: "06-14-2020",
            subtotal: "7540.00",
            total: "8520.20",
            business: {
            businessName: "Google",
            businessNo: "905-113-5523",
            address1: "763 Google Road",
            address2: "Toronto, ON",
            businessEmail: "service@gmail.com",
            },
            products: [
            {
            name: "Cloud Service",
            unitPrice: "2540.00",
            quantity: "1"
            },{
            name: "Google Networking Solutions",
            unitPrice: "5000.00",
            quantity: "1"
            }]
        }
    ]
}

module.exports = user;