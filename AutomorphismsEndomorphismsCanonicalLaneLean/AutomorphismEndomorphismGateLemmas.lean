import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AutomorphismsEndomorphismsCanonicalLaneLean.AutomorphismEndomorphismAdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsCanonicalLaneLean

def gateClosed (A : AutomorphismEndomorphismAdmittedObject) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AutomorphismEndomorphismAdmittedObject) : gateClosed A := by
  exact A.gateWitness

end AutomorphismsEndomorphismsCanonicalLaneLean
end HautevilleHouse