const user = {      
    firstName: "Saeed",
    lastName: "Salar",
    id: "123456789",
    email: "ss@gmail.com",
    phone: "1111111111",
    city: "Toronto",
    address: "123 Cherry Street",
    country: "Canada",
    balance: 12345,
    receipts: [
    {
        receiptID: "456123",
        date: "12/04/2019",
        business: 
        {
            businessName: "spagettio",
            businessNo: "9054224999",
            address: "11 fake street",
            businessEmail: "someone@gmail.com"
        },       
        payment: 
        {
            method: "Visa",
            cardHolderName: "Saeed Salar",
            cardNo: 1234567890123456,
            expirationDate: 02/24,
            ccv: "123"
        },
        products: [
            {
                name: "tomato",
                unitPrice: 1,
                quantity: 3
            },
            {
                name: "spagetti",
                unitPrice: 3,
                quantity: 4
            },
            {
                name: "Razi's secret sauce",
                unitPrice: 3.50,
                quantity: 1
            }
        ],        
    },
    {
        receiptID: "321654",
        date: "06/04/2020",
        business: 
        {
            businessName: "BalkaranArts",
            businessNo: "9053242123",
            address: "15 bird street",
            businessEmail: "artsb@gmail.com"
        },       
        payment: 
        {
            method: "Visa",
            cardHolderName: "Balkaran Bird",
            cardNo: 1834967691123456,
            expirationDate: 05/24,
            ccv: "321"
        },
        products: [
            {
                name: "Paint brush",
                unitPrice: 5,
                quantity: 25
            },
            {
                    name: "Blue paint",
                    unitPrice: 7,
                    quantity: 30
            },
            {
                name: "Sketch book",
                unitPrice: 6,
                quantity: 9
            }
        ],        
    },
    {
        receiptID: "789456",
        date: "01/05/2020",
        business: 
        {
            businessName: "Taffy",
            businessNo: "4566549875",
            address: "256 random street",
            businessEmail: "taffy@hotmail.com"
        },       
        payment: 
        {
            method: "Mastercard",
            cardHolderName: "Jan Little",
            cardNo: 7434967691128856,
            expirationDate: 09/25,
            ccv: "651"
        },
        products: [
            {
                name: "Spider-Man Issue 89",
                unitPrice: 25,
                quantity: 2
            },
            {
                name: "Batman Issue 7",
                unitPrice: 20,
                quantity: 6
            },
            {
                name: "Aquaman Issue 9",
                unitPrice: 14,
                quantity: 8
            }
        ]
    }]
}

module.exports = user;