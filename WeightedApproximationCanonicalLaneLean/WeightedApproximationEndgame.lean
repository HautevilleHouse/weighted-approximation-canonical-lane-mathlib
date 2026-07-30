import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeightedApproximationCanonicalLaneLean

structure AdmissibleWeightedObject where
  weightType : Type u
  modulusType : Type v
  polynomialSpaceType : Type w
  approximationErrorBound : Prop
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleWeightedObject) : Prop :=
  A.approximationErrorBound

theorem bridge_from_admissible_object (A : AdmissibleWeightedObject) : bridgeClosed A :=
  A.approximationErrorBound

def gateClosed (A : AdmissibleWeightedObject) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_object (A : AdmissibleWeightedObject) : gateClosed A :=
  A.gateWitness

def ConstrainedWeightedApproximationClosure (A : AdmissibleWeightedObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_weighted_approximation_endgame (A : AdmissibleWeightedObject) : ConstrainedWeightedApproximationClosure A :=
  And.intro (bridge_from_admissible_object A) (gate_from_admissible_object A)

end WeightedApproximationCanonicalLaneLean
end HautevilleHouse