package com.dto.user.response;

public class CustomerRes {

    private String fullName;
    private String dob;
    private String userTypeStr;
    private String userEmail;
    private String userMobileNumber;
    private Double loanBalance;
    private Double usedAmount;
    private String planName;

    public CustomerRes() {
    }

    public CustomerRes(String fullName, String dob, String userTypeStr, String userEmail, String userMobileNumber, Double loanBalance, Double usedAmount, String planName) {
        this.fullName = fullName;
        this.dob = dob;
        this.userTypeStr = userTypeStr;
        this.userEmail = userEmail;
        this.userMobileNumber = userMobileNumber;
        this.loanBalance = loanBalance;
        this.usedAmount = usedAmount;
        this.planName = planName;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getUserTypeStr() {
        return userTypeStr;
    }

    public void setUserTypeStr(String userTypeStr) {
        this.userTypeStr = userTypeStr;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserMobileNumber() {
        return userMobileNumber;
    }

    public void setUserMobileNumber(String userMobileNumber) {
        this.userMobileNumber = userMobileNumber;
    }

    public Double getLoanBalance() {
        return loanBalance;
    }

    public void setLoanBalance(Double loanBalance) {
        this.loanBalance = loanBalance;
    }

    public Double getUsedAmount() {
        return usedAmount;
    }

    public void setUsedAmount(Double usedAmount) {
        this.usedAmount = usedAmount;
    }

    public String getPlanName() {
        return planName;
    }

    public void setPlanName(String planName) {
        this.planName = planName;
    }
}
