package ru.iss.shop.Exception;

public class NicknameAlreadyExistException extends Exception{
    public NicknameAlreadyExistException() {
        super();
    }

    public NicknameAlreadyExistException(String message) {
        super(message);
    }

    public NicknameAlreadyExistException(String message, Throwable cause) {
        super(message, cause);
    }

    public NicknameAlreadyExistException(Throwable cause) {
        super(cause);
    }

    protected NicknameAlreadyExistException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }

    @Override
    public String getMessage() {
        return "This nickname already exist";
    }
}
