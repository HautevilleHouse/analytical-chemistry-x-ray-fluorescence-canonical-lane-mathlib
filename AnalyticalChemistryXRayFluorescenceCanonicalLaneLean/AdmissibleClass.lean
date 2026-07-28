import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryXRayFluorescenceCanonicalLaneLean

structure XRFObject where
  element : String
  line : String
  energy : Float
  intensity : Float

structure XRFSubstrate where
  excitationEnergy : Float
  detectionLimit : Float

structure AdmittedXRFObject where
  object : XRFObject
  substrate : XRFSubstrate
  operatorModelChecked : Prop
  operatorModelWitness : operatorModelChecked
  spectralPersistenceBridgeChecked : Prop
  spectralPersistenceBridgeWitness : spectralPersistenceBridgeChecked
  sourceBoundaryLedgerChecked : Prop
  sourceBoundaryLedgerWitness : sourceBoundaryLedgerChecked
  classicalRemainderCarried : formalizationCertificate.sourceConjectureClosureClaimed = false
  sourceKeyChecked : object.element = "Fe"
  theoremObjectChecked : object.line = "Kα"

structure AdmissibleClass where
  object : AdmittedXRFObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end AnalyticalChemistryXRayFluorescenceCanonicalLaneLean
end HautevilleHouse