import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AutomorphismsEndomorphismsCanonicalLaneLean.AutomorphismEndomorphismAdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsCanonicalLaneLean

structure GroupAutomorphismPackage (G : Type u) [Group G] where
  automorphismSubgroup : Subgroup (Equiv.Perm G)
  automorphismGroupIsGroup : Group (automorphismSubgroup : Type u)
  automorphismGroupIsGroupProof : Group (automorphismSubgroup : Type u) := inferInstance
  endomorphismMonoid : Submonoid (End G)
  endomorphismMonoidIsMonoid : Monoid (endomorphismMonoid : Type u)
  endomorphismMonoidIsMonoidProof : Monoid (endomorphismMonoid : Type u) := inferInstance

structure GroupAutomorphismEvidence (G : Type u) [Group G] (P : GroupAutomorphismPackage G) where
  automorphismGroupIsGroupClosed : P.automorphismGroupIsGroup
  endomorphismMonoidIsMonoidClosed : P.endomorphismMonoidIsMonoid

def GroupAutomorphismClosed (G : Type u) [Group G] (P : GroupAutomorphismPackage G) : Prop :=
  P.automorphismGroupIsGroup ∧ P.endomorphismMonoidIsMonoid

theorem group_automorphism_closed_from_evidence (G : Type u) [Group G] (P : GroupAutomorphismPackage G) (E : GroupAutomorphismEvidence G P) : GroupAutomorphismClosed G P := by
  exact And.intro E.automorphismGroupIsGroupClosed E.endomorphismMonoidIsMonoidClosed

end AutomorphismsEndomorphismsCanonicalLaneLean
end HautevilleHouse