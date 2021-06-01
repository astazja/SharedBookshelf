package cz.pacewi.model;

import lombok.Data;
import org.hibernate.mapping.ToOne;
import org.hibernate.validator.constraints.ISBN;

import javax.persistence.*;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

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
    private Integer publicationYear;
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
    @ManyToOne
    @JoinColumn(name = "owner_id")
    private User owner;
    private String bookshelf; //gdzie leży książka na której półce opis
    @OneToMany(mappedBy = "whatBooksBorrowed")
    private Set<BooksBorrowed> history = new HashSet<>();
}
