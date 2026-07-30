import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeightedApproximationCanonicalLaneLean

structure WeightedLpApproximationPackage {W : WeightedApproximationPackage} {P : WeightedPolynomialApproximationPackage W} (M : WeightedModuliOfSmoothnessPackage P) where
  measureSpace : Type u
  weightedNorm : Type v
  densityOfPolynomials : Prop
  bestApproximationInLp : Prop

structure WeightedLpApproximationEvidence {W : WeightedApproximationPackage} {P : WeightedPolynomialApproximationPackage W} {M : WeightedModuliOfSmoothnessPackage P} (L : WeightedLpApproximationPackage M) where
  densityOfPolynomialsClosed : L.densityOfPolynomials
  bestApproximationInLpClosed : L.bestApproximationInLp

def WeightedLpApproximationClosed {W : WeightedApproximationPackage} {P : WeightedPolynomialApproximationPackage W} {M : WeightedModuliOfSmoothnessPackage P} (L : WeightedLpApproximationPackage M) : Prop :=
  L.densityOfPolynomials ∧ L.bestApproximationInLp

theorem weighted_lp_approximation_closed_from_evidence {W : WeightedApproximationPackage} {P : WeightedPolynomialApproximationPackage W} {M : WeightedModuliOfSmoothnessPackage P} (L : WeightedLpApproximationPackage M) (E : WeightedLpApproximationEvidence L) : WeightedLpApproximationClosed L :=
  And.intro E.densityOfPolynomialsClosed E.bestApproximationInLpClosed

end WeightedApproximationCanonicalLaneLean
end HautevilleHouse