#include "EnergyCounter.h"

#include "g4csv.hh"

EnergyCounter::EnergyCounter( const G4String& name, const G4int id )
  : G4VSensitiveDetector( name ) // Run the constructor of the parent class
{
  // Store the ID number
  m_ID = id;
}

EnergyCounter::~EnergyCounter()
{
}

// At the start of the event, zero the energy counter
void EnergyCounter::Initialize( G4HCofThisEvent* )
{
  m_totalEnergy = 0.0;
}

// Analyse anything that hits the detector
G4bool EnergyCounter::ProcessHits( G4Step* step, G4TouchableHistory* )
{
  // Get the energy deposited by this hit
  G4double edep = step->GetTotalEnergyDeposit();

  // Display the hit
  G4cout << this->GetName() << " hit energy = " << edep << G4endl;

  // Add to the total energy in this object
  m_totalEnergy += edep;

  return true;
}

// At the end of an event, store the energy collected in this detector
void EnergyCounter::EndOfEvent( G4HCofThisEvent* )
{
  // Display the total
  G4cout << this->GetName() << " total energy = " << m_totalEnergy << G4endl;

  // Get the analysis manager
  auto analysisManager = G4AnalysisManager::Instance();

  // Fill histogram with corresponding ID number
  analysisManager->FillH1( m_ID, m_totalEnergy );

  // Fill ntuple with corresponding ID number (use column 0 of the ntuple)
  analysisManager->FillNtupleDColumn( m_ID, 0, m_totalEnergy );
  analysisManager->AddNtupleRow( m_ID );
}
