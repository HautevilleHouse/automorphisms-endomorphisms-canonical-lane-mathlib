import canonicalLaneMathlib.AdmissibleClass
import AutomEndObjects

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsCanonicalLaneLean

structure InnerAutomorphismPackage (O : AutomEndAdmittedObject) where
  conjugationMap : Prop
  closureUnderConjugation : Prop
  identityConjugate : Prop
  innerAutomorphismGroup : Prop

def InnerAutomorphismClosed {O : AutomEndAdmittedObject} (P : InnerAutomorphismPackage O) : Prop :=
  P.conjugationMap ∧ P.closureUnderConjugation ∧ P.identityConjugate ∧ P.innerAutomorphismGroup

structure InnerAutomorphismEvidence {O : AutomEndAdmittedObject} (P : InnerAutomorphismPackage O) where
  conjugationMapClosed : P.conjugationMap
  closureUnderConjugationClosed : P.closureUnderConjugation
  identityConjugateClosed : P.identityConjugate
  innerAutomorphismGroupClosed : P.innerAutomorphismGroup

theorem inner_automorphism_closed_from_evidence
    {O : AutomEndAdmittedObject} (P : InnerAutomorphismPackage O)
    (E : InnerAutomorphismEvidence P) : InnerAutomorphismClosed P := by
  exact And.intro E.conjugationMapClosed
    (And.intro E.closureUnderConjugationClosed
      (And.intro E.identityConjugateClosed E.innerAutomorphismGroupClosed))

end AutomorphismsEndomorphismsCanonicalLaneLean
end HautevilleHouse