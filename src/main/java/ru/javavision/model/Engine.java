package ru.javavision.model;

import lombok.*;

@Data
@ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
public class Engine {

    private int id;

    private String model;

    private int power;
}
