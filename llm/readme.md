# Setup
```sh
sudo apt install python3 # install python
sudo apt install python3.12-venv # instsll venv
```

## setup project
```sh
rm -rf venv # delete venv if it exists
python3 -m venv venv # create venv
source venv/bin/activate # activate venv
python3 -m pip install ipykernel # -U --user --force-reinstall
pip install -r requirements.txt # install all the modules from the requirement.txt 
pip install [NAME_OF_MODULE] # install a module 
pip freeze > requirements.txt # create/update requirement.txt file with the existing modules
clear && python3 main.py # clear and run the python module
deactivate # deactivate venv
```

## instal and run jupyter notebook
```sh
python3 -m pip install --upgrade pip # Upgrade pip
pip install notebook # Install Jupyter Notebook
jupyter notebook # opens a browser window at http://localhost:8888
```

