import WeightedApproximationCanonicalLaneLean.WeightedApproximationAdmissibleClass

namespace HautevilleHouse
namespace WeightedApproximationCanonicalLaneLean

structure JacksonWeightedPackage (A : AdmissibleWeightedClass) where
  smoothnessClass : Prop
  degreeEstimate : Prop
  weightedErrorBound : Prop

structure JacksonWeightedEvidence (A : AdmissibleWeightedClass) (J : JacksonWeightedPackage A) where
  smoothnessClassClosed : J.smoothnessClass
  degreeEstimateClosed : J.degreeEstimate
  weightedErrorBoundClosed : J.weightedErrorBound

def JacksonWeightedClosed (A : AdmissibleWeightedClass) (J : JacksonWeightedPackage A) : Prop :=
  J.smoothnessClass ∧ J.degreeEstimate ∧ J.weightedErrorBound

theorem jackson_weighted_closed_from_evidence (A : AdmissibleWeightedClass) (J : JacksonWeightedPackage A) (E : JacksonWeightedEvidence A J) : JacksonWeightedClosed A J :=
  by
    exact And.intro E.smoothnessClassClosed (And.intro E.degreeEstimateClosed E.weightedErrorBoundClosed)

end WeightedApproximationCanonicalLaneLean
end HautevilleHouse