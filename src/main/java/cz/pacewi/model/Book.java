package cz.pacewi.model;

import lombok.Data;
import org.hibernate.validator.constraints.ISBN;

import javax.persistence.*;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Data
@Entity
public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotNull
    @Size(min = 1, max = 60)
    private String title;
    @NotNull
    @Size(min = 1, max = 60)
    private String author;
    @ISBN
    private String isbn;
    @NotNull
    @Size(min = 1, max = 60)
    private String publisher;
    @NotNull
    @Digits(integer = 4, fraction = 0)
    private LocalDateTime publicationYear;
    @NotNull
    @Size(min = 1, max = 60)
    private String genre;
    private String description;
    private String photo;
    private Integer pages;
    private Boolean borrowed;
    private Boolean recommend;
    private Boolean finished;
    private Integer readTo;
    @OneToOne
    @JoinColumn(name = "owner_id", unique = true)
    private User owner;
    @OneToMany
    @JoinColumn(name = "id_user_lent")
    private List<User> toWhomLent = new ArrayList<>();
    private String bookshelf; //gdzie leży książka na której półce opis

}
