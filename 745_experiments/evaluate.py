import subprocess
import time
import re
import sys

# Base names of executables
base_executables = ["no_opt", "unroll_and_jam", "orio_sr", "alg1_sr"]

# Function to parse execution time from the output
def parse_execution_time(output):
    match = re.search(r"Execution time: (\d+) ns", output)
    if match:
        return int(match.group(1))
    return None

# Function to run an executable for a specified duration and calculate the minimum runtime
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

    # Return the minimum runtime in nanoseconds
    if execution_times:
        return min(execution_times)
    else:
        return None

# Main script logic
if __name__ == "__main__":
    # Ensure a version number is provided
    if len(sys.argv) < 2:
        print("Usage: python3 evaluate.py <version>")
        sys.exit(1)

    version = sys.argv[1]  # The version number (e.g., "1" for "o1")
    executables = [f"{base}{version}" for base in base_executables]  # Append version to base names

    # Warmup phase
    print("Warming up...")
    for exe in executables:
        measure_executable(exe, duration=1)  # Warmup by running each executable for 1 second
        print(f"Warmup complete for {exe}")

    # Trial phase
    print("\nRunning 5 trials, each including all executables...")
    for trial in range(1, 6):
        print(f"Trial {trial}:")
        for exe in executables:
            min_runtime = measure_executable(exe, duration=2)  # Run each executable for 2 seconds
            if min_runtime is not None:
                print(f"  {exe}\t {min_runtime} ns")
            else:
                print(f"  {exe}\t Failed to measure runtime")

