import WeightedApproximationCanonicalLaneLean.WeightedApproximationAdmissibleClass

namespace HautevilleHouse
namespace WeightedApproximationCanonicalLaneLean

structure WeierstrassWeightedPackage (A : AdmissibleWeightedClass) where
  polynomialDensity : Prop
  weightedUniformApproximation : Prop
  closureProperty : Prop

structure WeierstrassWeightedEvidence (A : AdmissibleWeightedClass) (P : WeierstrassWeightedPackage A) where
  polynomialDensityClosed : P.polynomialDensity
  weightedUniformApproximationClosed : P.weightedUniformApproximation
  closurePropertyClosed : P.closureProperty

def WeierstrassWeightedClosed (A : AdmissibleWeightedClass) (P : WeierstrassWeightedPackage A) : Prop :=
  P.polynomialDensity ∧ P.weightedUniformApproximation ∧ P.closureProperty

theorem weierstrass_weighted_closed_from_evidence (A : AdmissibleWeightedClass) (P : WeierstrassWeightedPackage A) (E : WeierstrassWeightedEvidence A P) : WeierstrassWeightedClosed A P :=
  by
    exact And.intro E.polynomialDensityClosed (And.intro E.weightedUniformApproximationClosed E.closurePropertyClosed)

end WeightedApproximationCanonicalLaneLean
end HautevilleHouse