import EuclideanGeometry.Foundation.Index

noncomputable section

namespace EuclidGeom

namespace Schaum
namespace Problem1_10
/-
Let $ABCD$ be a parallelogram.
Let $P$ be the foot of the perpendicular from $A$ to the line $CD$,
and let $Q$ be the foot of the perpendicular from $C$ to the line $AB$.

Prove that $APCQ$ is a rectangle.
-/

structure Setting (Plane : Type _) [EuclideanPlane Plane] where
  -- Let $ABCD$ be a parallelogram.
  A : Plane
  B : Plane
  C : Plane
  D : Plane
  hprg : Quadrilateral.IsParallelogram (QDR A B C D)
  -- Let $P$ be the foot of the perpendicular from $A$ to the line $CD$.
  D_ne_C : D ≠ C := by sorry
  P : Plane
  hppf : P = perp_foot A (LIN C D D_ne_C)
  -- Let $Q$ be the foor of the perpendicular from $C$ to the line $AB$.
  B_ne_A : B ≠ A := by sorry
  Q : Plane
  hqpf : Q = perp_foot C (LIN A B B_ne_A)

-- Prove that $APCQ$ is a rectangle
-- theorem result {Plane : Type _} [EuclideanPlane Plane] (e : Setting Plane) : Quadrilateral.IsRectangle (QDR e.A e.P e.C e.Q) := by
  -- sorry


end Problem1_10
