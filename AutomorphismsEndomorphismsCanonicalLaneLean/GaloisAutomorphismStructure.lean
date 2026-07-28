import canonicalLaneMathlib.AdmissibleClass
import AutomEndObjects

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsCanonicalLaneLean

structure GaloisAutomorphismPackage (O : AutomEndAdmittedObject) where
  fieldExtension : Prop
  fixedField : Prop
  automorphismPreservesFieldOps : Prop
  galoisGroupFormed : Prop

def GaloisAutomorphismClosed {O : AutomEndAdmittedObject} (P : GaloisAutomorphismPackage O) : Prop :=
  P.fieldExtension ∧ P.fixedField ∧ P.automorphismPreservesFieldOps ∧ P.galoisGroupFormed

structure GaloisAutomorphismEvidence {O : AutomEndAdmittedObject} (P : GaloisAutomorphismPackage O) where
  fieldExtensionClosed : P.fieldExtension
  fixedFieldClosed : P.fixedField
  automorphismPreservesFieldOpsClosed : P.automorphismPreservesFieldOps
  galoisGroupFormedClosed : P.galoisGroupFormed

theorem galois_automorphism_closed_from_evidence
    {O : AutomEndAdmittedObject} (P : GaloisAutomorphismPackage O)
    (E : GaloisAutomorphismEvidence P) : GaloisAutomorphismClosed P := by
  exact And.intro E.fieldExtensionClosed
    (And.intro E.fixedFieldClosed
      (And.intro E.automorphismPreservesFieldOpsClosed E.galoisGroupFormedClosed))

end AutomorphismsEndomorphismsCanonicalLaneLean
end HautevilleHouse