/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 comments
 */
package pack;

import java.sql.ResultSet;
import java.util.Calendar;

/**
 *
 * @author Nikhil
 */
public class BirthdayBean {

    protected String name = "";
    protected String city = "";
    protected String phoneno = "";
    protected String address = "";
    protected String dob = "";
    protected String anniversary = "NULL";

    public boolean addMember() {
        String qry;
        if (anniversary.equals("NULL")) {
            qry = "insert into birthdaymaster (name,city,phoneno,address,dob) values('" + name + "','" + city + "','" + phoneno + "','" + address + "','" + dob + "')";
        } else {
            qry = "insert into birthdaymaster (name,city,phoneno,address,dob,anniversary) values('" + name + "','" + city + "','" + phoneno + "','" + address + "','" + dob + "','" + anniversary + "')";
        }
        return DatabaseManager.executeUpdate(qry);
    }

    public boolean updateMember(String oldname) {
        String qry;
        if (anniversary.equals("NULL")) {
            qry = "update birthdaymaster set name='" + name + "', city='" + city + "', phoneno='" + phoneno + "', address='" + address + "', dob='" + dob + "' where name like '%" + oldname + "%'";
        } else {
            qry = "update birthdaymaster set name='" + name + "',city='" + city + "', phoneno='" + phoneno + "', address='" + address + "', dob='" + dob + "', anniversary='" + anniversary + "' where name like '%" + oldname + "%'";
        }
        return DatabaseManager.executeUpdate(qry);
    }
    
    public static boolean deleteMember(String name){
        String qry="delete from birthdaymaster where name='"+name+"'";
        return DatabaseManager.executeUpdate(qry);
    }

    public static ResultSet searchMember(String name) {
        String qry = "select * from birthdaymaster where name like '%" + name + "%'";
        return DatabaseManager.executeQuery(qry);
    }

    public static ResultSet getAllRecords() {
        String qry = "select * from birthdaymaster";
        return DatabaseManager.executeQuery(qry);
    }

    public static int getAgeOrNoAnni(String dob) {
        int cyear = Calendar.getInstance().get(Calendar.YEAR);
        char dy[] = dob.toCharArray();
        String ay = "" + dy[0] + dy[1] + dy[2] + dy[3];
        int dyear = Integer.parseInt(ay);
        int age = cyear - dyear;
        return age;
    }

    public static ResultSet getToday_sBirthday() {
        String date;
        int day = Calendar.getInstance().get(Calendar.DAY_OF_MONTH);
        int month = Calendar.getInstance().get(Calendar.MONTH) + 1;
        if (month < 10) {
            date = "-0" + month;
        } else {
            date = "-" + month;
        }
        if (day < 10) {
            date += "-0" + day;
        } else {
            date += "-" + day;
        }

        String qry = "select * from birthdaymaster where dob like '%" + date + "'";
        //    String tst="select * from birthdaymaster where dob like '%-09-16'";
        return DatabaseManager.executeQuery(qry);
    }

    public static ResultSet getBithdayByMonth(int month) {
        String sm;
        if (month < 10) {
            sm = "0" + month;
        } else {
            sm = month + "";
        }
        String qry = "select * from birthdaymaster where dob like '%-" + sm + "-%'";
        return DatabaseManager.executeQuery(qry);
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the city
     */
    public String getCity() {
        return city;
    }

    /**
     * @param city the city to set
     */
    public void setCity(String city) {
        this.city = city;
    }

    /**
     * @return the phoneno
     */
    public String getPhoneno() {
        return phoneno;
    }

    /**
     * @param phoneno the phoneno to set
     */
    public void setPhoneno(String phoneno) {
        this.phoneno = phoneno;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the dob
     */
    public String getDob() {
        return dob;
    }

    /**
     * @param dob the dob to set
     */
    public void setDob(String dob) {
        this.dob = dob;
    }

    /**
     * @return the anniversary
     */
    public String getAnniversary() {
        return anniversary;
    }

    /**
     * @param anniversary the anniversary to set
     */
    public void setAnniversary(String anniversary) {
        this.anniversary = anniversary;
    }
}
