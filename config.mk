# If you don't plan on having different build modes then just comment
# below or set it to empty.
BUILD_MODE := $(or $(BUILD_MODE), release)

# Make the compiler invocation lines verbose - if it is not defined or
# set to value other then "true" you'll see just indication of what is
# being compiled (without details about options)
VERBOSE := false

# Uncomment if you don't like coloring of the output
COLOR_TTY := true