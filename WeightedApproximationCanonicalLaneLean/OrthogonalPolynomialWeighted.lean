import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeightedApproximationCanonicalLaneLean

structure OrthogonalPolynomialWeighted where
  weight : ℝ → ℝ
  innerProduct : (ℝ → ℝ) → (ℝ → ℝ) → ℝ
  orthogonalPolynomials : ℕ → ℝ → ℝ
  orthogonalityRelation : Prop
  recurrenceRelation : Prop

structure OrthogonalPolynomialWeightedEvidence (O : OrthogonalPolynomialWeighted) where
  orthogonalityClosed : O.orthogonalityRelation
  recurrenceClosed : O.recurrenceRelation

def OrthogonalPolynomialWeightedClosed (O : OrthogonalPolynomialWeighted) : Prop :=
  O.orthogonalityRelation ∧ O.recurrenceRelation

theorem orthogonal_polynomial_weighted_closed_from_evidence
    (O : OrthogonalPolynomialWeighted) (E : OrthogonalPolynomialWeightedEvidence O) :
    OrthogonalPolynomialWeightedClosed O := by
  exact And.intro E.orthogonalityClosed E.recurrenceClosed

end WeightedApproximationCanonicalLaneLean
end HautevilleHouse