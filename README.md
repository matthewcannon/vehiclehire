vehiclehire
===========
an mvc 4 application which explores: -
 * domain-driven design
 * end-to-end testing when a mature persistence model and orm are already in place
 * specification by example
 * movement towards cqrs

problem
=======
the first feature specification makes some simplifying assumptions about cancellation policies. without these simplifications we would not be able to make small steps. the persistence model declares some awkward relational data constraints. how is it possible to get started with end-to-end testing when the simplifications required by the scenario are not supported by the underlying relational model?
