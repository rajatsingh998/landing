package UserData;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class forma {


    String name;
    @Id
    String number;
    String address;
    String message;
    public void setName(String name) {
        this.name = name;
    }

    public void setNum(String num) {
        this.number = num;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setMessage(String message) {
        this.message = message;
    }



    public String getName() {
        return name;
    }

    public String getNum() {
        return number;
    }

    public String getAddress() {
        return address;
    }

    public String getMessage() {
        return message;
    }
}
