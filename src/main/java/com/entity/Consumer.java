package com.entity;

public class Consumer {

    private  int consumerid;
    private  String consumername;
    private  String cphone;

    public int getConsumerid() {
        return consumerid;
    }

    public void setConsumerid(int consumerid) {
        this.consumerid = consumerid;
    }

    public String getConsumername() {
        return consumername;
    }

    public void setConsumername(String consumername) {
        this.consumername = consumername;
    }

    public String getCphone() {
        return cphone;
    }

    public void setCphone(String cphone) {
        this.cphone = cphone;
    }


    public Consumer(int consumerid, String consumername, String cphone) {
        this.consumerid = consumerid;
        this.consumername = consumername;
        this.cphone = cphone;
    }

    public Consumer(String consumername, String cphone) {

        this.consumername = consumername;
        this.cphone = cphone;
    }


    public  Consumer(){

    }
}
