import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WeightedApproximationCanonicalLaneLean.WeightedJacksonTheorem

namespace HautevilleHouse
namespace WeightedApproximationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WeightFunctionClosed (A.object.space.weightFunction) ∧
  WeightedSobolevClosed (A.object.space.weightedSobolev) ∧
  WeightedBernsteinClosed (A.object.space.weightedBernstein) ∧
  WeightedJacksonClosed (A.object.space.weightedJackson)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  by
    -- Construct evidence from the admissible class fields
    have wfE : WeightFunctionEvidence (A.object.space.weightFunction) :=
      A.object.space.weightFunctionEvidence
    have wsE : WeightedSobolevEvidence (A.object.space.weightedSobolev) :=
      A.object.space.weightedSobolevEvidence
    have wbE : WeightedBernsteinEvidence (A.object.space.weightedBernstein) :=
      A.object.space.weightedBernsteinEvidence
    have wjE : WeightedJacksonEvidence (A.object.space.weightedJackson) :=
      A.object.space.weightedJacksonEvidence
    exact And.intro (weight_function_closed_from_evidence _ wfE)
      (And.intro (weighted_sobolev_closed_from_evidence _ wsE)
        (And.intro (weighted_bernstein_closed_from_evidence _ wbE)
          (weighted_jackson_closed_from_evidence _ wjE)))

end WeightedApproximationCanonicalLaneLean
end HautevilleHouse