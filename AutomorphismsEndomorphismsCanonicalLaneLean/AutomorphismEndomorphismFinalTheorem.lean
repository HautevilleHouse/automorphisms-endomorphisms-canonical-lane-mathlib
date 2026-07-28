import HautevilleHouse.AutomorphismsEndomorphismsCanonicalLaneLean.AutomorphismEndomorphismBridgeLemmas
import HautevilleHouse.AutomorphismsEndomorphismsCanonicalLaneLean.AutomorphismEndomorphismGateLemmas

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsCanonicalLaneLean

def ConstrainedAutomorphismEndomorphismClosure (A : AutomorphismEndomorphismAdmittedObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_automorphism_endomorphism_endgame (A : AutomorphismEndomorphismAdmittedObject) :
    ConstrainedAutomorphismEndomorphismClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AutomorphismsEndomorphismsCanonicalLaneLean
end HautevilleHouse