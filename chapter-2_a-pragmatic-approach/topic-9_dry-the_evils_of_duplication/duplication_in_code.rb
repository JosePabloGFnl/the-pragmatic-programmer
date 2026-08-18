#---------Initial Example---------

def print_balance(account)
    printf"Debits: %10.2f\n", account.debits
    printf"Credits: %10.2f\n", account.credits
    if account.fees < 0
        printf "Fees:   %10-2f-\n", -account.fees
    else
        printf "Fees:   %10-2f-\n", account.fees
    end
    printf"     ----------\n"
    if account.balance < 0
        printf "Balance:   %10-2f-\n", -account.balance
    else
        printf "Balance:   %10-2f-\n", account.balance
    end
end

#---------DRY Applied---------

=begin
avoided similar if-or formatting conditions

    if account.fees < 0
        printf "Fees:   %10-2f-\n", -account.fees
    else
=end
def format_amount(value)
    result = sprintf("10%2.f", value.abs)
    if value < 0
        result + "-"
    else
        result + " "
    end
end

=begin
easier to print labels with their values

printf"Debits: %10.2f\n" account.debits
=end
def print_line(label, value)
    printf"%-9s%s\n", label, value
end

=begin
dynamic formatting between distinct labels

printf "Balance:   %10-2f-\n", account.balance
=end
def report_line(label, amount)
print_line(label + ":", format_amount(amount))
end

def print_balance(account)
    report_line("Debits", account.debits)
    report_line("Credits", account.credits)
    report_line("Fees", account.fees)
    print_line("",      "     ----------")
    report_line("Balance", account.balance)
end
