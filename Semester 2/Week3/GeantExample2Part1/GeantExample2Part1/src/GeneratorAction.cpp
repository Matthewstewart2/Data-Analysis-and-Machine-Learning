#include "GeneratorAction.h"

#include "G4ParticleTable.hh"
#include "G4SystemOfUnits.hh"
#include "g4csv.hh"

GeneratorAction::GeneratorAction() : G4VUserPrimaryGeneratorAction()
{
  G4int nofParticles = 1;
  m_particleGun = new G4ParticleGun( nofParticles );

  // Default particle
  G4ParticleDefinition * particleDefinition = G4ParticleTable::GetParticleTable()->FindParticle( "e-" );
  m_particleGun->SetParticleDefinition( particleDefinition );
  m_particleGun->SetParticlePosition( G4ThreeVector( 0.0, 0.0, -250.0*cm ) ); // right in the middle
  m_particleGun->SetParticleMomentumDirection( G4ThreeVector( 0.0, 0.0, 1.0 ) ); // along z axis
  // Chose new first energy
  m_particleGun->SetParticleEnergy( 100.0*MeV );
}

GeneratorAction::~GeneratorAction()
{
  delete m_particleGun;
}

// This function is called at the begining of event
void GeneratorAction::GeneratePrimaries( G4Event* anEvent )
{
  // Fire a particle
  m_particleGun->GeneratePrimaryVertex( anEvent );
  //particles_fired ++

  // Store truth information - first column
  auto analysisManager = G4AnalysisManager::Instance();
  G4double particleEnergy = m_particleGun->GetParticleEnergy();
  analysisManager->FillNtupleDColumn( 0, 0, particleEnergy );

  // New part here, increase energy by 200 MeV for next particleto be fired
  m_particleGun->SetParticleEnergy( particleEnergy+200*MeV );
  // Once fired a particle with 1900 MeV, reset energy to 100 MeV 
  if (particleEnergy > 1700*MeV )
  {
    m_particleGun->SetParticleEnergy( 100*MeV );
  }
}
