package cz.pacewi.model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.Future;
import java.time.LocalDateTime;

@Data
@Entity
public class BooksBorrowed {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @ManyToOne
    @JoinColumn(name = "id_books_borrowed")
    private Book whatBooksBorrowed;
    @Future
    private LocalDateTime untilWhen;
    @OneToOne(optional = false)
    private User byWhom;
    @OneToOne(optional = false)
    private User fromWho;
    @Future
    private LocalDateTime bookBack;
}
