import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AutomorphismsEndomorphismsCanonicalLaneLean.AutomorphismEndomorphismAdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsCanonicalLaneLean

def bridgeClosed (A : AutomorphismEndomorphismAdmittedObject) : Prop :=
  A.object.automorphismGroupIsGroup ∧ A.object.endomorphismMonoidIsMonoid

theorem bridge_from_admissible_class (A : AutomorphismEndomorphismAdmittedObject) : bridgeClosed A := by
  exact A.object.conclusion

end AutomorphismsEndomorphismsCanonicalLaneLean
end HautevilleHouse