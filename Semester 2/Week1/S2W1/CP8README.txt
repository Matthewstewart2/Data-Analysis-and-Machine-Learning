s1739768 DAML CP8 README

For part 1 'Testing the interface', I am only submitting the image from the Geant4 GUI.
I did not edit any of the C++ code for part 1 as the seed was already set to 1234 and
all my input was within the Geant4 GUI.

For part 2 'Outputting some data', you should see the src folder. This contains edited
versions of the C++ files in the GeantExample1Part2/src folder given to us. I added a
sphere named 'test' from the lecture slides by basically duplicating what was already
written for the 'shield' tube. Ran it once to create all the '...output...' csv's and
histograms. Then changed the thickness of shield from 2.0cm to 3.0cm and re-ran after
editing it to write to '...output2...' csv's and histograms. The Jupyter notebook only
reads from the ntuple csv's for its calculations but I have included all the other outputs
too including the histograms. Seed 1234 was used again and I have left in the vis.mac
file as I did edit that too, just to make the new sphere red.

Thanks. 