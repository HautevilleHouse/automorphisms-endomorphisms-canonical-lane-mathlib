import AutomorphismsEndomorphismsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsCanonicalLaneLean

structure EndomorphismRingPackage where
  underlyingSet : Type u
  addition : underlyingSet → underlyingSet → underlyingSet
  multiplication : underlyingSet → underlyingSet → underlyingSet
  zeroElement : underlyingSet
  oneElement : underlyingSet
  ringAxioms : Prop
  endomorphismProperty : Prop

structure EndomorphismRingEvidence (R : EndomorphismRingPackage) where
  ringAxiomsClosed : R.ringAxioms
  endomorphismPropertyClosed : R.endomorphismProperty

def EndomorphismRingClosed (R : EndomorphismRingPackage) : Prop :=
  R.ringAxioms ∧ R.endomorphismProperty

theorem endomorphism_ring_closed_from_evidence
    (R : EndomorphismRingPackage) (E : EndomorphismRingEvidence R) :
    EndomorphismRingClosed R := by
  exact And.intro E.ringAxiomsClosed E.endomorphismPropertyClosed

end AutomorphismsEndomorphismsCanonicalLaneLean
end HautevilleHouse