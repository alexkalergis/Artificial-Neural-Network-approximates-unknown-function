# Artificial-Neural-Network-approximates-unknown-function

## Project Overview

The aim of this project is to approximate the function of a discrete dynamical system given by:

\[ x_{k+1} = f(x_k), \, x_0 \in [-2, 0, 1] \]

To achieve this, we will train a neural network using the data provided in the `data_NN.mat` file, which describes the behavior of the function.

## Steps

1. **Load Data**: Import the data from `data_NN.mat` which contains the input-output pairs representing the function's behavior.

2. **Preprocess Data**: Ensure the data is in a suitable format for training the neural network, including any necessary normalization or splitting into training and validation sets.

3. **Define Neural Network Architecture**: Choose an appropriate neural network architecture that can effectively model the discrete dynamical system. This may include deciding on the number of layers, neurons per layer, activation functions, etc.

4. **Train the Neural Network**: Use the training data to train the neural network. This involves selecting a suitable loss function, optimizer, and training parameters.

5. **Evaluate the Model**: Assess the performance of the trained neural network on the validation set to ensure it approximates the function accurately.

6. **Fine-tune the Model**: If necessary, adjust the neural network architecture or training parameters and retrain the model to improve performance.

7. **Save the Model**: Once the neural network is trained and validated, save the model for future use.

8. **Document the Process**: Maintain detailed documentation of the steps taken, including any challenges encountered and how they were addressed, to ensure reproducibility and clarity.

## Files

- **data_NN.mat**: Contains the dataset used for training and validating the neural network.

## Usage

To run the project, follow these steps:

1. Load the data from `data_NN.mat`.
2. Preprocess the data.
3. Define and configure the neural network.
4. Train the neural network using the processed data.
5. Evaluate and fine-tune the model as needed.
6. Save the trained model for future use.

---

## Neural Network Architecture
![image](https://github.com/alexkalergis/Artificial-Neural-Network-approximates-unknown-function/assets/105602973/8b9770e5-157a-4d88-b1fd-50ec24f23472)
