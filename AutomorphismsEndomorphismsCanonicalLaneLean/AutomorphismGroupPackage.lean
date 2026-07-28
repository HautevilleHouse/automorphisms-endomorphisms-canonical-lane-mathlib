import AutomorphismsEndomorphismsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsCanonicalLaneLean

structure AutomorphismGroupPackage where
  underlyingSet : Type u
  groupOperation : underlyingSet → underlyingSet → underlyingSet
  identityElement : underlyingSet
  inverseOperation : underlyingSet → underlyingSet
  groupAxioms : Prop
  automorphismProperty : Prop

structure AutomorphismGroupEvidence (G : AutomorphismGroupPackage) where
  groupAxiomsClosed : G.groupAxioms
  automorphismPropertyClosed : G.automorphismProperty

def AutomorphismGroupClosed (G : AutomorphismGroupPackage) : Prop :=
  G.groupAxioms ∧ G.automorphismProperty

theorem automorphism_group_closed_from_evidence
    (G : AutomorphismGroupPackage) (E : AutomorphismGroupEvidence G) :
    AutomorphismGroupClosed G := by
  exact And.intro E.groupAxiomsClosed E.automorphismPropertyClosed

end AutomorphismsEndomorphismsCanonicalLaneLean
end HautevilleHouse