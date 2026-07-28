import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AutomorphismsEndomorphismsCanonicalLaneLean.AutomorphismEndomorphismAdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsCanonicalLaneLean

structure ModuleAutomorphismPackage (R : Type u) [Ring R] (M : Type v) [AddCommGroup M] [Module R M] where
  linearAutomorphismGroup : Subgroup (LinearEquiv R M M)
  linearAutomorphismGroupIsGroup : Group (linearAutomorphismGroup : Type v)
  endomorphismRing : Subring (End R M)
  endomorphismRingIsRing : Ring (endomorphismRing : Type v)

structure ModuleAutomorphismEvidence (R : Type u) [Ring R] (M : Type v) [AddCommGroup M] [Module R M] (P : ModuleAutomorphismPackage R M) where
  linearAutomorphismGroupIsGroupClosed : P.linearAutomorphismGroupIsGroup
  endomorphismRingIsRingClosed : P.endomorphismRingIsRing

def ModuleAutomorphismClosed (R : Type u) [Ring R] (M : Type v) [AddCommGroup M] [Module R M] (P : ModuleAutomorphismPackage R M) : Prop :=
  P.linearAutomorphismGroupIsGroup ∧ P.endomorphismRingIsRing

theorem module_automorphism_closed_from_evidence (R : Type u) [Ring R] (M : Type v) [AddCommGroup M] [Module R M] (P : ModuleAutomorphismPackage R M) (E : ModuleAutomorphismEvidence R M P) : ModuleAutomorphismClosed R M P := by
  exact And.intro E.linearAutomorphismGroupIsGroupClosed E.endomorphismRingIsRingClosed

end AutomorphismsEndomorphismsCanonicalLaneLean
end HautevilleHouse