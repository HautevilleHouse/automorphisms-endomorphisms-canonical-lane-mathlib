import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AutomorphismsEndomorphismsCanonicalLaneLean.AutomorphismEndomorphismAdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsCanonicalLaneLean

structure FieldAutomorphismPackage (K : Type u) [Field K] where
  automorphismGroup : Subgroup (Equiv.Perm K)
  automorphismGroupIsGroup : Group (automorphismGroup : Type u)
  fixedField : IntermediateField K K
  galoisCorrespondence : Prop

structure FieldAutomorphismEvidence (K : Type u) [Field K] (P : FieldAutomorphismPackage K) where
  automorphismGroupIsGroupClosed : P.automorphismGroupIsGroup
  galoisCorrespondenceClosed : P.galoisCorrespondence

def FieldAutomorphismClosed (K : Type u) [Field K] (P : FieldAutomorphismPackage K) : Prop :=
  P.automorphismGroupIsGroup ∧ P.galoisCorrespondence

theorem field_automorphism_closed_from_evidence (K : Type u) [Field K] (P : FieldAutomorphismPackage K) (E : FieldAutomorphismEvidence K P) : FieldAutomorphismClosed K P := by
  exact And.intro E.automorphismGroupIsGroupClosed E.galoisCorrespondenceClosed

end AutomorphismsEndomorphismsCanonicalLaneLean
end HautevilleHouse