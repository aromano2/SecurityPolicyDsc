$USR_Policy    = New-xDscResourceProperty -Name Policy -Type String -Attribute Key -Description "The policy name of the user right assignment to be configured." -ValidateSet 'Create_a_token_object','Access_this_computer_from_the_network','Change_the_system_time','Deny_log_on_as_a_batch_job','Deny_log_on_through_Remote_Desktop_Services','Create_global_object','Remove_computer_from_docking_station','Deny_access_to_this_computer_form_the_network','Act_as_part_of_the_operating_system','Modify_firmware_environment_values','Deny_log_on_locally','Access_Credential_Manager_as_a_trusted_caller','Restore_files_and_directories','Change_the_time_zone','Replace_a_process_level_token','Manage_auditing_and_security_log','Create_symbolic_links','Modify_an_object_label','Enable_computer_and_user_accounts_to_be_trusted_for_delegation','Generate_security_audits','Increase_a_process_working_set','Take_ownership_of_files_or_other_objects','Bypass_traverse_checking','Log_on_as_a_service','Shut_down_the_system','Lock_pages_in_memory','Impersonate_a_client_after_authentication','Profile_system_performance','Debug_programs','Profile_single_process','Allow_log_on_through_Remote_Desktop_Services','Allow_log_on_locally','Increase_scheduling_priority','Synchronize_directory_service_data','Add_workstations_to_domain','Adjust_memory_quotas_for_a_process','Perform_volume_maintenance_tasks','Load_and_unload_device_drivers','Force_shutdown_from_a_remote_system','Back_up_files_and_directories','Create_a_pagefile','Deny_log_on_as_a_service','Log_on_as_a_batch_job','Create_permanent_shared_objects'
$USR_Identity  = New-xDscResourceProperty -Name Identity -Type String[] -Attribute Required -Description "The identity of the user or group to be added or or removed from the user right assignment."
$USR_DesiredId = New-xDscResourceProperty -Name ActualIdentity -Type String -Attribute Read -Description "Value contains the actual Identities that have been granted rights to a user rights assignment."

$URSParameters = @{
    Name = 'MSFT_UserRightsAssignment'
    Property = $USR_Policy,$USR_Identity,$USR_DesiredId
    FriendlyName = 'UserRightsAssignment'
    ModuleName = 'SeceditDSC'
    Path = 'C:\Program Files\WindowsPowerShell\Modules\'
}

New-xDscResource @URSParameters