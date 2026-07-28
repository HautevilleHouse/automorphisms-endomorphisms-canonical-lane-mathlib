import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsCanonicalLaneLean

structure AutomorphismEndomorphismObject where
  carrier : Type u
  automorphismGroupIsGroup : Prop
  endomorphismMonoidIsMonoid : Prop
  conclusion : automorphismGroupIsGroup ∧ endomorphismMonoidIsMonoid

structure AutomorphismEndomorphismAdmittedObject where
  object : AutomorphismEndomorphismObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AutomorphismEndomorphismAdmittedObject) : Prop :=
  (A.object.automorphismGroupIsGroup ∧ A.object.endomorphismMonoidIsMonoid) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AutomorphismsEndomorphismsCanonicalLaneLean
end HautevilleHouse