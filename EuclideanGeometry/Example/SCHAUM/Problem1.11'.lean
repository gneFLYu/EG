import EuclideanGeometry.Foundation.Index

noncomputable section

namespace EuclidGeom

namespace Schaum
namespace Problem1_11


/-
If $ABCD$ is a parallelogram and $CDEF$ is a parallelogram,

then $ABFE$ is a parallelogram.
-/
structure Setting (Plane : Type _) [EuclideanPlane Plane] where
  -- $ABCD$ is a parallelogram.
  A : Plane
  B : Plane
  C : Plane
  D : Plane
  hprg1 : Quadrilateral.IsParallelogram (QDR A B C D)
  -- $CDEF$ is a parallelogram.
  E : Plane
  F : Plane
  hprg2 : Quadrilateral.IsParallelogram (QDR C D E F)

-- State the main goal. Prove that $ABFE$ is a parallelogram
theorem result {Plane : Type _} [EuclideanPlane Plane] (e : Setting Plane) : Quadrilateral.IsParallelogram (QDR e.A e.B e.F e.E) := by
  sorry

end Problem1_11
