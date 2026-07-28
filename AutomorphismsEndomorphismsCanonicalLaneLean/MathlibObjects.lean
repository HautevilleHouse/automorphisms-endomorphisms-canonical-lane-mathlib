import AutomorphismsEndomorphismsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Algebra.Group.Basic

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsCanonicalLaneLean

structure AutomorphismObject where
  carrier : Type
  groupStructure : Group carrier
  endoStructure : Endomorphism carrier
  property : Prop

structure AdmittedObject where
  object : AutomorphismObject
  conclusion : object.property

def AutomorphismWitnessClosed (O : AdmittedObject) : Prop :=
  O.object.property

end AutomorphismsEndomorphismsCanonicalLaneLean
end HautevilleHouse