import AutomorphismsEndomorphismsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsCanonicalLaneLean

def automorphismProjection : Projection AdmittedObject := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem automorphism_projection_idempotent (x : AdmittedObject) :
    automorphismProjection.toFun (automorphismProjection.toFun x) = automorphismProjection.toFun x := by
  exact automorphismProjection.idempotent x

end AutomorphismsEndomorphismsCanonicalLaneLean
end HautevilleHouse