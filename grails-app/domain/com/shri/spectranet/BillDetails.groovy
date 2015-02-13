package com.shri.spectranet

class BillDetails {
	Date billPeriodFrom
	Date billPeriodTo
	Date billDate
	Date dueDate
	String billNo
	

    static constraints = {
		billPeriodFrom()
		billNo()
		billPeriodTo nullable:true
		billDate nullable:true
		dueDate nullable:true
    }
}