package cz.pacewi.model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Data
@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotNull
    @Size(min = 2, max = 30)
    private String name;
    @NotNull
    @Size(min = 2, max = 30)
    private String surname;
    @Digits(integer = 9, fraction = 0)
    private String phoneNumber;
    @Email
    private String email;
    private Boolean consentToNextLent;
    @OneToOne(optional = false)
    private Address address;
}
