package cz.pacewi.model;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
public class Notes {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String noteTitle;
    private String noteDescription;
    private String photo;
    private String importantPages;
    @OneToOne
    @JoinColumn(name = "book_id", unique = true)
    private Book bookNotes;
    @ManyToOne
    private User booksNotes;

}
