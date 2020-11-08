//Created By Vivek Raju
//7-11-2020
//main.swift


import Foundation

//Creating array of class AccountType
var customerDetails = [AccountType]()
var function = functions()

var savingBankAccountType = """
601,Vivek Raju,9879874321,Hoshiarpur Punjab India,10000.0,Saving
602,Simran Ran,9879812478,Chandigarh Punjab India,15000.0,Saving
603,Naveen,9856374321,TamilNadu India,12000.0,Saving
"""

var currentBankAccountType = """
604,Vivek Raju,9879874321,Hoshiarpur Punjab India,10000.0,Current
605,Simran Ran,9879812478,Chandigarh Punjab India,15000.0,Current
606,Naveen,9856374321,TamilNadu India,12000.0,Current
"""

var dematBankAccountType = """
607,Vivek Raju,9879874321,Hoshiarpur Punjab India,10000.0,Demat
608,Simran Ran,9879812478,Chandigarh Punjab India,15000.0,Demat
609,Naveen,9856374321,TamilNadu India,12000.0,Demat
"""

function.readingSavingAccount()
function.readingCurrentAccount()
function.readingDematAccount()

var userInterface = 0
repeat 
{
    print("\n")
    print("+-----------------------------------------+")
    print("\t\tWelcome To True Indian Bank")
    print("+-----------------------------------------+")
    print("\n")
    print("Choose From Options Below:")
    print("\n")
    print("0. Press 0 If You Want To Exit:")
    print("1. Create New Account For Client:")
    print("2. Use Existing Account:")
    print("3. Remove Existing Account:")
    print("\n")
    print("+-----------------------------------------+")
    print("\n")

    userInterface = Int(readLine()!)!

    switch (userInterface) 
    {
        case 1:
            print("\n")
            print("+-----------------------------------------+")   
            print("Create Bank Account In Any of The Type Below:")
            print("\n")
            print("1. Saving Account")
            print("2. Current Account")
            print("3. Demat Account")
            print("\n")
            print("+-----------------------------------------+")
            
            let bankAccType = Int(readLine()!)!
            switch (bankAccType)
            {
                case 1:
                function.newSavingBankAccount()

                case 2:
                function.newCurrentBankAccount()

                case 3:
                function.newDematBankAccount()

                default:
                break
            }
        case 2:
            print("\n")
            print("+-----------------------------------------+")   
            print("To Use Existing Account Choose From Options Below:")
            print("1. Display Account Details")
            print("2. Deposit Money")
            print("3. Draw Money")
            print("4. Transfer Money")
            print("5. Pay Utility Bills")
            print("\n")
            print("+-----------------------------------------+")    

            let operations = Int(readLine()!)!
            switch (operations)
            {
                case 1:
                let accDetails = function.fetchAccountDetails()
                if accDetails == -1
                {
                    print("Account Doesn't Exists")
                }

                case 2:
                let sendMoney = function.sendMoney()
                if sendMoney != -1.0
                {
                    print("Money Sent Succesfully")
                    print("Update Balance: ", sendMoney)
                }
                else 
                {
                    print("Account Doesn't Exists")    
                }

                case 3:
                let drawMoney = function.drawMoney()
                if drawMoney != -1.0
                {
                    print("Money Withdrawl Successfully")
                    print("Update Balance: ", drawMoney)                    
                }
                else
                {
                    print("Problem While WithDrawing Money")                    
                }

                case 4:
                let moneyTransfer = function.transferMoney()
                if moneyTransfer >= 0
                {
                    print("Insufficient Balance or Account Doesn't Exists")
                }
                else
                {
                    print("Money Transfer Successfully")
                }

                case 5:
                print("\n")
                print("+-----------------------------------------+")   
                print("Pay Utility Biils:")
                print("1. Electricity Bill")
                print("2. Gas Bill")
                print("3. Water Bill")
                print("4. Internet Bill")
                print("5. Telephone Bill")
                print("\n")
                print("+-----------------------------------------+") 
                
                let billOption = Int(readLine()!)!
                switch (billOption)
                {
                    case 1:
                        let electricity = function.utilityPayBills()
                        if electricity != -1.0
                        {
                            print("Electricity Bill Paid Successfully")
                            print("Updated Balance: \(electricity)")
                        }
                        else
                        {
                            print("Something Went Wrong")
                        }
                    
                    case 2:
                        let gas = function.utilityPayBills() 
                        if gas != -1.0
                        {
                            print("Gas Bill Paid Successfully")
                            print("Updated Balance: \(gas)")
                        }
                        else
                        {
                            print("Something Went Wrong")
                        }                        
                    
                    case 3:
                        let water = function.utilityPayBills()
                        if water != -1.0
                        {
                            print("Water Bill Paid Successfully")
                            print("Updated Balance: \(water)")
                        }
                        else
                        {
                            print("Something Went Wrong")
                        }                        
                    
                    case 4:
                        let internet = function.utilityPayBills()
                        if internet != -1.0
                        {
                            print("Internet Bill Paid Successfully")
                            print("Update Balance: \(internet)")
                        }
                        else
                        {
                            print("Something Went Wrong")
                        }                        
                    
                    case 5:
                        let telephone = function.utilityPayBills()
                        if telephone != -1.0
                        {
                            print("Telephone Bill Paid Succesfully")
                            print("Updated Balance: \(telephone)")
                        }
                        else
                        {
                            print("Something Went Wrong")
                        }
                    default: 
                    print("Enter a Valid Option")                                                
                }
                default:
                print("Enter a Valid Option")
            }
    case 3:
    function.removeAccount()            
    default:
    print("Thank You For Using Our Bank Service")        
}

} while userInterface != 0