import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsCanonicalLaneLean

structure AutomEndSpace where
  carrier : Type
  operation : carrier → carrier → carrier

structure AutomEndAdmittedObject where
  space : AutomEndSpace
  automorphismGroupAxioms : Prop
  endomorphismRingAxioms : Prop
  conclusion : automorphismGroupAxioms ∧ endomorphismRingAxioms

def AutomEndWitnessClosed (O : AutomEndAdmittedObject) : Prop :=
  O.automorphismGroupAxioms ∧ O.endomorphismRingAxioms

end AutomorphismsEndomorphismsCanonicalLaneLean
end HautevilleHouse