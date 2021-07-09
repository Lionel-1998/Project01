package com.atguigu.bean;

public class Customer extends Person {
    public static void main(String[] args) {
        System.out.println("hello world!!");
    }
    // 这是一个注释

    // 多行注释： ctrl+shift+/
    /*public void method(){
        
    }*/

    @Override
    public void eat() {
        System.out.println("客户吃饭");
        int num = 1;
    }
}


