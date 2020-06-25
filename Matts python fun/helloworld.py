class Invoice():
        def __init__(self, invnum, items):
                self.invnum = invnum
                self.items = items
                invnum = 503020350
                items = "socks, shirt"

        def print_name(self):
                print("The invoice number is %s" % (self.invnum))
                print("This University is ranked at %s" % (self.items))

print_name
