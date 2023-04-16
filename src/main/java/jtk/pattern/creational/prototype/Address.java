package jtk.pattern.creational.prototype;

class Address implements Cloneable{

    private String street;
    private String city;
    private String country;

    public Address(String street, String city, String country) {
        this.street = street;
        this.city = city;
        this.country = country;
    }

    public String getCity() {
        return city;
    }
    public String getCountry() {
        return country;
    }
    public String getStreet() {
        return street;
    }

    @Override
    public Address clone()  {
        Address clonedAddress;
        try {
            clonedAddress = (Address) super.clone();
        } catch (CloneNotSupportedException e) {
            return new Address(street, city, country);
        }
        return clonedAddress;
    }
}

