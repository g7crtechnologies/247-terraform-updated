import json
import os
from jinja2 import Environment, FileSystemLoader

# Determine the current script directory
script_dir = os.path.dirname(os.path.abspath(__file__))

# Set up the template environment
environment = Environment(loader=FileSystemLoader(script_dir))
template = environment.get_template("template.jinja2")

input_file = os.path.join(script_dir, "tfvars.json")

with open(input_file) as file:
    input_data = json.load(file)

component_name = input_data["component"]
product = input_data["product"]
env = input_data["env"]
location = input_data["location"]
enable_zone = input_data["enable_zone"]

# Set enable_zone and region_suffix based on the location
if location == "eastus":
    region_suffix = "eu"
else:
    region_suffix = "wu"

# Update the input data with the new values
input_data["enable_zone"] = enable_zone
input_data["region_suffix"] = region_suffix

# Construct the output file name
output_file_name = f"terraform_{env}_{region_suffix}.tfvars"
output_file_path = os.path.join(
    script_dir, product, component_name, output_file_name)

# Ensure the directory for the output file exists
os.makedirs(os.path.dirname(output_file_path), exist_ok=True)

# Render the template with the input data
content = template.render(input_data)

# Write the rendered content to the output file
with open(output_file_path, mode="w", encoding="utf-8") as message:
    message.write(content)

# Write the updated JSON data back to the file
with open(input_file, "w") as file:
    json.dump(input_data, file, indent=4)

# Display a message indicating the file creation
print(f"The file '{output_file_name}' has been created successfully!")