## site.pp ##

# Disable filebucket by default for all File resources:
File { backup => false }

node default {
  include profile::platform::baseline
  
  # Check if we've set the role for this node via trusted fact, pp_role.  If yes; include that role directly here.
  if $trusted['extensions']['pp_role'] {
    include $trusted['extensions']['pp_role']
  } else {
    notify { "No such role\n": }
  }
}

# Uncomment the line below to enable ServiceNow Node Classification
# include servicenow_cmdb_integration::classification
