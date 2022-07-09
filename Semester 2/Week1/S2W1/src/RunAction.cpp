#include "RunAction.h"

#include "G4SystemOfUnits.hh"
#include "g4csv.hh"

RunAction::RunAction() : G4UserRunAction()
{
  // Create analysis manager
  auto analysisManager = G4AnalysisManager::Instance();

  // Add histograms to analysis (100 bins from 0 to 500 MeV)
  analysisManager->CreateH1( "Shield", "Shield deposited energy", 100, 0.0, 500.0*MeV ); // histogram id 0
  // Next histogram will have id 1

  // Render the histograms in a .ps file
  analysisManager->SetH1Plotting( 0, true ); // set histogram id 0 to be plotted

  // Add an ntuple for Shield energy deposits
  analysisManager->CreateNtuple( "Shield", "Shield deposited energy" ); // ntuple id 0
  analysisManager->CreateNtupleDColumn( "Shield" ); // column id 0
  // Next column will have id 1
  analysisManager->FinishNtuple();
  // Next ntuple will have id 1

  // Add histograms to analysis (100 bins from 0 to 500 MeV)
  analysisManager->CreateH1( "test", "test deposited energy", 100, 0.0, 500.0*MeV ); // histogram id 1
  // Next histogram will have id 1

  // Render the histograms in a .ps file
  analysisManager->SetH1Plotting( 1, true ); // set histogram id 0 to be plotted

  // Add an ntuple for test energy deposits
  analysisManager->CreateNtuple( "test", "test deposited energy" ); // ntuple id 1
  analysisManager->CreateNtupleDColumn( "test" ); // column id 1
  // Next column will have id 2
  analysisManager->FinishNtuple();
  // Next ntuple will have id 2
}

RunAction::~RunAction()
{
  // Delete analysis manager
  delete G4AnalysisManager::Instance();
}

void RunAction::BeginOfRunAction( const G4Run* )
{
  // Get analysis manager
  auto analysisManager = G4AnalysisManager::Instance();

  // Open an output file
  analysisManager->OpenFile( "output2.csv" );
}

void RunAction::EndOfRunAction( const G4Run* )
{
  // Get analysis manager
  auto analysisManager = G4AnalysisManager::Instance();

  // Save output data
  analysisManager->Write();
  analysisManager->CloseFile();
}
