package net.codejava;

public class Customer 
{
  long Mno;
  int Tp;
  long IMEI;
  String BankName;
  long AccNo;
  String Branch;
  double Amount;
  long AadharNo;
  long Upi;
  String IFSC;
  String AccHolName;
  String VPA;
  long dbcardno;
  int cvv;
  int flag=0;
  
  
  
public int getFlag() {
	return flag;
}
public void setFlag(int flag) {
	this.flag = flag;
}
public void setDbcardno(long dbcardno) {
	this.dbcardno = dbcardno;
}
public void setCvv(int cvv) {
	this.cvv = cvv;
}
public long getDbcardno() {
	return dbcardno;
}
public int getCvv() {
	return cvv;
}
public String getVPA() {
	return VPA;
}
public void setVPA(String vPA) {
	VPA = vPA;
}
public long getMno() 
{
	return Mno;
}
public int getTp() 
{
	return Tp;
}
public long getIMEI() 
{
	return IMEI;
}
public String getBankName() 
{
	return BankName;
}
public long getAccNo()
{
	return AccNo;
}
public String getBranch() 
{
	return Branch;
}
public double getAmount()
{
	return Amount;
}
public long getAadharNo() 
{
	return AadharNo;
}
public long getUpi()
{
	return Upi;
}
public String getIFSC() 
{
	return IFSC;
}
public String getAccHolName() 
{
	return AccHolName;
}
public void setMno(long mno) 
{
	Mno = mno;
}
public void setTp(int tp) 
{
	Tp = tp;
}
public void setIMEI(long iMEI) 
{
	IMEI = iMEI;
}
public void setBankName(String bankName)
{
	BankName = bankName;
}
public void setAccNo(long accNo) 
{
	AccNo = accNo;
}
public void setBranch(String branch) 
{
	Branch = branch;
}
public void setAmount(double amount) 
{
	Amount = amount;
}
public void setAadharNo(long aadharNo) 
{
	AadharNo = aadharNo;
}
public void setUpi(long upi) 
{
	Upi = upi;
}
public void setIFSC(String iFSC) 
{
	IFSC = iFSC;
}
public void setAccHolName(String accHolName) 
{
	AccHolName = accHolName;
}
  
  
}
