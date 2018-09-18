package ru.iss.shop.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import ru.iss.shop.Exception.EmailAlreadyExistException;
import ru.iss.shop.Exception.NicknameAlreadyExistException;
import ru.iss.shop.domain.Role;
import ru.iss.shop.domain.User;
import ru.iss.shop.repository.UserRepository;

import java.util.Collections;
import java.util.UUID;


@Service
public class UserService implements UserDetailsService {
    @Autowired
    private MailSender mailSender;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private UserRepository userRepository;

    public void addUser(User user) throws EmailAlreadyExistException, NicknameAlreadyExistException {
        User userFromDbByEmail = userRepository.findByEmail(user.getEmail());
        User userFromDbByNickname = userRepository.findByNickname(user.getNickname());
        if (userFromDbByEmail != null) {
            throw new EmailAlreadyExistException();
        }

        if (userFromDbByNickname != null) {
            throw new NicknameAlreadyExistException();
        }

        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.setActivated(false);
        user.setActivationCode(UUID.randomUUID().toString());
        user.setRoles(Collections.singleton(Role.USER));

        userRepository.save(user);
    }


    public void sendActivationMail(User user) {
        try {
            String message = "Если Вы регистрируетесь на портале PLATOPALATA, просим Вас перейти по ссылке для подтверждения почты: http://localhost:8080/activation/" + user.getActivationCode();
            mailSender.send(user.getEmail(), message);
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }

    public boolean activateUser(String activationCode) {
        User user = userRepository.findByActivationCode(activationCode);
        if (user != null) {
            user.setActivated(true);
            userRepository.save(user);
            return true;
        }
        else {
            return false;
        }
    }

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        return userRepository.findByEmail(s);
    }

    public void changePassword(User user, String newPassword) {
        user.setPassword(passwordEncoder.encode(newPassword));
        userRepository.save(user);
    }

    public void changeName(User user, String newName) {
        user.setName(newName);
        userRepository.save(user);
    }
}