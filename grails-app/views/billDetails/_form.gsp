<%@ page import="com.shri.spectranet.BillDetails" %>



<div class="fieldcontain ${hasErrors(bean: billDetailsInstance, field: 'billPeriodFrom', 'error')} required">
	<label for="billPeriodFrom">
		<g:message code="billDetails.billPeriodFrom.label" default="Bill Period From" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="billPeriodFrom" precision="day"  value="${billDetailsInstance?.billPeriodFrom}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: billDetailsInstance, field: 'billNo', 'error')} required">
	<label for="billNo">
		<g:message code="billDetails.billNo.label" default="Bill No" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="billNo" required="" value="${billDetailsInstance?.billNo}"/>

</div>
