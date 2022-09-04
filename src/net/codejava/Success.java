package net.codejava;

public class Success 
{

  int tid;
  String benificiary;
  double amount;
  String status;
  
public String getStatus()
{
	return status;
}
public void setStatus(String status) 
{
	this.status = status;
}
public void setTid(int tid) 
{
	this.tid = tid;
}
public void setBenificiary(String benificiary) 
{
	this.benificiary = benificiary;
}
public void setAmount(double amount)
{
	this.amount = amount;
}
public int getTid() 
{
	return tid;
}
public String getBenificiary() 
{
	return benificiary;
}
public double getAmount() 
{
	return amount;
}
}
