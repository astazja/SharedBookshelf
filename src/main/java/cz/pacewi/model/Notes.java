package cz.pacewi.model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Data
@Entity
public class Notes {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String myNotes;
    private String photo;
    private Boolean finished;
    private Integer readTo;
    private String importantPages;
    private Boolean recommend;
    @OneToOne
    @JoinColumn(name = "book_id", unique = true)
    private Book bookNotes;
    @ManyToOne
    private User booksNotes;

}
