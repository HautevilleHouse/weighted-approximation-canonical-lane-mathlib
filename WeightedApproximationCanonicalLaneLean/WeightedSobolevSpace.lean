import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WeightedApproximationCanonicalLaneLean.WeightFunctionSpace

namespace HautevilleHouse
namespace WeightedApproximationCanonicalLaneLean

structure WeightedSobolevPackage {W : WeightFunctionPackage} where
  exponent : ℝ
  exponentGtOne : exponent > 1
  weightedNormDefined : Prop
  completenessProved : Prop

structure WeightedSobolevEvidence {W : WeightFunctionPackage}
    (S : WeightedSobolevPackage W) where
  weightedNormDefinedClosed : S.weightedNormDefined
  completenessProvedClosed : S.completenessProved

def WeightedSobolevClosed {W : WeightFunctionPackage} (S : WeightedSobolevPackage W) : Prop :=
  S.weightedNormDefined ∧ S.completenessProved

theorem weighted_sobolev_closed_from_evidence {W : WeightFunctionPackage}
    (S : WeightedSobolevPackage W) (E : WeightedSobolevEvidence S) :
    WeightedSobolevClosed S :=
  And.intro E.weightedNormDefinedClosed E.completenessProvedClosed

end WeightedApproximationCanonicalLaneLean
end HautevilleHouse