import canonicalLaneMathlib.AdmissibleClass
import AutomEndObjects

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsCanonicalLaneLean

structure EndomorphismRingPackage (O : AutomEndAdmittedObject) where
  additionDefined : Prop
  multiplicationDefined : Prop
  additiveAssociativity : Prop
  multiplicativeAssociativity : Prop
  distributiveLaws : Prop
  additiveIdentity : Prop
  additiveInverses : Prop
  ringAxiomsSatisfied : Prop

def EndomorphismRingClosed {O : AutomEndAdmittedObject} (P : EndomorphismRingPackage O) : Prop :=
  P.additionDefined ∧ P.multiplicationDefined ∧ P.additiveAssociativity ∧
  P.multiplicativeAssociativity ∧ P.distributiveLaws ∧ P.additiveIdentity ∧
  P.additiveInverses ∧ P.ringAxiomsSatisfied

structure EndomorphismRingEvidence {O : AutomEndAdmittedObject} (P : EndomorphismRingPackage O) where
  additionDefinedClosed : P.additionDefined
  multiplicationDefinedClosed : P.multiplicationDefined
  additiveAssociativityClosed : P.additiveAssociativity
  multiplicativeAssociativityClosed : P.multiplicativeAssociativity
  distributiveLawsClosed : P.distributiveLaws
  additiveIdentityClosed : P.additiveIdentity
  additiveInversesClosed : P.additiveInverses
  ringAxiomsSatisfiedClosed : P.ringAxiomsSatisfied

theorem endomorphism_ring_closed_from_evidence
    {O : AutomEndAdmittedObject} (P : EndomorphismRingPackage O)
    (E : EndomorphismRingEvidence P) : EndomorphismRingClosed P := by
  exact And.intro E.additionDefinedClosed
    (And.intro E.multiplicationDefinedClosed
      (And.intro E.additiveAssociativityClosed
        (And.intro E.multiplicativeAssociativityClosed
          (And.intro E.distributiveLawsClosed
            (And.intro E.additiveIdentityClosed
              (And.intro E.additiveInversesClosed E.ringAxiomsSatisfiedClosed))))))

end AutomorphismsEndomorphismsCanonicalLaneLean
end HautevilleHouse