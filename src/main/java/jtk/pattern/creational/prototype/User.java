package jtk.pattern.creational.prototype;

class User implements Cloneable{

    private String firstName;
    private String lastName;
    private Address address;

    public User(String firstName, String lastName, Address address) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.address = address;
    }

    public Address getAddress() {
        return address;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    @Override
    protected User clone()  {
        User clonedUser;
        Address clonedAddress = new Address(address.getStreet(), address.getCity(), address.getCountry());
        try {
            clonedUser = (User) super.clone();
            clonedUser.address = clonedAddress;
            return clonedUser;
        } catch (CloneNotSupportedException e) {
            clonedUser = new User(firstName,lastName, clonedAddress);
        }
        return clonedUser;
    }
}
