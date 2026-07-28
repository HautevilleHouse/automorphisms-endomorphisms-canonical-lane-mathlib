import AutomorphismsEndomorphismsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsCanonicalLaneLean

structure EndomorphismStructure (carrier : Type u) where
  composition : carrier → carrier → carrier
  identity : carrier
  associativity : ∀ f g h : carrier, composition (composition f g) h = composition f (composition g h)
  identityLeft : ∀ f : carrier, composition identity f = f
  identityRight : ∀ f : carrier, composition f identity = f

structure AutomorphismStructure (carrier : Type u) extends EndomorphismStructure carrier where
  inverse : carrier → carrier
  inverseLeft : ∀ f : carrier, composition (inverse f) f = identity
  inverseRight : ∀ f : carrier, composition f (inverse f) = identity

theorem endomorphism_structure_implies_automorphism (E : EndomorphismStructure carrier) (inv : carrier → carrier)
  (leftInv : ∀ f, E.composition (inv f) f = E.identity) (rightInv : ∀ f, E.composition f (inv f) = E.identity) :
  AutomorphismStructure carrier := {
    composition := E.composition
    identity := E.identity
    associativity := E.associativity
    identityLeft := E.identityLeft
    identityRight := E.identityRight
    inverse := inv
    inverseLeft := leftInv
    inverseRight := rightInv
  }

end AutomorphismsEndomorphismsCanonicalLaneLean
end HautevilleHouse