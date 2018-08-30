package ru.iss.shop.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class UserService {
    @Autowired
    private MailSender mailSender;


    public void sendMail(String email, String message){
        mailSender.send(email, message);
    }
}