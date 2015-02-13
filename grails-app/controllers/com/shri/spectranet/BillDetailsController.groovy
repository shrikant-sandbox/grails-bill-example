package com.shri.spectranet



import static org.springframework.http.HttpStatus.*

import org.apache.commons.lang.time.DateUtils;

import grails.transaction.Transactional

@Transactional(readOnly = true)
class BillDetailsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond BillDetails.list(params), model:[billDetailsInstanceCount: BillDetails.count()]
    }

    def show(BillDetails billDetailsInstance) {
        respond billDetailsInstance
    }

    def create() {
        respond new BillDetails(params)
    }

    @Transactional
    def save(BillDetails billDetailsInstance) {
        if (billDetailsInstance == null) {
            notFound()
            return
        }

        if (billDetailsInstance.hasErrors()) {
            respond billDetailsInstance.errors, view:'create'
            return
        }
		
		Date billDetailsFrom = billDetailsInstance.billPeriodFrom
		def billPeriodTo = DateUtils.addMonths(billDetailsFrom, 1)
		billDetailsInstance.billPeriodTo = DateUtils.addDays(billPeriodTo, -1)
		billDetailsInstance.billDate = DateUtils.addDays(billDetailsInstance.billPeriodTo, 1)
		billDetailsInstance.dueDate = DateUtils.addDays(billDetailsInstance.billDate, 7)

        billDetailsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'billDetails.label', default: 'BillDetails'), billDetailsInstance.id])
                redirect billDetailsInstance
            }
            '*' { respond billDetailsInstance, [status: CREATED] }
        }
    }

    def edit(BillDetails billDetailsInstance) {
        respond billDetailsInstance
    }

    @Transactional
    def update(BillDetails billDetailsInstance) {
        if (billDetailsInstance == null) {
            notFound()
            return
        }

        if (billDetailsInstance.hasErrors()) {
            respond billDetailsInstance.errors, view:'edit'
            return
        }

        billDetailsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'BillDetails.label', default: 'BillDetails'), billDetailsInstance.id])
                redirect billDetailsInstance
            }
            '*'{ respond billDetailsInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(BillDetails billDetailsInstance) {

        if (billDetailsInstance == null) {
            notFound()
            return
        }

        billDetailsInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'BillDetails.label', default: 'BillDetails'), billDetailsInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'billDetails.label', default: 'BillDetails'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
