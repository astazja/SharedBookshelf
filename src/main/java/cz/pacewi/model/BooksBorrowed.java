package cz.pacewi.model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.Future;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Data
@Entity
public class BooksBorrowed {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @ManyToOne
    private Book whatBooksBorrowed;
    @ManyToOne
    private User byWhom;
    @ManyToOne
    private User fromWho;
    @Future
    private LocalDateTime bookBack;
}
