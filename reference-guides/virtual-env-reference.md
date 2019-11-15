# Virtual Env Configuration

An easy way of configuring and ensuring your local Python dev env is locked into the version of your choosing.

---

## Configuration & Setup

1. Install `Python3`
2. Install a new `VirtualEnv` to contain all package dependencies:

```python
$ python3 -m venv <target-env-name>

# For example:
# $ python3 -m venv virtenv
```

3. Activate your new virtual environment:

```python
source env/bin/activate
```

If you would like to exit from your `vENV`:

```python
source env/bin/deactivate
```

---

## Usage

This presumes you're working with a Python project.

1. Clone your desired repository, and `cd` into it
2. Install the requirements:

```python
$ pip install -r requirements
```

Now each time you enable your `vENV`, you should have consistent versions and packages!
