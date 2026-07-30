import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WeightedApproximationCanonicalLaneLean.WeightedApproximationCore

namespace HautevilleHouse
namespace WeightedApproximationCanonicalLaneLean

structure WeightedPolynomialApproximationPackage where
  polynomialDegree : ℕ
  weightFunction : Type u
  weightedNorm : Type v
  bestApproximationExists : Prop
  uniquenessConditions : Prop
  errorBound : Prop

structure WeightedPolynomialApproximationEvidence
    (P : WeightedPolynomialApproximationPackage) where
  bestApproximationExistsClosed : P.bestApproximationExists
  uniquenessConditionsClosed : P.uniquenessConditions
  errorBoundClosed : P.errorBound

def WeightedPolynomialApproximationClosed
    (P : WeightedPolynomialApproximationPackage) : Prop :=
  P.bestApproximationExists ∧ P.uniquenessConditions ∧ P.errorBound

theorem weighted_polynomial_approximation_closed_from_evidence
    (P : WeightedPolynomialApproximationPackage)
    (E : WeightedPolynomialApproximationEvidence P) :
    WeightedPolynomialApproximationClosed P := by
  exact And.intro E.bestApproximationExistsClosed
    (And.intro E.uniquenessConditionsClosed E.errorBoundClosed)

end WeightedApproximationCanonicalLaneLean
end HautevilleHouse
