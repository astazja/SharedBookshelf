package cz.pacewi.model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Set;

@Data
@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(nullable = false, unique = true, length = 60)
    private String username;
    @NotNull
    @Size(min = 2, max = 30)
    private String name;
    @NotNull
    @Size(min = 2, max = 30)
    private String surname;
    private String password;
    private int enable;
    private String photo;
    @Digits(integer = 9, fraction = 0)
    private String phoneNumber;
    @Email
    private String email;
    private Boolean consentToNextLent;
    @OneToOne(optional = false)
    private Address address;
    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private Set<Role> roles;
}
