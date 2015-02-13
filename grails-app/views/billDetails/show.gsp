<%@ page import="com.shri.spectranet.BillDetails" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FTTH Bill</title>

<asset:stylesheet src="stylenew_spectranet.css"/>

</head>

<body>

<div class="main">

<div class="header">
<div class="header_logo1"><asset:image src="spectranet.jpg" width="286" height="63"/></div>
<div class="header_logo2"><asset:image src="fox.jpg"/></div>
</div>

<div class="content">
<div class="name">
<div class="name_detail1">
<div class="name_detail1_1 style1">SHRIKANT VASHISHTHA</div>
  <div class="name_detail1_1">A 503, G C Centrum </div>
  <div class="name_detail1_1">Ghaziabad</div>
  <div class="name_detail1_1">Mobile 9350162648</div></div>
<div class="name_detail2">
<div class="name_detail2_1 style1">Customer Account Number (CAN)</div>
 <div class="name_detail2_1">Bill No</div>
  <div class="name_detail2_1">Bill Period</div>
  <div class="name_detail2_1">Bill Date</div>
  <div class="name_detail2_1">Due Date</div>
  <div class="name_detail2_1">Plan</div></div>
<div class="name_detail3">
<div class="name_detail3_1 style1">0024-0993-FTTH-009175</div>
  <div class="name_detail3_1"> ${billDetailsInstance.billNo} </div>
  <div class="name_detail3_1"><g:formatDate format="d, MMM yyyy" date="${billDetailsInstance.billPeriodFrom}"/> to <g:formatDate format="d, MMM yyyy" date="${billDetailsInstance.billPeriodTo}"/></div>
  <div class="name_detail3_1"><g:formatDate format="d, MMM yyyy" date="${billDetailsInstance.billDate}"/></div>
  	<div class="name_detail3_1"><g:formatDate format="d, MMM yyyy" date="${billDetailsInstance.dueDate}"/></div>
  <div class="name_detail3_1">  Plan24GBHF (24GB+32GB) 
  <br>
  </div></div>
</div>

<div class="account">
<div class="account_1"><span class="font_si">Account Summary</span></div>
  <div class="account_2"><table border="1" bordercolor="#bcbec0" cellpadding="0" cellspacing="0" width="100%">
  
<tbody><tr align="center">
      <td class="style1" scope="col" bgcolor="#e6e7e8" width="16%" height="32">Previous Balance</td>
      <td class="style1" scope="col" bgcolor="#e6e7e8" width="16%">Last Payment</td>
      <td class="style1" scope="col" bgcolor="#e6e7e8" width="16%">Adjustment</td>
      <td class="style1" scope="col" bgcolor="#e6e7e8" width="16%">Current Bill Charges</td>
      <td scope="col" bgcolor="#e6e7e8" width="16%"><span class="style1 color_ch1">Amount Payable</span></td>
      <td scope="col" bgcolor="#e6e7e8" width="16%"><span class="style1 color_ch1">Due Date</span></td>
    </tr>
    <tr align="center">
      <td height="34"><span class="style3">R</span> 00.00</td>
      <td><span class="style3">R</span> 00.00 </td>
      <td><span class="style3">R</span> 0.00</td>
      <td><span class="style3">R</span>  2,462.88</td>
      <td class="style1"><span class="style3">R</span>  2,462.88</td>
      <td class="style1"><g:formatDate format="d, MMM yyyy" date="${billDetailsInstance.dueDate}"/></td>
    </tr>
  </tbody></table></div>
</div>

<div class="bill_summary">
<div class="account_1"><span class="font_si">Bill Summary</span></div>
<div class="bill_summary_2">
<div class="bill_summary_21">
<div class="bill_summary_21_1">
<div class="bill_summary_21_1_heading color_ch1 style1">Description</div>
<div class="bill_summary_21_1_heading"><div class="bill_summary_21_1_box">1.</div>
<div class="bill_summary_21_1_box2">Installation charges</div></div>

<div class="bill_summary_21_1_heading"><div class="bill_summary_21_1_box">2.</div>
<div class="bill_summary_21_1_box2">Monthly charges</div></div>

<div class="bill_summary_21_1_heading"><div class="bill_summary_21_1_box">3.</div>
<div class="bill_summary_21_1_box2">Top Up</div></div>

<div class="bill_summary_21_1_heading"><div class="bill_summary_21_1_box">4.</div>
<div class="bill_summary_21_1_box2">VAS/Others</div></div>

<div class="bill_summary_21_1_heading"><div class="bill_summary_21_1_box">5.</div>
<div class="bill_summary_21_1_box2">Discounts</div></div>

<div class="bill_summary_21_1_heading"><div class="bill_summary_21_1_box">6.</div>
<div class="bill_summary_21_1_box2">Last bill period late fee</div></div>

<div class="bill_summary_21_1_heading"><div class="bill_summary_21_1_box">7.</div>
<div class="bill_summary_21_1_box2">Taxes</div></div>

<div class="bill_summary_21_1_heading style1">Current Bill Charges</div>
</div>
<div class="bill_summary_21_2">
<div class="bill_summary_21_2_heading color_ch1 style1">Amount <span class="style3">R</span></div>
<div class="bill_summary_21_2_heading">
00.00
</div>
<div class="bill_summary_21_2_heading">
				2,199.00</div>
<div class="bill_summary_21_2_heading">
		00.00
</div>
<div class="bill_summary_21_2_heading">
00.00


</div>
<div class="bill_summary_21_2_heading">00.00</div>
<div class="bill_summary_21_2_heading">
00.00
</div>
<div class="bill_summary_21_2_heading">263.88</div>
<div class="bill_summary_21_2_heading style1"> 2,462.88</div>
</div>
<div class="bill_summary_21_nearest"><span class="style1">Nearest Dealer</span><br>
  </div>
</div>
<asset:image src="discover_more.jpg" width="425" height="351"/></div>
</div>

<div class="pay">
<div class="pay_1"><span class="font_si">To Pay or Schedule a Collection</span><span class="font_si2"> (collection request will be charged an additional </span><span class="style3">R</span><span class="font_si2"> 25 per visit)</span></div>
<div class="pay_1">
<div class="pay_box2">Online (Credit &amp; Debit Cards only)</div>
<div class="pay_box21">www.spectranet.in</div>
</div>

<div class="pay_1">
<div class="pay_box2">In person (Cash, Credit or Debit Cards only)</div>
<div class="pay_box21">At nearest dealer, details as above</div>
</div>

<div class="pay_1">
<div class="pay_box2">Customer Service (to schedule a collection)</div>
<div class="pay_box21">1800 121 5678</div>
</div>
<div class="pay_1">
 <br>
 <br>

 Service Tax Registration No. AADCC3694EST001<br>
    Corporate Office : Citycom Networks Pvt. Ltd., 21-22, Third Floor, Sector 19, Udyog Vihar, Phase – IV, Gurgaon – 122015

    <p><em>This is a computer generated bill, paper bill will be charged at <span class="style3">R </span>50 per request</em></p>
</div>
</div>
</div>
</div>
<div style="clear: both"></div>
<p class="breakhere"></p><div style="clear: both"></div>
<div class="main">
<div class="header">
<div class="header_logo1"><asset:image src="spectranet.jpg" width="286" height="63"/></div>
<div class="header_logo2"><asset:image src="fox.jpg"/></div>
</div>

<div class="content">
  <div class="account">
<div class="account_1 style1"><br>
 <span class="font_si"> Last Payment</span></div>
  <div class="account_2"><table border="0" bordercolor="#bcbec0" cellpadding="0" cellspacing="0" width="52%">
  
<tbody><tr align="center">
      <td class="style1" scope="col" bgcolor="#e6e7e8" width="18%" height="32">Payment</td>
      <td class="style1" scope="col" bgcolor="#e6e7e8" width="18%">Date</td>
      <td class="style1" scope="col" bgcolor="#e6e7e8" width="18%">Amount <span class="style3">R</span></td>
     
    </tr>
         <tr align="center">
      <td height="34">Invoice Payment</td>
      <td>16, Aug 2013</td>
      <td>1,235.00</td>
    </tr>
          <tr align="center">
      <td height="34">One time Charges</td>
      <td>7, Jul 2013</td>
      <td>1,235.00</td>
    </tr>
        </tbody></table></div>
</div>

<div class="account">
<div class="account_1 style1"><br>
<span class="font_si">Description of Current Charges</span></div>
  <div class="account_2"><table border="0" bordercolor="#bcbec0" cellpadding="5" cellspacing="0" width="100%">
  
<tbody><tr align="center">
      <td scope="col" align="left" bgcolor="#e6e7e8" width="182" height="30"><span class="style1">Bill Generated on 9, Jan 2014<br> 
        </span><span class="style4">(for period 9, Nov 2013 to 8, Dec 2013)</span></td>
      <td class="style1" scope="col" bgcolor="#e6e7e8" width="76">Amount <span class="style3">R</span></td>
      <td class="style1" scope="col" bgcolor="#e6e7e8" width="78"> Taxes <span class="style3">R</span></td>
      <td class="style1" scope="col" bgcolor="#e6e7e8" width="78">Current Bill Charges <span class="style3">R</span></td>
      <td class="style1" scope="col" bgcolor="#e6e7e8" width="78">Opening Balance <span class="style3">R</span></td>
      <td class="style1" scope="col" bgcolor="#e6e7e8" width="78">Net Amount Payable <span class="style3">R</span></td>
 <td class="style1" scope="col" bgcolor="#e6e7e8" width="112">Due Date</td>
    </tr>
    
        <tr align="center">
      <td align="left" height="25">1
      .
            Recurring Charge</td>
            <td>1,099.00</td>
      <td>135.84</td>
      <td>-</td>
      <td>-</td>
      <td>-</td>
 <td>-</td>
    </tr>
    <tr align="center">
      <td align="left" height="25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Less Discount</td>
      <td>00.00</td>
      <td>-</td>
      <td>-</td>
      <td>-</td>
      <td>-</td>
      <td>-</td>
    </tr>

    <tr align="center">
      <td align="left" height="25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gross Bill Value</td>
      <td>
      1,099.00
      
      </td>
      <td>135.84</td>
      <td> 2,462.88</td>
      <td>-00.33</td>
      <td> 2,462.88</td>
      <td>16, Jan 2013</td>
    </tr>
  </tbody></table>
  </div>
  </div>

<div class="pay">
<div class="pay_1"><span class="font_si">Taxes</span></div>
<div class="pay_1">
<div class="pay_box2 style1">Description</div>
<div class="pay_box211 style1">Amount <span class="style3">R</span></div>
</div>
<div class="pay_1">
<div class="pay_box2">Service Tax @ 12%</div>
<div class="pay_box211">131.88*</div>
</div>
<div class="pay_1">
<div class="pay_box2">Education Cess @ 2% (On Service Tax)</div>
<div class="pay_box211">02.64</div>
</div>
<div class="pay_1">
<div class="pay_box2">Secondary and Higher Education Cess @ 1% (On Service Tax)</div>
<div class="pay_box211">01.32</div>
</div>

<div class="pay_1">
<div class="pay_box2 style1">Total</div>
<div class="pay_box211 style1">135.84</div>
</div>

<div class="pay_txt">
    <span class="font_si"><br>
    General Information</span> 
    <ol>
    <li><span style="font-size:9.0pt; ">Consumer Care and General Information Number (Toll Free) 1800 121 5678.</span></li>
    <li><span style="font-size:9.0pt; ">There are no additional charges or fees for changing  plans.</span></li>
    <li><span style="font-size:9.0pt; ">Plan can be changed only once per bill cycle.</span></li>
    <li><span style="font-size:9.0pt; ">No charges for any services are levied without  confirmation (in writing or online) by the Customer</span></li>
    <li><span style="font-size:9.0pt; ">In case of any disagreement or 
clarification regarding  the charges in this bill, kindly contact 
customer care within 30 days from the  bill date. After which it shall 
be construed that all charges mentioned in this  statement are in order 
and acceptable.</span></li>
    <li><span style="font-size:9.0pt; ">You are requested to make the payment before the due  date to ensure that late payment charge of <span class="style3"> R</span>100
 is not levied and you  experience an uninterrupted service. Late 
payment charge will not be levied if  the payment is made on or before 
the due date printed on the bill. </span></li>
    <li><span style="font-size:9.0pt; ">Your plan has defined data usage
 volume. If you wish  to use more, you can Top Up online (or through 
call center) by choosing from  multiple options. The self care portal is
 available at</span><a href="http://my.spectranet.com/"><span style="text-underline:none; color:windowtext; text-decoration:none; "> http://my.spectranet.com</span></a></li>
    <li><span style="font-size:9.0pt; ">Any of the plan charges shall 
not be changed for a  period of at least 6 months, from the date of 
activation of the same. This  excludes any charges related to 
value-added services, taxes and other  government levies, as applicable 
from time to time.</span></li>
    <li><span style="font-size:9.0pt; ">Citycom Networks Pvt. Ltd. 
reserves the right to  change the terms and conditions applicable to 
tariff plans, at anytime without  prior information or communication. 
Please visit the self care section on<a href="http://my.spectranet.com/"><span style="text-underline:none; color:windowtext; text-decoration:none; "> http://my.spectranet.com</span></a> for latest terms and conditions.</span></li>
    <li><span style="font-size:9.0pt; ">Customer is advised to refer to the Acceptable Use  Policy (AUP), available online on the self care portal.</span></li>
    <li><span style="font-size:9.0pt; ">For any assistance kindly email 
to care@spectranet.in, you may also contact our nodal officer for any 
service related  matter by email at nodal@spectranet.in in case you do 
not get a satisfactory  response you may highlight the matter to our 
appellate authority at appeal@spectranet.in</span></li>
    <li><span style="font-size:9.0pt; ">In case of any grievances kindly contact the grievance  cell at grievance@spectranet.in</span></li>
  </ol>
  </div>
</div>
</div>
</div>







  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="title" content="My Spectranet">
<meta name="robots" content="index, follow">
  <title>My Spectranet</title>




          <!-- Header Start-->
	  <!-- Header End -->


          <!-- Main Content -->
          
          <!-- Footer Start -->
	  <!-- Footer End -->


</body></html>