package BKC;
import java.sql.*;
import databaseconnection.databasecon;
import java.util.*;
import java.io.*;
public class BestKeyword 
{  
	Connection con=null;
double lat1,lat2,lat3;
double lon1,lon2,lon3;
int rating1,rating2,rating3;
String c1,c2,c3;
public void RHItemSet() throws Exception{
con=databasecon.getconnection();
Statement st4=con.createStatement();
	st4.executeUpdate("delete from dataset ");
	st4.executeUpdate("delete from exp");
ArrayList r=new ArrayList();
ArrayList h=new ArrayList();;



Statement st=con.createStatement();Statement st1=con.createStatement();
ResultSet rs=st.executeQuery("select  rid from member where type='hotel'");
h.clear();
while(rs.next()){
h.add(rs.getString(1));
}


ResultSet rs1=st1.executeQuery("select  rid from member where type='restaurant'");
r.clear();
while(rs1.next()){
r.add(rs1.getString(1));
}
for(int i=0;i<r.size();i++)
	{
Statement st2=con.createStatement();
ResultSet rs2=st2.executeQuery("select  lat,lon,rating,city from member where rid='"+r.get(i).toString()+"' ");
if(rs2.next()){
lat1=Double.parseDouble(rs2.getString(1));
lon1=Double.parseDouble(rs2.getString(2));
rating1=rs2.getInt(3);
c1=rs2.getString(4);
}
for(int j=0;j<h.size();j++){
Statement st3=con.createStatement();
ResultSet rs3=st3.executeQuery("select  lat,lon,rating,city from member where rid='"+h.get(j).toString()+"' ");
if(rs3.next()){
lat2=Double.parseDouble(rs3.getString(1));
lon2=Double.parseDouble(rs3.getString(2));
rating2=rs3.getInt(3);
c2=rs3.getString(4);
}
double distance=distance(lat1,lon1, lat2, lon2);
System.out.println("dist="+distance);
if((rating1>=6 && rating2>=6)&& (distance<=5.0) &&(c1.equalsIgnoreCase(c2))){
	String set=r.get(i).toString()+","+h.get(j).toString();
st4.executeUpdate("insert into exp values('"+rating1+"','"+rating2+"','"+distance+"','"+set+"',	'"+c1+"')");
st4.executeUpdate("insert into dataset values('"+set+"','"+c1+"')");
}
}//end-second for loop
}//end-first for loop
}// end-method

/*-----RBItem-----*/
public void RBItemSet() throws Exception{


con=databasecon.getconnection();
Statement st4=con.createStatement();
ArrayList r=new ArrayList();
ArrayList b=new ArrayList();;
Statement st=con.createStatement();Statement st1=con.createStatement();
ResultSet rs=st.executeQuery("select  rid from member where type='restaurant'");
r.clear();
while(rs.next()){
r.add(rs.getString(1));
}

ResultSet rs1=st1.executeQuery("select  rid from member where type='bar'");
b.clear();
while(rs1.next()){
b.add(rs1.getString(1));
}
for(int i=0;i<r.size();i++)
	{
Statement st2=con.createStatement();
ResultSet rs2=st2.executeQuery("select  lat,lon,rating,city from member where rid='"+r.get(i).toString()+"' ");
if(rs2.next()){
lat1=Double.parseDouble(rs2.getString(1));
lon1=Double.parseDouble(rs2.getString(2));
rating1=rs2.getInt(3);
c1=rs2.getString(4);
}
for(int j=0;j<b.size();j++){
Statement st3=con.createStatement();
ResultSet rs3=st3.executeQuery("select  lat,lon,rating,city from member where rid='"+b.get(j).toString()+"' ");
if(rs3.next()){
lat2=Double.parseDouble(rs3.getString(1));
lon2=Double.parseDouble(rs3.getString(2));
rating2=rs3.getInt(3);
c2=rs3.getString(4);
}
double distance=distance(lat1,lon1, lat2, lon2);
System.out.println("dist1="+distance);
if((rating1>=6 && rating2>=6)&& (distance<=5.0)&&(c1.equalsIgnoreCase(c2))){
	String set=r.get(i).toString()+","+b.get(j).toString();
st4.executeUpdate("insert into exp values('"+rating1+"','"+rating2+"','"+distance+"','"+set+"',	'"+c1+"')");

st4.executeUpdate("insert into dataset values('"+set+"','"+c1+"')");

}
}//end-second for loop
}//end-first for loop
}// end-method
/*-----HBItem-----*/
public void HBItemSet() throws Exception{


con=databasecon.getconnection();
Statement st4=con.createStatement();
ArrayList h=new ArrayList();
ArrayList b=new ArrayList();;
Statement st=con.createStatement();Statement st1=con.createStatement();
ResultSet rs=st.executeQuery("select  rid from member where type='hotel'");
h.clear();
while(rs.next()){
h.add(rs.getString(1));
}

ResultSet rs1=st1.executeQuery("select  rid from member where type='bar'");
b.clear();
while(rs1.next()){
b.add(rs1.getString(1));
}
for(int i=0;i<h.size();i++)
	{
Statement st2=con.createStatement();
ResultSet rs2=st2.executeQuery("select  lat,lon,rating,city from member where rid='"+h.get(i).toString()+"' ");
if(rs2.next()){
lat1=Double.parseDouble(rs2.getString(1));
lon1=Double.parseDouble(rs2.getString(2));
rating1=rs2.getInt(3);
c1=rs2.getString(4);
}
for(int j=0;j<b.size();j++){
Statement st3=con.createStatement();
ResultSet rs3=st3.executeQuery("select  lat,lon,rating,city from member where rid='"+b.get(j).toString()+"' ");
if(rs3.next()){
lat2=Double.parseDouble(rs3.getString(1));
lon2=Double.parseDouble(rs3.getString(2));
rating2=rs3.getInt(3);
c2=rs2.getString(4);
}
double distance=distance(lat1,lon1, lat2, lon2);
System.out.println("dist2="+distance);
if((rating1>=6 && rating2>=6)&& (distance<=5.0)&&(c1.equalsIgnoreCase(c2))){
	String set=h.get(i).toString()+","+b.get(j).toString();
st4.executeUpdate("insert into exp values('"+rating1+"','"+rating2+"','"+distance+"','"+set+"',	'"+c1+"')");

st4.executeUpdate("insert into dataset values('"+set+"','"+c1+"')");
}
}//end-second for loop
}//end-first for loop
}// end-method

/*-----RHBItem-----*/
public void RHBItemSet() throws Exception{


con=databasecon.getconnection();
Statement st4=con.createStatement();Statement st5=con.createStatement();
ArrayList r=new ArrayList();
ArrayList h=new ArrayList();
ArrayList b=new ArrayList();
Statement st=con.createStatement();Statement st1=con.createStatement();
ResultSet rs=st.executeQuery("select  rid from member where type='hotel'");
h.clear();
while(rs.next()){
h.add(rs.getString(1));
}

ResultSet rs1=st1.executeQuery("select  rid from member where type='bar'");
b.clear();
while(rs1.next()){
b.add(rs1.getString(1));
}
ResultSet rs5=st5.executeQuery("select  rid from member where type='restaurant' ");
r.clear();
while(rs5.next()){
r.add(rs5.getString(1));
}
// for Loop Start
for(int i=0;i<h.size();i++)
	{
Statement st2=con.createStatement();
ResultSet rs2=st2.executeQuery("select  lat,lon,rating,city from member where rid='"+h.get(i).toString()+"' ");
if(rs2.next()){
lat1=Double.parseDouble(rs2.getString(1));
lon1=Double.parseDouble(rs2.getString(2));
rating1=rs2.getInt(3);
c1=rs2.getString(4);
}
for(int j=0;j<b.size();j++){
Statement st3=con.createStatement();
ResultSet rs3=st3.executeQuery("select  lat,lon,rating,city from member where rid='"+b.get(j).toString()+"' ");
if(rs3.next()){
lat2=Double.parseDouble(rs3.getString(1));
lon2=Double.parseDouble(rs3.getString(2));
rating2=rs3.getInt(3);
c2=rs2.getString(4);
}
double distance1=distance(lat1,lon1, lat2, lon2);
//System.out.println("dist2="+distance1);
for(int k=0;k<r.size();k++){
Statement st33=con.createStatement();
ResultSet rs33=st33.executeQuery("select  lat,lon,rating,city from member where rid='"+r.get(k).toString()+"' ");
if(rs33.next()){
lat3=Double.parseDouble(rs33.getString(1));
lon3=Double.parseDouble(rs33.getString(2));
rating3=rs33.getInt(3);
c3=rs2.getString(4);
}
double distance2=distance(lat2,lon2, lat3, lon3);
double distance3=distance(lat1,lon1, lat3, lon3);
if((rating1>=6 && rating2>=6 && rating3>=6)&& (distance1<=5.0&&distance2<=5.0&&distance3<=5.0)&&(c1.equalsIgnoreCase(c2) &&c1.equalsIgnoreCase(c3) &&c2.equalsIgnoreCase(c3))){
	String set=r.get(k).toString()+","+h.get(i).toString()+","+b.get(j).toString();

st4.executeUpdate("insert into exp2 values('"+rating1+"','"+rating2+"','"+rating3+"','"+distance1+"','"+set+"',	'"+c1+"')");

st4.executeUpdate("insert into dataset values('"+set+"','"+c1+"')");
}

}//end-third for loop
}//end-second for loop
}//end-first for loop
}// end-method



/* Distance*/
static double distance(double lat1, double lon1, double lat2, double lon2) {
	double theta = lon1 - lon2;
	double dist = Math.sin(deg2rad(lat1)) * Math.sin(deg2rad(lat2)) + Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * Math.cos(deg2rad(theta));
		dist = Math.acos(dist);
		dist = rad2deg(dist);
		dist = dist * 60 * 1.1515;
		dist = dist * 1.609344;
		return (dist);
	}

	/*:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*/
	/*::	This function converts decimal degrees to radians						 :*/
	/*:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*/
 static double deg2rad(double deg) {
		return (deg * Math.PI / 180.0);
	}

	/*:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*/
	/*::	This function converts radians to decimal degrees						 :*/
	/*:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*/
	 static double rad2deg(double rad) {
		return (rad * 180 / Math.PI);
	}
public static void main(String args[]){
BestKeyword bk=new BestKeyword(); 
try{
bk.RHItemSet();
bk.RBItemSet();
bk.HBItemSet();
bk.RHBItemSet();
}
catch(Exception e){
e.printStackTrace();}
}


}
