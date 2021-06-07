package cz.pacewi.model;

import lombok.Data;
import org.springframework.security.core.GrantedAuthority;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.util.Collection;
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
    @NotNull
    @Size(min = 1, max = 60)
    private String password;
    private int enable;
    private String photo;
    @Digits(integer = 9, fraction = 0)
    private String phoneNumber;
    @Email
    private String email;
    private Boolean consentToNextLent;
    @NotNull
    @Size(min = 2, max = 30)
    private String city;
    @NotNull
    @Size(min = 2, max = 30)
    private String street;
    @NotNull
    @Digits(integer = 4, fraction = 0)
    private String number;
    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private Set<Role> roles;
}
