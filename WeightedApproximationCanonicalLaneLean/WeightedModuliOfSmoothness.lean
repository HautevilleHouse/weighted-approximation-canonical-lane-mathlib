import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeightedApproximationCanonicalLaneLean

structure WeightedModuliOfSmoothnessPackage {W : WeightedApproximationPackage} (P : WeightedPolynomialApproximationPackage W) where
  modulusDefinition : Prop
  directTheorem : Prop
  inverseTheorem : Prop
  equivalenceWithKFunctional : Prop

structure WeightedModuliOfSmoothnessEvidence {W : WeightedApproximationPackage} {P : WeightedPolynomialApproximationPackage W} (M : WeightedModuliOfSmoothnessPackage P) where
  modulusDefinitionClosed : M.modulusDefinition
  directTheoremClosed : M.directTheorem
  inverseTheoremClosed : M.inverseTheorem
  equivalenceWithKFunctionalClosed : M.equivalenceWithKFunctional

def WeightedModuliOfSmoothnessClosed {W : WeightedApproximationPackage} {P : WeightedPolynomialApproximationPackage W} (M : WeightedModuliOfSmoothnessPackage P) : Prop :=
  M.modulusDefinition ∧ M.directTheorem ∧ M.inverseTheorem ∧ M.equivalenceWithKFunctional

theorem weighted_moduli_of_smoothness_closed_from_evidence {W : WeightedApproximationPackage} {P : WeightedPolynomialApproximationPackage W} (M : WeightedModuliOfSmoothnessPackage P) (E : WeightedModuliOfSmoothnessEvidence M) : WeightedModuliOfSmoothnessClosed M :=
  And.intro E.modulusDefinitionClosed (And.intro E.directTheoremClosed (And.intro E.inverseTheoremClosed E.equivalenceWithKFunctionalClosed))

end WeightedApproximationCanonicalLaneLean
end HautevilleHouse