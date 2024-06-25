# AUM-HPU-HSI-Research
Modified DeepHyperX toolbox including the threeLayer Model

Inorder to run the code you need to build a container using one of the two definition files in the *definition_files* folder. 
  1) The definition file **test_computeNode.def** is for building a container without internet connection in the node.
  2) The definition file **internetAccessRequired.def** is for building a container with internet in the node. 

For building the container without internet use: 
  ```apptainer build test_computeNode.sif test_computeNode.def```
