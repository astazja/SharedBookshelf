package cz.pacewi.model;

import lombok.Data;
import org.hibernate.mapping.ToOne;

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
    @ManyToOne
    @JoinColumn(name = "book_id")
    private Book bookNotes;
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User booksNotes;
}
