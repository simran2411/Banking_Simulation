//Created By Simran Rana
//Tasks.swift

import Foundation

class AccountType
{
    var accNumber:Int
    var customerName:String
    var customerPhone:String
    var customerAddress:String
    var customerInitialBal:Double
    
    //Initializer to initialize values for class AccountType
    init(accNumber:Int, customerName:String, customerPhone:String, customerAddress:String, customerInitialBal:Double)
    {
        self.accNumber = accNumber
        self.customerName = customerName
        self.customerPhone = customerPhone
        self.customerAddress = customerAddress
        self.customerInitialBal = customerInitialBal
    }
}


//Class for Creating accounts with type saving
class Saving:AccountType
{
    var accType:String = ""
    init(accNumber:Int, customerName:String, customerPhone:String, customerAddress:String, customerInitialBal:Double, accType:String)
    {
        super.init(accNumber:accNumber, customerName:customerName, customerPhone: customerPhone, customerAddress: customerAddress, customerInitialBal:customerInitialBal)
        self.accType = accType
    }
}


//Class for Creating accounts with type current
class Current:AccountType
{
    var accType:String = ""
    init(accNumber:Int, customerName:String, customerPhone:String, customerAddress:String, customerInitialBal:Double, accType:String)
    {
        super.init(accNumber:accNumber, customerName:customerName, customerPhone: customerPhone, customerAddress: customerAddress, customerInitialBal:customerInitialBal)
        self.accType = accType
    }
}

//Class for Creating accounts with type saving
class Demat:AccountType
{
    var accType:String = ""
    init(accNumber:Int, customerName:String, customerPhone:String, customerAddress:String, customerInitialBal:Double, accType:String)
    {
        super.init(accNumber:accNumber, customerName:customerName, customerPhone: customerPhone, customerAddress: customerAddress, customerInitialBal:customerInitialBal)
        self.accType = accType
    }
}


//Class for performing various functions
class functions
{
    func readingSavingAccount() -> Void
    {
        let lineSeperator = savingBankAccountType.components(separatedBy: "\n")
        for line in lineSeperator
        {
            let text = line.components(separatedBy: ",")
            let readsavAccount = Saving(accNumber:Int(text[0])!, customerName:text[1], customerPhone:text[2], customerAddress:text[3], customerInitialBal:Double(text[4])!, accType:text[5])
            customerDetails.append(readsavAccount)
        }
    }

    func readingCurrentAccount() -> Void
    {
        let lineSeperator = currentBankAccountType.components(separatedBy: "\n")
        for line in lineSeperator
        {
            let text = line.components(separatedBy: ",")
            let readsavAccount = Current(accNumber:Int(text[0])!, customerName:text[1], customerPhone:text[2], customerAddress:text[3], customerInitialBal:Double(text[4])!, accType:text[5])
            customerDetails.append(readsavAccount)
        }
    }    

    func readingDematAccount() -> Void
    {
        let lineSeperator = dematBankAccountType.components(separatedBy: "\n")
        for line in lineSeperator
        {
            let text = line.components(separatedBy: ",")
            let readdemAccount = Demat(accNumber:Int(text[0])!, customerName:text[1], customerPhone:text[2], customerAddress:text[3], customerInitialBal:Double(text[4])!, accType:text[5])
            customerDetails.append(readdemAccount)
        }
    }    


func randomAccountGenerator() -> Int
{
    let randomInt = Int.random(in: 610..<999)
    return randomInt
}

func returnAccTypeSaving() -> String
{
    let accountTypeSaving = "Saving"
    return accountTypeSaving
}

func returnAccTypeCurrent() -> String
{
    let accountTypeCurrent = "Current"
    return accountTypeCurrent
}

func returnAccTypeDemat() -> String
{
    let accountTypeDemat = "Demat"
    return accountTypeDemat
}

func newSavingBankAccount()
{
    print("\n")
    print("+-------------------------------------+")
    print("\n")
    let accNo = randomAccountGenerator()
    print("Client Bank Account No: \(accNo)")
    print("Enter Client Name:")
    let clientName = readLine()!
    print("Enter Client Phone No:")
    let clientPhone = readLine()!
    print("Enter Client Address:")
    let clientAddress = readLine()!
    print("Enter Initial Amount:")
    let clientIniAmnt = Double(readLine()!)!
    let accntType = returnAccTypeSaving()
    print("Account Type: \(accntType)")

    let savingaccount = Saving(accNumber:accNo, customerName:clientName, customerPhone: clientPhone, customerAddress: clientAddress, customerInitialBal:clientIniAmnt, accType:accntType)
    customerDetails.append(savingaccount)

    print("\n")
    print("Account Created Successfully")
    print("\n")
    print("NOTE: Please Save These Details For Future Use")
    print("+-------------------------------------+")    
}


func newCurrentBankAccount()
{
    print("\n")
    print("+-------------------------------------+")
    let accNo = randomAccountGenerator()
    print("Client Bank Account No: \(accNo)")
    print("Enter Client Name:")
    let clientName = readLine()!
    print("Enter Client Phone No:")
    let clientPhone = readLine()!
    print("Enter Client Address:")
    let clientAddress = readLine()!
    print("Enter Initial Amount:")
    let clientIniAmnt = Double(readLine()!)!
    let accntType = returnAccTypeCurrent()
    print("Account Type: \(accntType)")

    let currentaccount = Current(accNumber:accNo, customerName:clientName, customerPhone: clientPhone, customerAddress: clientAddress, customerInitialBal:clientIniAmnt, accType:accntType)
    customerDetails.append(currentaccount)
    
    print("\n")
    print("Account Created Successfully")
    print("\n")
    print("NOTE: Please Save These Details For Future Use")    
    print("+-------------------------------------+")
}


func newDematBankAccount()
{
    print("\n")
    print("+-------------------------------------+")
    let accNo = randomAccountGenerator()
    print("Client Bank Account No: \(accNo)")
    print("Enter Client Name:")
    let clientName = readLine()!
    print("Enter Client Phone No:")
    let clientPhone = readLine()!
    print("Enter Client Address:")
    let clientAddress = readLine()!
    print("Enter Initial Amount:")
    let clientIniAmnt = Double(readLine()!)!
    let accntType = returnAccTypeDemat()
    print("Account Type: \(accntType)")

    let demataccount = Demat(accNumber:accNo, customerName:clientName, customerPhone: clientPhone, customerAddress: clientAddress, customerInitialBal:clientIniAmnt, accType:accntType)
    customerDetails.append(demataccount)
    
    print("\n")
    print("Account Created Successfully")
    print("\n")
    print("NOTE: Please Save These Details For Future Use")    
    print("+-------------------------------------+")
}


func fetchAccountDetails() -> Int
{
    print("Enter Account Number:")
    let fetchAccNo = Int(readLine()!)!

    for fetcher in customerDetails
    {
        if let savingAcc = fetcher as? Saving
        {
            if savingAcc.accNumber == fetchAccNo
            {
                print("Account No: \(savingAcc.accNumber) \nCustomer Name: \(savingAcc.customerName) \nCustomer Phone No: \(savingAcc.customerPhone) \nCustomer Address: \(savingAcc.customerAddress) \nCurrent Balance: \(savingAcc.customerInitialBal) \nAccount Type: \(savingAcc.accType)")
            }
        }
        
        if let currentAcc = fetcher as? Current
        {
            if currentAcc.accNumber == fetchAccNo
            {
                print("Account No: \(currentAcc.accNumber) \nCustomer Name: \(currentAcc.customerName) \nCustomer Phone No: \(currentAcc.customerPhone) \nCustomer Address: \(currentAcc.customerAddress) \nCurrent Balance: \(currentAcc.customerInitialBal) \nAccount Type: \(currentAcc.accType)")                
            }
        }

        if let dematAcc = fetcher as? Demat
        {
            if dematAcc.accNumber == fetchAccNo
            {
                print("Account No: \(dematAcc.accNumber),\nCustomer Name: \(dematAcc.customerName) \nCustomer Phone No: \(dematAcc.customerPhone) \nCustomer Address: \(dematAcc.customerAddress) \nCurrent Balance: \(dematAcc.customerInitialBal) \nAccount Type: \(dematAcc.accType)")                
            }
        }        
    }
    return -1
}


func sendMoney() -> Double
{
    print("Enter Account Number:")
    let getAccNo = Int(readLine()!)!
    print("Enter Deposit Amount:")
    let sdMoney = Double(readLine()!)!

    for fetcher in customerDetails
    {
        if let savingAcc = fetcher as? Saving
        {
            if savingAcc.accNumber == getAccNo
            {
                let newAmnt = savingAcc.customerInitialBal + sdMoney
                savingAcc.customerInitialBal = newAmnt
                return newAmnt
            }
        }

        else if let currentAcc = fetcher as? Current
        {
            if currentAcc.accNumber == getAccNo
            {
                let newAmnt = currentAcc.customerInitialBal + sdMoney
                currentAcc.customerInitialBal = newAmnt
                return newAmnt
            }
        }

        else if let dematAcc = fetcher as? Demat
        {
            if dematAcc.accNumber == getAccNo
            {
                let newAmnt = dematAcc.customerInitialBal + sdMoney
                dematAcc.customerInitialBal = newAmnt
                return newAmnt
            }
        }
    }
    return -1.0
}


func drawMoney() -> Double
{
    print("Enter Account Number:")
    let getAccNo = Int(readLine()!)!
    print("Enter WithDraw Amount:")
    let wdMoney = Double(readLine()!)!

    for fetcher in customerDetails
    {
        if let savingAcc = fetcher as? Saving
        {
            if savingAcc.accNumber == getAccNo
            {
                let newAmnt = savingAcc.customerInitialBal - wdMoney
                savingAcc.customerInitialBal = newAmnt
                return newAmnt
            }
        }

        else if let currentAcc = fetcher as? Current
        {
            if currentAcc.accNumber == getAccNo
            {
                let newAmnt = currentAcc.customerInitialBal - wdMoney
                currentAcc.customerInitialBal = newAmnt
                return newAmnt
            }
        }

        else if let dematAcc = fetcher as? Demat
        {
            if dematAcc.accNumber == getAccNo
            {
                let newAmnt = dematAcc.customerInitialBal - wdMoney
                dematAcc.customerInitialBal = newAmnt
                return newAmnt
            }
        }
    }
    return -1.0    
}


func transferMoney() -> Double
{
    print("Enter Sender's Account Number:")
    let getAccNo = Int(readLine()!)!
    print("Enter Receiver's Account Number:")
    let recAccNo = Int(readLine()!)!
    print("Enter Transfer Amount:")
    let trsMoney = Double(readLine()!)!

    for fetcher in customerDetails
    {
        if let savingAcc = fetcher as? Saving
        {
            if savingAcc.accNumber == getAccNo && savingAcc.customerInitialBal >= trsMoney
            {
                savingAcc.customerInitialBal -= trsMoney
                break
            }

            else if savingAcc.accNumber == recAccNo
            {
                savingAcc.customerInitialBal += trsMoney
                return savingAcc.customerInitialBal
            }
        }

        for fetcher2 in customerDetails
        {
            if let currentAcc = fetcher2 as? Current
            {
                if currentAcc.accNumber == getAccNo && currentAcc.customerInitialBal >= trsMoney
                {
                    currentAcc.customerInitialBal -= trsMoney
                    break
                }

                else if currentAcc.accNumber == recAccNo
                {
                    currentAcc.customerInitialBal += trsMoney
                    return currentAcc.customerInitialBal
                }
            }            
        }

        for fetcher3 in customerDetails
        {
            if let dematAcc = fetcher3 as? Demat
            {
                if dematAcc.accNumber == getAccNo && dematAcc.customerInitialBal >= trsMoney
                {
                    dematAcc.customerInitialBal -= trsMoney
                    break
                }

                else if dematAcc.accNumber == recAccNo
                {
                    dematAcc.customerInitialBal += trsMoney
                    return dematAcc.customerInitialBal
                }
            }              
        }
    }
    return -1.0
}


func utilityPayBills() -> Double
{
    print("Enter The Invoice No:")
    let _ = readLine()!
    print("Enter Account No:")
    let getAccNo = Int(readLine()!)!
    print("Enter Invoice Bill Amount:")
    let invcAmnt = Double(readLine()!)!

    for fetcher in customerDetails
    {
        if let savingAcc = fetcher as? Saving
        {
            if savingAcc.accNumber == getAccNo && savingAcc.customerInitialBal >= invcAmnt
            {
                savingAcc.customerInitialBal -= invcAmnt
                return savingAcc.customerInitialBal
            }
        }

        if let currentAcc = fetcher as? Current
        {
            if currentAcc.accNumber == getAccNo && currentAcc.customerInitialBal >= invcAmnt
            {
                currentAcc.customerInitialBal -= invcAmnt
                return currentAcc.customerInitialBal
            }
        }    

        if let dematAcc = fetcher as? Demat
        {
            if dematAcc.accNumber == getAccNo && dematAcc.customerInitialBal >= invcAmnt
            {
                dematAcc.customerInitialBal -= invcAmnt
                return dematAcc.customerInitialBal
            }
        }  
     return -1.0   
    }    
    return -1.0
}

func removeAccount()
{
  print("\n")
  print("This Feature is Not Available Please Check in Future")
}

}