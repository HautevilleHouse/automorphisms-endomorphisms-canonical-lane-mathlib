import AutomorphismsEndomorphismsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AutomorphismWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AutomorphismsEndomorphismsCanonicalLaneLean
end HautevilleHouse