import AnalyticalChemistryXRayFluorescenceCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnalyticalChemistryXRayFluorescenceCanonicalLaneLean

structure XRFSpectrum where
  element : String
  line : String
  energy : Float
  intensity : Float
  fwhm : Float

structure XRFSpectrumCertificate where
  spectrum : XRFSpectrum
  calibrationApplied : Bool
  backgroundSubtracted : Bool
  peakFitChecked : Bool

def primitiveXRFSpectrum : XRFSpectrum := {
  element := "Fe",
  line := "Kα",
  energy := 6.403,
  intensity := 1000.0,
  fwhm := 0.15
}

def xrfSpectrumCertificate : XRFSpectrumCertificate := {
  spectrum := primitiveXRFSpectrum,
  calibrationApplied := true,
  backgroundSubtracted := true,
  peakFitChecked := true
}

def XRFSpectrumClosed (C : XRFSpectrumCertificate) : Prop :=
  C.calibrationApplied ∧ C.backgroundSubtracted ∧ C.peakFitChecked

theorem xrf_spectrum_closed_checked : XRFSpectrumClosed xrfSpectrumCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end AnalyticalChemistryXRayFluorescenceCanonicalLaneLean
end HautevilleHouse