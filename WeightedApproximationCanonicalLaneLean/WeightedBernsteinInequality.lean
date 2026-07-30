import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WeightedApproximationCanonicalLaneLean.WeightedPolynomialApproximation

namespace HautevilleHouse
namespace WeightedApproximationCanonicalLaneLean

structure WeightedBernsteinInequalityPackage
    (P : WeightedPolynomialApproximationPackage) where
  bernsteinWeight : Type u
  derivativeBound : Prop
  polynomialDegreeBound : Prop
  constantDependence : Prop

structure WeightedBernsteinInequalityEvidence
    {P : WeightedPolynomialApproximationPackage}
    (B : WeightedBernsteinInequalityPackage P) where
  derivativeBoundClosed : B.derivativeBound
  polynomialDegreeBoundClosed : B.polynomialDegreeBound
  constantDependenceClosed : B.constantDependence

def WeightedBernsteinInequalityClosed
    {P : WeightedPolynomialApproximationPackage}
    (B : WeightedBernsteinInequalityPackage P) : Prop :=
  B.derivativeBound ∧ B.polynomialDegreeBound ∧ B.constantDependence

theorem weighted_bernstein_inequality_closed_from_evidence
    {P : WeightedPolynomialApproximationPackage}
    (B : WeightedBernsteinInequalityPackage P)
    (E : WeightedBernsteinInequalityEvidence B) :
    WeightedBernsteinInequalityClosed B := by
  exact And.intro E.derivativeBoundClosed
    (And.intro E.polynomialDegreeBoundClosed E.constantDependenceClosed)

end WeightedApproximationCanonicalLaneLean
end HautevilleHouse
