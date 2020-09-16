# moonshine

Moonshine is an effort to formalize certain parts of [the nLab](https://ncatlab.org/) 
as yet another [HoTT](https://en.wikipedia.org/wiki/Homotopy_type_theory) library 
written in [Idris](https://www.idris-lang.org/).

## Our Mission

We have a few guiding principles:

#### Bring out the computational content
This can be seen in our presentation of sheaves for example.

#### Topology is coinductive
We make extensive use of Idris codata types in our definitions. 

#### [Computational equality](https://ncatlab.org/nlab/show/equality#computational_equality) over propositional equality
Our definition of the circle is a good example of this. Propositional equality is easy to 
add to an existing set of constructors. In contrast, expressing the same equations by way 
of computational equality requires one to tweak the original constructors in non-trivial
ways and finding the right constructors can be highly non-trivial. On the upside, the
resulting definitions are runnable and have interesting runtime properties that we can
learn from. We believe this is worth the extra effort. See the 3-sphere for a more complex
example.

#### Like a software library
Moonshine strives to be compact and opinionated, as opposed to comprehensive and encyclopedic. 
When there are multiple ways to capture the same idea, we usually pick the formalism that 
better matches our guiding principles.
