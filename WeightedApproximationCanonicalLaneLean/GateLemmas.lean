import WeightedApproximationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace WeightedApproximationCanonicalLaneLean

def WeightedGateClosed (A : AdmissibleWeightedClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_weighted_class (A : AdmissibleWeightedClass) : WeightedGateClosed A :=
  A.gateWitness

end WeightedApproximationCanonicalLaneLean
end HautevilleHouse