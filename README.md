# IRIS Model Serving

This repo gives a simple example of serving a dockerised AI model.

Sklearn iris data set is used for training a model - https://scikit-learn.org/stable/auto_examples/datasets/plot_iris_dataset.html
The model subsequently is saved and loaded for serving using python lib pickle - https://docs.python.org/3/library/pickle.html

### How to try this?
- Create a docker image `docker build -t iris-docker-app .`
- Create a container with this image `docker run -p 3456:80 iris-docker-app`
- The model will be served at `0.0.0.0:3456`.
- Use the following curl to test the model
  ```
  curl --request POST \
  --url http://0.0.0.0:3456/predict \
  --header 'Content-Type: application/json' \
  --data '[5,7.0,3,7.8]'
  ```

