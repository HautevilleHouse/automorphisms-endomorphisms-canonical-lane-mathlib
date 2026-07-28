import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AutomorphismsEndomorphismsCanonicalLaneLean.AutomorphismEndomorphismAdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsCanonicalLaneLean

structure RingEndomorphismPackage (R : Type u) [Ring R] where
  automorphismGroup : Subgroup (Equiv.Perm R)
  automorphismGroupIsGroup : Group (automorphismGroup : Type u)
  endomorphismRing : Subring (End R)
  endomorphismRingIsRing : Ring (endomorphismRing : Type u)

structure RingEndomorphismEvidence (R : Type u) [Ring R] (P : RingEndomorphismPackage R) where
  automorphismGroupIsGroupClosed : P.automorphismGroupIsGroup
  endomorphismRingIsRingClosed : P.endomorphismRingIsRing

def RingEndomorphismClosed (R : Type u) [Ring R] (P : RingEndomorphismPackage R) : Prop :=
  P.automorphismGroupIsGroup ∧ P.endomorphismRingIsRing

theorem ring_endomorphism_closed_from_evidence (R : Type u) [Ring R] (P : RingEndomorphismPackage R) (E : RingEndomorphismEvidence R P) : RingEndomorphismClosed R P := by
  exact And.intro E.automorphismGroupIsGroupClosed E.endomorphismRingIsRingClosed

end AutomorphismsEndomorphismsCanonicalLaneLean
end HautevilleHouse