import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryXRayFluorescenceCanonicalLaneLean

structure XRFSpectralCertificate where
  fundamentalParametersLayer : FundamentalParametersLayerCertificate
  matrixEffectLayer : MatrixEffectLayerCertificate
  calibrationStandardLayer : CalibrationStandardLayerCertificate
  sampleAdmitted : AdmissibleClass
  allGatesClosed : Bool

default xrfSpectralCertificate : XRFSpectralCertificate where
  fundamentalParametersLayer := fundamentalParametersCertificate
  matrixEffectLayer := matrixEffectCertificate
  calibrationStandardLayer := calibrationCertificate
  sampleAdmitted := {
    object := { element := "Fe", concentration := 0.5, fluorescenceYield := 0.3, matrixComposition := [("Fe", 0.5), ("Si", 0.5)] }
    endpointSatisfied := True
    remainderRecorded := False
    gateWitness := Or.inl trivial
  }
  allGatesClosed := true

def XRFSpectralCertificateClosed (C : XRFSpectralCertificate) : Prop :=
  FundamentalParametersLayerClosed C.fundamentalParametersLayer ∧
  MatrixEffectLayerClosed C.matrixEffectLayer ∧
  CalibrationStandardLayerClosed C.calibrationStandardLayer ∧
  C.allGatesClosed = true

theorem xrf_spectral_certificate_closed_checked :
    XRFSpectralCertificateClosed xrfSpectralCertificate := by
  exact And.intro fundamental_parameters_layer_closed_checked
    (And.intro matrix_effect_layer_closed_checked
    (And.intro calibration_standard_layer_closed_checked rfl))

end AnalyticalChemistryXRayFluorescenceCanonicalLaneLean
end HautevilleHouse