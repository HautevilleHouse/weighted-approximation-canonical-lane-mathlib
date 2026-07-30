import WeightedApproximationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace WeightedApproximationCanonicalLaneLean

structure AdmissibleClass where
  object : WeightedAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  WeightedWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end WeightedApproximationCanonicalLaneLean
end HautevilleHouse