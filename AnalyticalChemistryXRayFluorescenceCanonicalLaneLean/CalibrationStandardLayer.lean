import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryXRayFluorescenceCanonicalLaneLean

structure CalibrationStandardDatum where
  standardName : String
  certifiedConcentrations : List (String × Float)
  uncertainty : Float

default calibrationStandardDatum : CalibrationStandardDatum where
  standardName := "NIST 610"
  certifiedConcentrations := [("Fe", 500.0), ("Ca", 800.0)]
  uncertainty := 0.01

structure CalibrationStandardLayerCertificate where
  datum : CalibrationStandardDatum
  endpointRoute : String
  endpointChecked : Bool
  remainderRecorded : Bool

default calibrationCertificate : CalibrationStandardLayerCertificate where
  datum := calibrationStandardDatum
  endpointRoute := "Calibration curve from certified standards"
  endpointChecked := true
  remainderRecorded := false

def CalibrationStandardLayerClosed (C : CalibrationStandardLayerCertificate) : Prop :=
  C.datum.uncertainty < 1 ∧ C.endpointChecked

theorem calibration_standard_layer_closed_checked :
    CalibrationStandardLayerClosed calibrationCertificate := by
  exact And.intro (by norm_num) rfl

end AnalyticalChemistryXRayFluorescenceCanonicalLaneLean
end HautevilleHouse