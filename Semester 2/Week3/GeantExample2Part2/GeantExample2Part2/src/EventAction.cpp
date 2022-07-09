#include "EventAction.h"

#include "g4csv.hh"
#include "G4VProcess.hh"

EventAction::EventAction()
{
}

EventAction::~EventAction()
{
}

void EventAction::BeginOfEventAction( const G4Event* )
{
  m_graphEdges.clear();
  //m_bremPhotons.clear();
  // Clear new set
  m_convPositrons.clear();
  m_allParticles.clear();
}

void EventAction::EndOfEventAction( const G4Event* )
{
  // Finish the ntuple row
  auto analysisManager = G4AnalysisManager::Instance();
  analysisManager->AddNtupleRow( 0 );

  // Print track history graph - very large!
  //for ( auto edge : m_graphEdges )
  //{
  //  std::cout << edge.first << "," << edge.second << std::endl;
  //}

  // Print particle totals
  std::cout << "Total particles in the event: " << m_allParticles.size() << std::endl;
  //std::cout << "Photons produced from electron Bremsstrahlung: " << m_bremPhotons.size() << std::endl;
  // New printout for positrons created by photon conversion
  std::cout << "Positrons produced from photon conversion: " << m_convPositrons.size() << std::endl;
}

void EventAction::RecordParticleData( const G4Step* step )
{
  // Get the track that this step belongs to
  G4Track * track = step->GetTrack();

  // Get the type of particle that made this track
  std::string particle = track->GetParticleDefinition()->GetParticleName();

  // Find out how the track was created
  // have to check if the pointer is valid: it doesn't exist for intermediate steps
  /*
  if ( track->GetCreatorProcess() )
  {
    std::string creator = track->GetCreatorProcess()->GetProcessName();
    // Choose creator process and particle type to record
    if ( creator == "eBrem" && particle == "gamma" )
    {
      // Use a set so that track IDs are only stored once
      m_bremPhotons.insert( track->GetTrackID() );
    }
  }
  */
  // New counting criteria
  if ( track->GetCreatorProcess() )
  {
    std::string creator = track->GetCreatorProcess()->GetProcessName();
    // Choose creator process and particle type to record
    if ( creator == "conv" && particle == "e+" )
    {
      // Use a set so that track IDs are only stored once
      m_convPositrons.insert( track->GetTrackID() );
    }
  }

  // Collect all unique particle IDs
  m_allParticles.insert( track->GetTrackID() );

  // Make a graph edge connecting a new track ID to its parent
  std::pair< int, int > edge = std::make_pair( track->GetParentID(), track->GetTrackID() );
  m_graphEdges.insert( edge );
}
