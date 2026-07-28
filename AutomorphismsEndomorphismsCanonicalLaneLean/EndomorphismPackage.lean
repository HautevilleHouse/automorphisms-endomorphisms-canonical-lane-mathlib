import AutomorphismsEndomorphismsCanonicalLaneLean.Basic

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsCanonicalLaneLean

structure EndomorphismPackage where
  object : Type u
  endoMap : object → object
  endoProperties : Prop
  invariantSubspaces : Prop
  decomposition : Prop

structure EndomorphismEvidence (E : EndomorphismPackage) where
  endoPropertiesClosed : E.endoProperties
  invariantSubspacesClosed : E.invariantSubspaces
  decompositionClosed : E.decomposition

def EndomorphismClosed (E : EndomorphismPackage) : Prop :=
  E.endoProperties ∧ E.invariantSubspaces ∧ E.decomposition

theorem endomorphism_closed_from_evidence (E : EndomorphismPackage) (ev : EndomorphismEvidence E) :
    EndomorphismClosed E := by
  exact And.intro ev.endoPropertiesClosed (And.intro ev.invariantSubspacesClosed ev.decompositionClosed)

end AutomorphismsEndomorphismsCanonicalLaneLean
end HautevilleHouse