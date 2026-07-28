import canonicalLaneMathlib.AdmissibleClass
import AutomEndObjects

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsCanonicalLaneLean

structure AutomorphismGroupPackage (O : AutomEndAdmittedObject) where
  closureUnderComposition : Prop
  identityElementPresent : Prop
  inversesExist : Prop
  groupAxiomsSatisfied : Prop

def AutomorphismGroupClosed {O : AutomEndAdmittedObject} (P : AutomorphismGroupPackage O) : Prop :=
  P.closureUnderComposition ∧ P.identityElementPresent ∧ P.inversesExist ∧ P.groupAxiomsSatisfied

structure AutomorphismGroupEvidence {O : AutomEndAdmittedObject} (P : AutomorphismGroupPackage O) where
  closureUnderCompositionClosed : P.closureUnderComposition
  identityElementPresentClosed : P.identityElementPresent
  inversesExistClosed : P.inversesExist
  groupAxiomsSatisfiedClosed : P.groupAxiomsSatisfied

theorem automorphism_group_closed_from_evidence
    {O : AutomEndAdmittedObject} (P : AutomorphismGroupPackage O)
    (E : AutomorphismGroupEvidence P) : AutomorphismGroupClosed P := by
  exact And.intro E.closureUnderCompositionClosed
    (And.intro E.identityElementPresentClosed
      (And.intro E.inversesExistClosed E.groupAxiomsSatisfiedClosed))

end AutomorphismsEndomorphismsCanonicalLaneLean
end HautevilleHouse