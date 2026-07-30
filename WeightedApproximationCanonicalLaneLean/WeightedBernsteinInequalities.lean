import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WeightedApproximationCanonicalLaneLean.WeightedSobolevSpace

namespace HautevilleHouse
namespace WeightedApproximationCanonicalLaneLean

structure WeightedBernsteinPackage {W : WeightFunctionPackage}
    {S : WeightedSobolevPackage W} where
  polynomialDegree : ℕ
  bernsteinInequality : Prop
  constantExplicit : ℝ
  constantPositive : constantExplicit > 0

structure WeightedBernsteinEvidence {W : WeightFunctionPackage}
    {S : WeightedSobolevPackage W} (B : WeightedBernsteinPackage W S) where
  bernsteinInequalityClosed : B.bernsteinInequality

def WeightedBernsteinClosed {W : WeightFunctionPackage}
    {S : WeightedSobolevPackage W} (B : WeightedBernsteinPackage W S) : Prop :=
  B.bernsteinInequality ∧ B.constantExplicit > 0

theorem weighted_bernstein_closed_from_evidence {W : WeightFunctionPackage}
    {S : WeightedSobolevPackage W} (B : WeightedBernsteinPackage W S)
    (E : WeightedBernsteinEvidence B) : WeightedBernsteinClosed B :=
  And.intro E.bernsteinInequalityClosed B.constantPositive

end WeightedApproximationCanonicalLaneLean
end HautevilleHouse