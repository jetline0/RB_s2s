import subprocess
import time
import re
import random

# List of executables
executables = ["no_opt", "unroll_and_jam", "orio_sr", "alg1_sr"]

# Function to parse execution time from the output
def parse_execution_time(output):
    match = re.search(r"Execution time: (\d+) ns", output)
    if match:
        return int(match.group(1))
    return None

# Function to run an executable for one minute and calculate the average runtime
def measure_executable(executable, duration=2):
    start_time = time.time()
    execution_times = []

    while time.time() - start_time < duration:
        try:
            # Run the executable and capture its output
            result = subprocess.run(f"./{executable}", shell=True, text=True, capture_output=True)
            output = result.stdout

            # Parse the execution time from the output
            exec_time = parse_execution_time(output)
            if exec_time is not None:
                execution_times.append(exec_time)
        except Exception as e:
            print(f"Error running {executable}: {e}")
            continue

    # Calculate the average runtime in milliseconds
    if execution_times:
        return min(execution_times) 
#       avg_time_ns = sum(execution_times) / len(execution_times)
#       avg_time_ms = avg_time_ns / 1_000_000
#       return avg_time_ms
    else:
        return None

# Main script logic
if __name__ == "__main__":
    results = {}

    print("Warming up...")
    for exe in random.sample(executables, len(executables)):
#       print(f"Running {exe} for 2 seconds...")
        min_time = measure_executable(exe)
#       if min_time is not None:
#           results[exe] = min_time
#           print(f"Min runtime for {exe}: {min_time:.2f} ns")
#       else:
#           print(f"Failed to measure runtime for {exe}")

    print("Measuring execution times for each executable...")
    for exe in random.sample(executables, len(executables)):
        print(f"Running {exe} for 2 seconds...")
        min_time = measure_executable(exe)
        if min_time is not None:
            results[exe] = min_time
            print(f"Min runtime for {exe}: {min_time:.2f} ns")
        else:
            print(f"Failed to measure runtime for {exe}")

    print("\nComparison of execution times:")
    sorted_results = sorted(results.items(), key=lambda x: x[1])
    for exe, min_time in sorted_results:
        print(f"{exe}: {min_time:.2f} ns")

