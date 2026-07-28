import AutomorphismsEndomorphismsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsCanonicalLaneLean

structure CanonicalInvariantsPackage where
  invariantList : List Prop
  invariantUnderAutomorphism : Prop
  invariantUnderEndomorphism : Prop
  completenessCondition : Prop

structure CanonicalInvariantsEvidence (I : CanonicalInvariantsPackage) where
  invariantUnderAutomorphismClosed : I.invariantUnderAutomorphism
  invariantUnderEndomorphismClosed : I.invariantUnderEndomorphism
  completenessConditionClosed : I.completenessCondition

def CanonicalInvariantsClosed (I : CanonicalInvariantsPackage) : Prop :=
  I.invariantUnderAutomorphism ∧ I.invariantUnderEndomorphism ∧ I.completenessCondition

theorem canonical_invariants_closed_from_evidence
    (I : CanonicalInvariantsPackage) (E : CanonicalInvariantsEvidence I) :
    CanonicalInvariantsClosed I := by
  exact And.intro E.invariantUnderAutomorphismClosed
    (And.intro E.invariantUnderEndomorphismClosed E.completenessConditionClosed)

end AutomorphismsEndomorphismsCanonicalLaneLean
end HautevilleHouse