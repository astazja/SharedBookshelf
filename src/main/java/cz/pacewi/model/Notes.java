package cz.pacewi.model;

import lombok.Data;
import org.hibernate.mapping.ToOne;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Data
@Entity
public class Notes {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotNull
    @Size(min = 1, max = 60)
    private String noteTitle;
    @NotNull
    @Size(min = 1, max = 1000)
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
