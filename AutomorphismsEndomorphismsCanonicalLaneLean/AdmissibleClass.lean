import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AutomorphismAdmittedObject where
  group : Type u
  groupStr : Group group
  automorphism : group → group
  isAutomorphism : Prop
  conclusion : isAutomorphism

def AutomorphismWitnessClosed (O : AutomorphismAdmittedObject) : Prop :=
  O.isAutomorphism

structure AdmissibleClass where
  object : AutomorphismAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AutomorphismWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AutomorphismsEndomorphismsCanonicalLaneLean
end HautevilleHouse