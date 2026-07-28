import AutomorphismsEndomorphismsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismsEndomorphismsCanonicalLaneLean

structure FixedPointStructurePackage where
  fixedPointSet : Type u
  inclusionMap : fixedPointSet → (object : AutomorphismAdmittedObject).carrier
  fixedUnderAllAutomorphisms : Prop
  fixedUnderAllEndomorphisms : Prop
  structureInherited : Prop

structure FixedPointStructureEvidence (F : FixedPointStructurePackage) where
  fixedUnderAllAutomorphismsClosed : F.fixedUnderAllAutomorphisms
  fixedUnderAllEndomorphismsClosed : F.fixedUnderAllEndomorphisms
  structureInheritedClosed : F.structureInherited

def FixedPointStructureClosed (F : FixedPointStructurePackage) : Prop :=
  F.fixedUnderAllAutomorphisms ∧ F.fixedUnderAllEndomorphisms ∧ F.structureInherited

theorem fixed_point_structure_closed_from_evidence
    (F : FixedPointStructurePackage) (E : FixedPointStructureEvidence F) :
    FixedPointStructureClosed F := by
  exact And.intro E.fixedUnderAllAutomorphismsClosed
    (And.intro E.fixedUnderAllEndomorphismsClosed E.structureInheritedClosed)

end AutomorphismsEndomorphismsCanonicalLaneLean
end HautevilleHouse