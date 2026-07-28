import AutomorphismsEndomorphismsCanonicalLaneLean.EndomorphismPackage

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsCanonicalLaneLean

structure AutomorphismClassificationPackage (E : EndomorphismPackage) where
  automorphismGroup : Type u
  classificationResult : Prop
  decompositionCompatible : Prop
  witness : classificationResult

structure AutomorphismClassificationEvidence {E : EndomorphismPackage} (C : AutomorphismClassificationPackage E) where
  classificationResultClosed : C.classificationResult
  decompositionCompatibleClosed : C.decompositionCompatible

def AutomorphismClassificationClosed {E : EndomorphismPackage} (C : AutomorphismClassificationPackage E) : Prop :=
  C.classificationResult ∧ C.decompositionCompatible

theorem automorphism_classification_closed_from_evidence
    {E : EndomorphismPackage} (C : AutomorphismClassificationPackage E)
    (ev : AutomorphismClassificationEvidence C) : AutomorphismClassificationClosed C := by
  exact And.intro ev.classificationResultClosed ev.decompositionCompatibleClosed

end AutomorphismsEndomorphismsCanonicalLaneLean
end HautevilleHouse