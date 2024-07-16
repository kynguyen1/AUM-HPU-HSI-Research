# AUM-HPU-HSI-Research
Modified DeepHyperX toolbox including the threeLayer Model

In order to run the code you need to build a container using one of the two definition files located in the ```definition_files``` folder. 
  1) The definition file **test_computeNode.def** is for building a container without internet connection in the node.
  2) The definition file **internetAccessRequired.def** is for building a container with internet connection in the node. 

For building a container without internet use: 

  ```apptainer build test_computeNode.sif test_computeNode.def```

  For building a container with internet use: 

  ```apptainer build internetAccessRequired.sif internetAccessRequired.def```

  To run the container from the compute (CPU) nodes using the command line use:

  ```apptainer exec --bind ./data:/mnt,./:/images test_computeNode.sif conda run -n myenv python /workspace/main.py --model nn --dataset AUM --training_sample 0.95 --runs 1 > nn_1_AUM_0.95.txt```

  


  
