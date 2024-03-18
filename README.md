The detection of traffic signs is crucial for Autonomous Vehicles (AVs) to ensure safe and efficient navigation. While Deep Neural Network (DNN)-based systems have been instrumental in developing AV perception systems, they are susceptible to adversarial attacks due to their reliance on pixel-level features. This vulnerability can lead to misclassification of traffic signs, posing a significant risk to road safety.

To address this issue, we propose a logic-based compositional learning approach employing Neural-Symbolic (NS) techniques for traffic sign detection. Our methodology decomposes the detection task into sub-tasks corresponding to individual sign features, such as shape and text, to enhance robustness and generalization.

Methodology
Feature Extraction
We extract high-level features using OpenCV and Neural Networks (NN), focusing on shape and text characteristics of traffic signs.

Neural-Symbolic Learning
We utilize an Inductive Logic Programming (ILP) engine to learn and combine these features in a logic-based compositional manner. This approach enables our model to capture features and their relationships, enhancing its ability to generalize to new and unseen traffic signs.

Advantages
Robustness: The compositional learning approach enhances robustness against adversarial attacks by combining multiple features.
Generalization: By capturing relationships between features, our model can generalize effectively to various contexts and configurations of traffic signs.
Explainability: The use of logic-based learning facilitates model interpretability, aiding in debugging AV systems.
Evaluation
We evaluated the robustness of our approach by subjecting it to two different adversarial attacks. Our research demonstrates that the proposed ILP-based technique accurately detects targeted stop signs even under adversarial conditions.

Usage

Feature Extraction: open the STOP.ipynb file and execute it. This notebook is designed to extract features from a folder containing traffic sign images. It will generate a text file containing the extracted features.

Training the ILP System: once you have the extracted features in the text file, use the provided train.pl script to execute rules based on the features. You also need to provide a couple of positive and negative examples to the ILP system. This will train the Inductive Logic Programming (ILP) system to learn and combine the features for traffic sign detection.
Testing:

Before testing, ensure you have extracted features of an unseen traffic sign. This can be done by following a similar process as in step 1 but using the unseen traffic sign images.
With the trained ILP system and the extracted features of the unseen traffic sign, you can now apply the learned rules for traffic sign recognition on the unseen data.


If you find this work useful in your research, please consider citing:

[@inproceedings{chaghazardi2023logic,
  title={A Logic-based Compositional Generalisation Approach for Robust Traffic Sign Detection},
  author={Chaghazardi, Zahra and Fallah, Saber and others},
  booktitle={International Joint Conference on Artificial Intelligence 2023 Workshop on Knowledge-Based Compositional Generalization},
  year={2023}
}]

