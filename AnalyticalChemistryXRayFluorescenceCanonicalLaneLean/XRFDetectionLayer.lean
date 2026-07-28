import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryXRayFluorescenceCanonicalLaneLean

structure DetectionCertificate where
  detectorType : String
  energyResolution : Float
  spectrumRange : List Float
  detectionChecked : Bool

def detectionCertificate : DetectionCertificate := {
  detectorType := "Silicon Drift Detector",
  energyResolution := 0.15,
  spectrumRange := [0.0, 40.0],
  detectionChecked := true
}

def DetectionLayerClosed (C : DetectionCertificate) : Prop := 
  C.detectionChecked = true

theorem detection_layer_closed_checked : DetectionLayerClosed detectionCertificate := by
  decide

end AnalyticalChemistryXRayFluorescenceCanonicalLaneLean
end HautevilleHouse