def read_test_data_from_file(file_path):
    try:
        with open(file_path, 'r') as file:
            data = file.read()
        return data
    except Exception as e:
        raise RuntimeError(f"Failed to read test data from file: {file_path}. Error: {str(e)}")
