prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.2'
,p_default_workspace_id=>9208219036784281733
,p_default_application_id=>129895
,p_default_id_offset=>0
,p_default_owner=>'WKSP_TUTORIALAPEXYT'
);
end;
/
 
prompt APPLICATION 129895 - Serwis samochodowy
--
-- Application Export:
--   Application:     129895
--   Name:            Serwis samochodowy
--   Date and Time:   00:49 Tuesday April 1, 2025
--   Exported By:     KAHELATA@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     36
--       Items:                   67
--       Validations:             14
--       Processes:               33
--       Regions:                 81
--       Buttons:                 63
--       Dynamic Actions:         26
--     Shared Components:
--       Logic:
--         App Settings:           2
--         Build Options:         10
--       Navigation:
--         Lists:                 10
--         Breadcrumbs:            1
--           Entries:              8
--       Security:
--         Authentication:         2
--         Authorization:          4
--         ACL Roles:              3
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                  12
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--         Templates:              1
--     Supporting Objects:  Included
--   Version:         24.2.2
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_TUTORIALAPEXYT')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Serwis samochodowy')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'SERWIS-SAMOCHODOWY')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'1D8A064652ED6C63854D6D893A4EB63872136C9A6049D1FD34977289D5ACA054'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'21.2'
,p_flow_language=>'pl'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DD-MON-YYYY HH24:MI'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(22134088693610213227)
,p_application_tab_set=>1
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.1'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T:W'
,p_security_scheme=>wwv_flow_imp.id(36003491634580539898)
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Serwis samochodowy'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>76
,p_version_scn=>15615423813371
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_apple_status_bar_style=>'default'
,p_pwa_is_push_enabled=>'Y'
,p_pwa_push_credential_id=>wwv_flow_imp.id(22134625729995214745)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(129895)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN20020:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(22134089573631213227)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--styleA'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(22134379510038213442)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/credentials/app_129895_push_notifications_credentials_2
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(22134625729995214745)
,p_name=>'App 129895 Push Notifications Credentials (2)'
,p_static_id=>'App_129895_Push_Notifications_Credentials_2_'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(22134089573631213227)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>15567095912288
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22134393415163213460)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('Strona g\0142\00F3wna')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22596439121840956503)
,p_list_item_display_sequence=>11
,p_list_item_link_text=>unistr('Baza klient\00F3w')
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user'
,p_security_scheme=>wwv_flow_imp.id(22134384889557213450)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22178455197601034246)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Dodaj klienta'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-check'
,p_parent_list_item_id=>wwv_flow_imp.id(22596439121840956503)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(27412171704811550185)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>unistr('Wizyty klient\00F3w')
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-user'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6,11'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(27432634332948794281)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Kalendarz wizyt'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-calendar-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(37282367746252716855)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>unistr('Wysy\0142ka e-mail')
,p_list_item_link_target=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-envelope'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22134598721396214296)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administracja'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(22134384660586213450)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31633925755211955682)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>unistr('Dodanie us\0142ugi')
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-plus'
,p_parent_list_item_id=>wwv_flow_imp.id(22134598721396214296)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4,8'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(22134379510038213442)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>15561402892177
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22134594994978214293)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Install App'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22134595300981214294)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10050:&APP_SESSION.::&DEBUG.:RP,10050:P10050_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-comment-o'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'apex_util.feedback_enabled'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(22134382167433213448)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22134595696171214294)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'About'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(22134382660403213448)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22134596185351214294)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Help'
,p_list_item_link_target=>'f?p=&APP_ID.:10061:&APP_SESSION.::&DEBUG.::P10061_PAGE_ID:&APP_PAGE_ID.'
,p_list_item_icon=>'fa-question-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(22134595696171214294)
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_imp.id(22134382660403213448)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22134596530115214295)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(22134595696171214294)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22134596983762214295)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'About Page'
,p_list_item_link_target=>'f?p=&APP_ID.:10060:&APP_SESSION.::&DEBUG.:10060::'
,p_list_item_icon=>'fa-info-circle-o'
,p_parent_list_item_id=>wwv_flow_imp.id(22134595696171214294)
,p_required_patch=>wwv_flow_imp.id(22134382660403213448)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22134597236631214295)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22134625497869214745)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Settings'
,p_list_item_link_target=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-gear'
,p_parent_list_item_id=>wwv_flow_imp.id(22134597236631214295)
,p_required_patch=>wwv_flow_imp.id(22134619000487214738)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22134597745421214295)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(22134597236631214295)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22134598112444214295)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(22134597236631214295)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/application_configuration
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(22134599837723214297)
,p_name=>'Application Configuration'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(22134382303634213448)
,p_version_scn=>15551029066168
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22134600223773214297)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Configuration Options'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&APP_SESSION.::&DEBUG.:10010::'
,p_list_item_icon=>'fa-sliders'
,p_list_text_01=>'Enable or disable application features'
,p_required_patch=>wwv_flow_imp.id(22134382303634213448)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_interface
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(22134600583715214298)
,p_name=>'User Interface'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(22134382784700213448)
,p_version_scn=>15551029066171
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22134600968892214298)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Theme Style Selection'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&APP_SESSION.::&DEBUG.:10020::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'Set the default application look and feel'
,p_required_patch=>wwv_flow_imp.id(22134382784700213448)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/activity_reports
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(22134601277686214298)
,p_name=>'Activity Reports'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(22134382054080213448)
,p_version_scn=>15551029066185
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22134601603952214298)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:10030:&APP_SESSION.::&DEBUG.:10030::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'View application activity metrics'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22134602029728214299)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Top Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:10031::'
,p_list_item_icon=>'fa-user-chart'
,p_list_text_01=>'Report of page views aggregated by user'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22134602483841214299)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Application Error Log'
,p_list_item_link_target=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:10032::'
,p_list_item_icon=>'fa-exclamation'
,p_list_text_01=>'Report of errors logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22134602827018214299)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Page Performance'
,p_list_item_link_target=>'f?p=&APP_ID.:10033:&APP_SESSION.::&DEBUG.:10033::'
,p_list_item_icon=>'fa-file-chart'
,p_list_text_01=>'Report of activity and performance by application page'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22134603276463214299)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Page Views'
,p_list_item_link_target=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RR,10034::'
,p_list_item_icon=>'fa-file-search'
,p_list_text_01=>'Report of each page view by user including date of access and elapsed time'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22134603666929214299)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Automations Log'
,p_list_item_link_target=>'f?p=&APP_ID.:10035:&APP_SESSION.::&DEBUG.:RR,10035::'
,p_list_item_icon=>'fa-gears'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from apex_appl_automations a, apex_automation_log l',
'where a.automation_id = l.automation_id',
'and l.application_id = :APP_ID'))
,p_list_text_01=>'Report of automation executions and messages logged by this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/access_control
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(22134603957600214300)
,p_name=>'Access Control'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(22134381993914213448)
,p_version_scn=>15551029066202
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22134604354928214300)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Users'
,p_list_item_link_target=>'f?p=&APP_ID.:10041:&APP_SESSION.::&DEBUG.:RP::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Set level of access for authenticated users of this application'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22134604799355214300)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Access Control'
,p_list_item_link_target=>'f?p=&APP_ID.:10040:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-key'
,p_list_text_01=>'Change access control settings and disable access control'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/feedback
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(22134605023288214300)
,p_name=>'Feedback'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(22134382167433213448)
,p_version_scn=>15551029066207
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22134605468821214300)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'User Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:10053:&APP_SESSION.::&DEBUG.:10053::'
,p_list_item_icon=>'fa-comment-o'
,p_list_text_01=>'Report of all feedback submitted by application users'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/user_settings
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(22134622608056214742)
,p_name=>'User Settings'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(22134619000487214738)
,p_version_scn=>15551029079866
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22134623032684214742)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Push Notifications'
,p_list_item_link_target=>'f?p=&APP_ID.:20010:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-bell-o'
,p_list_text_01=>'Configure whether you want to receive push notifications on this device.'
,p_list_text_02=>'<span class="a-pwaPush--state"></span>'
,p_required_patch=>wwv_flow_imp.id(22134618731002214738)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/główna
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(22548309122870982124)
,p_name=>unistr('G\0142\00F3wna')
,p_list_status=>'PUBLIC'
,p_version_scn=>15615423813310
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22596701702628713123)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('Baza klient\00F3w')
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user'
,p_security_scheme=>wwv_flow_imp.id(22134384889557213450)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(24985236724761825951)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('Wizyty klient\00F3w')
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-user'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(24985597274792574196)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Kalendarz wizyt'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31633969992076964762)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>unistr('Dodanie us\0142ugi')
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-plus'
,p_security_scheme=>wwv_flow_imp.id(22134384889557213450)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(24564652014014631266)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>unistr('Wysy\0142ka e-mail')
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-envelope'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(24564743800555638653)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Administracja serwisu'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-wrench'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/email_reporting
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(26390343374793576458)
,p_name=>'Email Reporting'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(26390324641716576355)
,p_version_scn=>15554713801061
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26390343735412576458)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Email Reporting'
,p_list_item_link_target=>'f?p=&APP_ID.:20020:&APP_SESSION.::&DEBUG.:20020::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'Report of all email queued to be sent and those already sent'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF400000337494441545847A557B96E144110AD9EFD0904060212230392113997004B18E304648BFF300187C5B1899D11132181772D02B32B27060B448C0546989F617786';
wwv_flow_imp.g_varchar2_table(2) := 'AAEA9EE963FA1A6869A59DE9EEEAD7AF5E1D2366668E5702E4A8F057FF2FF07FC94FF436344A9C28A0C065656C5970BF00711201E8793458A0417CE31A6440413C31A012A41CC67F817BAACA052097D2B26EC33CA4DB4E87816E9B1B8709A42CE1828A1D';
wwv_flow_imp.g_varchar2_table(3) := '5A33A1CF4900F8B79BF9580C692A8B0116275AA8104F2D52BE03BB5EFADF14708A47736D16809441894A8A2A3AEA7031288A026073B8587452A51B1166902B78C6120B403B0F24EF9EB12010A28A052F03A1501C8E3F23CB444705F7971630654C3066E9';
wwv_flow_imp.g_varchar2_table(4) := 'B9C7EF9A4167D2CFC39C6BBB93060AF4F11F3C6C7BB4070213C9E0CD6BD8793F6889B0166D03C005147281CB6730295553D81A7F61D1AD2C5D433024149B042BEB35864B4ADC9A18DC1361A0E6AFC0F02BA187299AC9C74307E37D7870E73ABCFDF00956';
wwv_flow_imp.g_varchar2_table(5) := '976FBA27B774616333730BD58253580BD459A11B0F76F6A14200AB8B57302A7A301CE1C1776FC0D6E823DC5BBC8AC5C8CA0E19C234E4621723FFDE33B373D0DF78A527AB094AAE87C989627F826EB825E7F8066EF6F46553FD2EE10299BB49F98F9E6FC2';
wwv_flow_imp.g_varchar2_table(6) := '85F94B5E84478707F0E2C99A1FBDCA4FBE924F1BFC00942FE4F1023D3455D7A3CC8B25A59CC23B14A13042EFF7CF0378F678CD4ED50D2B61AF6800AE8A0D4184B4B1DEDF84B3E72F368277998896763311F972555E5F2060BDBF2141A811758787888601';
wwv_flow_imp.g_varchar2_table(7) := '4E1E0E923C10802014137C40094787DF3D9A90DD968E3872ADEA88720F8AC5178398432654CFF1EBC73778F9F42103D22D99D494ECF9A4B54EA9B80DC0AE03046216DDB172FB320C77BF72964C0D047022DD4F25AC985594419C9B0741F96179812F5F20';
wwv_flow_imp.g_varchar2_table(8) := '4E5D976C4610C031DC6FF66A7241768793A801B61DFB894E552EF0D76C6B39555C5989F588844FAD2BAFBE42D5B0E0A413EFEFC820A52537FB670B992E4206D408362432A0CC11EB9023F16B4DB56D88D3F865C407053AA7948AFF773E198639D4D65AD1';
wwv_flow_imp.g_varchar2_table(9) := '6BEB9B3A0D8807ADD50F58F36CCDA525D0FF79BBF13C4AED542C739323F5462E81F71CB51D3E28A57DEAAF881F0660874C4E41087CF16609C216E25F63FD3D757643D7410000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(22134380559229213446)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B8000013FE49444154785EED9D0B78145596804F753711C83B69A0D38FA409086A609465011D9D0174441C574071471408B0F21A549E82B00B8AE28CE01B454440055957';
wwv_flow_imp.g_varchar2_table(2) := 'F453D40F47E32CA2CC8E3BE2E8A7ABC4C82B24E9471208E1956086A4ABF6DCEA842FEFAEBAB7AAAB3A7DEBFB62307DCFBDE79EFBD7BDE79C7BAB5A007E710B3058406090E5A2DC02C001E21030598003C4643E2ECC01E20C30598003C4643E2ECC01E20C';
wwv_flow_imp.g_varchar2_table(3) := '30598003C4643E2ECC01E20C30598003C4643E2ECC01E20C30598003C4643E2ECC01E20C30598003C4643E2E6C4A80EC767B72529290180A754F144531C9264989920D12A101BAC7C590D9A04E6880DA0641A8B5582C35566B5D6D4D8D545B555575CE6C';
wwv_flow_imp.g_varchar2_table(4) := 'FD371A20C1EB740E1405618404D208DCDA1D8E06FA05FE74339BA19AEB23E1FF7464380B7E26EAA77C3D56FD3D48B05F00E12B8B24ED2F09060FE2DF884A865C5105C8E170F4EAD6CD720D9A7F0488D2701C8561D8EB54437ADEA65132EC64F863EE3A83';
wwv_flow_imp.g_varchar2_table(5) := 'F8FC1D19DA2F48C27ED162F9C2EFF75747AB17D10448F0789CE324099661A3BF6CD3419D6FDD681954BF76C85045986824F80267A6B56581C09F2217D64653DD011A8ACB51A53B6B3A76EC01547980366A6B574B67CB91E2564C063F0EEA419C4F9FECE3';
wwv_flow_imp.g_varchar2_table(6) := '0FBEFE0D0059F674BB7405C8ED76BB04103F40ED91237E196081AFEB1BC4DF5654549CD0AB6DDD00CACE765C2189963FA3E22EBD9437A45E052B4954F452AEC751C1228E2F2BAB28D4432F5D00CACE765E2789F0212AAC89836CB215428F71E8B84E6D3A';
wwv_flow_imp.g_varchar2_table(7) := '7F460271BCDF5FB14F6BE53507A871E6C1A8007A6AA3ACF25B4D9BF662AF16858C9DC79968B8D63391A600399DCE9E560B0929E18AD81B86B8D0B83024C2F06030785EABDE6A0A1086E9DB30D29CA6957266AC4793A8CDC88E09B0DDE70B4ED74A05CD00';
wwv_flow_imp.g_varchar2_table(8) := 'F2785CD341925ED34A3163EB89C1A4A29A955E1066F87C816D5AD8581380305CEF81E17A00154AD742297DEA5063617D34505CABFEAA56E352E6D16229D304208FCB351704E925C506EAEA059BBC5A85DE6D34CCD166E99584DFFB02814DAC6D6B019090';
wwv_flow_imp.g_varchar2_table(9) := 'ED7616A182035995E1F251B4800445BE40300F5B64DA886506C8EDCE1A8BDB141F5FECBA81775DCC3BB851E487348527206EF6FBCB0B589A6506C8E37612056E6AA1848110B118230E653FF1F9836359FACD0490D7EBED1E6AB8508B0AC4C83908FDBD53';
wwv_flow_imp.g_varchar2_table(10) := '96C130405694C09284C73F7EA66D9B0920B7DB314A00CB67B48DAB978BC1F05A7D271548686707DCE2188D5B1C9F2B68B4DD224C00A1F3BC1CFD8EC7691B8F773933F86C08C08A327F702DED58300184FECFFBD8F078DAC6F5958BE272A587CF173DF53F';
wwv_flow_imp.g_varchar2_table(11) := '403F6802ED58B000242040E49C49266DE35CCE041690A012C37907AD26D40079BDBD1CA1866EE5B40D7339232CD0E83BB59ADD4449B007028193341A510384C736F2F0C0D8019A46A32AA3C3F2A24395513549EBC6F098C720DA631ED400793C8E612059';
wwv_flow_imp.g_varchar2_table(12) := 'BE32B4E7666B5C95DFA25D24C56C06411CEEF355906338AA2F6A8030841F89213C75F8A75A532EA09B0530941F457B5A9101A0565B18BA758F57ACB70558B6345800BA1DF7C0DED5BB73FAD5AF6ABDD1548D88F99F283B598208E3CA82C1DD349D640168';
wwv_flow_imp.g_varchar2_table(13) := '3202F49F348DC6878C7180AAB52FCE4013715375975A39529E1AA0AE750291C6745D4706019A8200BD41D3236A80F018C7149C8176D034CA65A26B81484B2602341501A25A4D3840D11D4B53B6C6016A352CF21D87FF11C8613BBC4530D38ABF05C81B7C';
wwv_flow_imp.g_varchar2_table(14) := '158442F5F0D38F85F8B9887FC21278A0012CD4F791298150AB1407A899C508148027C6059B0D264C9C04D7DF74330284610DFEB947F7F0FBA9CED7D68185FC49AC87250BE640FD857F00BEC88AC525543B66A62ACF016A3E1C38A10C1EF2CF30FBDEC560';
wwv_flow_imp.g_varchar2_table(15) := 'EFD347FE449E69E493BFF81F32F3203DE8BFC99F8938037DF7F597B0E3B597A1B23C803354C854834BAD8C8A540007A899950910567C3CF6DAEB46C1A021C360D40D6310200B39FFDBE15848325D22FCD7B65760F7AEB7C3EB5F1C5D1CA0563310995CC8';
wwv_flow_imp.g_varchar2_table(16) := '4A26A1EF3372F46FE0B2414360F48D786C9BF84216320BB5A4830044662922B3FBBD77E0F55736A25B64945FA441FE48C5EC139E978D88C2B2318C1763238C27BECFC4495361CC2DB741C22597342E69EDCF32C417FA68F72ED8F1CA4BF44932BD662F95';
wwv_flow_imp.g_varchar2_table(17) := '604452A329BC3706A018CC03917BFBD9175F81C4940C484E490E4F531D5CDBB76C844FFEF45EA3731D692862FB730E90C2F193E4D0DD0297E75D09D367CD856C6F7F74A809446D413A7BAA1A1E5CF47B38555DA5B0F6D82DC60152337684158CD873FAF6';
wwv_flow_imp.g_varchar2_table(18) := '85558F3D83B351F2C588AC852B85F3FBFFECFD1836AE7F4A4DED3A95D5F7EC100708874D8D7B40822EB27A8DBF630ADC953FA3DD41278E35F9B97BC28D3A41619E6A8D01486B275A83E043ED903CB5FE25C8CAE90F569255ECE09A9D7F27D49C3D85BE50';
wwv_flow_imp.g_varchar2_table(19) := '07F92135E4AA55304AE58D01C8044E7453F84D636787C305ABD73E03A9E9998D213CBEA08664A34938DFACC2BFECC165EC79332C6334BD5426139B00A9BD735B9727C941322BE06F79CF4BC54510B96BDA2CB865C21D9874B4E25225C267FFFD110402E5';
wwv_flow_imp.g_varchar2_table(20) := '903F7DA6FC5505F296085E470E16C2CAA5F7352E922A1A612E1AC9EF89F4B97205621320E5FD6BB7E4E0AB86C29D53A6C1CA250B100751CE11463ADE8467B8E52CF3F0ABAF85B90B96418F9E8972DD6525C760D3F34F4069713164E77861E67D8BA0DFA5';
wwv_flow_imp.g_varchar2_table(21) := 'E46D3502541D2F877BEF997C112846B5958BABBDC194D7DCA664DC02B460D9437262F0CFBBDF85F7DF79136A6B6B65C7B7F34B805B719375EA8C59F23E5813764585DFC36B9B374265D007BFC6ECF58C798BE4A5CC30801880502B1A970091B8EB85AD6F';
wwv_flow_imp.g_varchar2_table(22) := '40AFDE76797929FCE13BF8DF7D9FC2E77B0AA021D420E77BDABB88EFF3DCCBDB655F87B0F6DD375FA3935C0D03F20683D391051FEC7A07065F3504C3FC7EB2B89100453A08A616948ECAC72940001BB6EE844C0428ECF686F7B8F6EEF904F337055054F8';
wwv_flow_imp.g_varchar2_table(23) := '431B7B11A496FCC71A183AA2E9BB5E04587AFF4CF0FB8EC165970D8211D78D869B6E19D798A00EFB404602A4152091EA894B8088E3BC61EB9B9069EFDDE2401859C26ACE9D83B7DFDC017B0A702B2224EFAAA2EB13825F5D3F16E62E5C8AFF0E2782AC56';
wwv_flow_imp.g_varchar2_table(24) := '1B94077CF0E17B6FC1A7051F82ED921EB0E39D8FC230365E55272A61FECCC978A628D2D2186998227DDEE414473F9F119700919384098949B063277E974BAB3D2D390988E365C5656CDEAC7C39CABA7B723EFC72E40DF26C4522AC73E74E43FDCFE741B2';
wwv_flow_imp.g_varchar2_table(25) := '2680DDDE0B2AD0F7C9EC65079B0D0F9D358BE34F5557C3C3CBE7C3F18AAEFB1A80F80488783E48C9FA2D3BA0B7C319E9F66EF13901E8C5679F807D98E349494B87C5CB56C2C0BC5F800543FAD69784B9A1BF7C5A80B9A0A73BDB7B55D5BED90AC72D4064';
wwv_flow_imp.g_varchar2_table(26) := 'A2188121F9A2158F74BAB3DE7AC0C88455545828E778DE78751378FBF5C3B07EF945C7B965797CFF4979396C7C762D1CFAA9B0938C13EBD2C32A4F8F655C02D4642E8BC50A636F9D08F9F7CC516DC186FA063859558972226464F6816E0909E12F3C6D27';
wwv_flow_imp.g_varchar2_table(27) := '803B7DB212962FBE174E9F3AA5BA1DB30BC40C407A85A5F65EBD61DAACFB60E8F0ABF1B07CDB65A8B30124C73964FFB81327599E1BB04C49F1417862CD2AA846BF88F1F5CAA6622A6600D2D36AA9E8CBDC7AC764F89771B7E9D04C23FA48D249CC4CAF7B';
wwv_flow_imp.g_varchar2_table(28) := '642594959584DB8962C658878EC95572802E5A569001BA6DD234484A4E9177D09BF6B4B4327E0823BA233F1E806D5B36C0B1E2A35A556B683DA60248AF654AA985AD161BA4A5A7C134F489865D3B120152B7A4296987E4844A8E1C82758FFE3B9C39735A';
wwv_flow_imp.g_varchar2_table(29) := '8988A9CB980A20B3592A09CF3FCF5FFC00389C9EF0F646E3A62B7936CC9E894739D0678ABC7FD67EAFCAFD65F0C88A45703A2A10E917A571803AA59638C9E4B11DB2111F3E134D66909E49C930E1F63B210D9388EEEC1CC8ED37A0694344F93D8095FA8A';
wwv_flow_imp.g_varchar2_table(30) := '0FC30BCFAC85B2D263CAE54C569203C43020C447224738FA0DC8C33342F7407252927CC6A8DDAB9D109F1C422B3E7210B66FDE00870FFDC4A08971A21C200D6C4F66A68C4C3BACDFB415AC09898D87D4943D5C48364E8EFCF4233CF9D84A387BB606B521';
wwv_flow_imp.g_varchar2_table(31) := 'A499FF6A0A2039401D8E9572BF812C73E474A23DB317AC7AFC69C8B0F7E9F4AC74EB26C981B60BE7CFC1FCD9D3D0B13E637E7A9A69C801D264B89A601320879C4A9CB710FA5F96A72A0D206215478B0AE1D54DEB4D14E247BE896208A0C89DD184050D2A';
wwv_flow_imp.g_varchar2_table(32) := 'B9B4FF003CDABA1872722FEDBCB6565D223ED161DC337B75D3F3505A52AC8126FA57614A808CCE076961F6D4B43478F80F4F83C395835B24CAFC21D22E81A814A3B327D7AC846A7CC2D5E82B52B2DC9400196D3455ED7762E1D4E45478E88F4F4196C78B';
wwv_flow_imp.g_varchar2_table(33) := '1029FF5E3D9267AA3E1EC4C7A3E7C15993FB445D1E20A367B3EC9CBE3077FE0390DBF8A4861A380F1F2C82D7B7BC8021FEC1B0581B58B57B3C478D5ECDCB767980680DD35A2ED254DE593B03075E0E5367CE837E03AFE820C46F1F0412E21F3DF8236CDE';
wwv_flow_imp.g_varchar2_table(34) := 'F00C261B4BB109ED8EC66A75637180B4222C423D2929A9F0E296D7C1D683BC90413908C427AAAEAA8087972E809326F089DAA4200C79C194091E6DD6979BB6112379E3597A6A0A3CB0EA31CC5C5FAE2AC42779A2D2A387E1F1D52BE0CC69731D4A8BEF19';
wwv_flow_imp.g_varchar2_table(35) := '88655DA224B03F86F833E6CE87DCFE03E51776AAB94874B6F1397C0AD644217E7C03A466F4342CDB171F3C9C7DFF12CC130D501DE21F2AFA01B66D7E114A8E99E33C1107484330D45495929402EB9EDB08E9BDB3D488C9A70382FE1258B372A929CE58C7';
wwv_flow_imp.g_varchar2_table(36) := '0740D14E622B5C1A5352D3E0C1557F409F28FC32063557F1D143B072F13C0891E3266A0429CB76D4A5F80088D268D11023217EFEAC7BA12FFA44E18C35FEB489EA2508F8CAF0D9331B64395DB25AE4A0FE06F487BEF8AC40357C5AF68B03A4A5353BABAB';
wwv_flow_imp.g_varchar2_table(37) := '9359303BDB0B0F3EB406327A3BDB9D4DF616ECC6E7F60BC0863BFEBFBAE1B770C398B1F25276A2B21216CC99427D2A528BAE7380B4B022631D6436B16764C0B2D58FE3038AFD5BD416F09562E4B50E138A459889B6C2AFAFBF11E62D7C507E18F20CE685';
wwv_flow_imp.g_varchar2_table(38) := '562F5F08E5413FA306F4E21C2015B653E8DAA8A8B165D1F4F40C588D1BB0BD5DE40C76D8B3A9280FC2E6E79F84A2A203408EF8DF34EE0E98FA6F73E44D57F28CD9BC1993F0CDF8CA13931D2947DB370E10F570EB23989BDB1FA6CFBE4FDEF62087D4C8B5';
wwv_flow_imp.g_varchar2_table(39) := 'E7938FF198C7F79092920EFF7A773EBE18ABBB9CCB3E79E238BE01EDAE884EB4A26D0BCA40C3840019BF41A80F1ACA6BCDC9C985FB972C07B737FCA2AA762F9CA1D6AF7B14FEF6D7CF9557AC4349130244D14BCABBA7F3960C02B9B12F69F8B4EC8A47D7';
wwv_flow_imp.g_varchar2_table(40) := 'E1A17D84883C15222B4B9E1211E52F73D9B573BBFC1E23DAC78A28ACDCAE48D700482B6B747CBBE327EC7E865A350934D78C1C23BF10B4478F9E50575727BF5DF6ED37B6C3977FDD0B172E5CB8B8CCA9AD5BABF2060224E197EEAADB0BD2AAD331558FFC';
wwv_flow_imp.g_varchar2_table(41) := 'C22B01060DBE120EE0ABF7E4E7D31A710E7F195EF4C16E6E3F03018A8DAF7B8A29D83456564964C601D2D8E8F1505D73B04C0D90923B201E06CCCC7D340AA0DBF17595EF9AD9305C376516408026FAFDE5BB94956E598A7A13D8EDCE1A8B007D4CD32897';
wwv_flow_imp.g_varchar2_table(42) := '31970510A09B1120B2A3ABFA6200C83112BF7BE273D52DEA2E409B505294EBD55DFB761BA0ED92C2CA241047F9FD15FB683A470D90C7E3180692E52B9A46B98C0116E80C42411CEEF355FC9D462B6A80B2B31D79926839A0B6D1AEED546B3A55A8352D75';
wwv_flow_imp.g_varchar2_table(43) := '79C1220E2A2BAB28A4A98001A03EB9926835C7A15E9A9E9B4EC6A06D17B4836009F52B2BABA47A909F1A20AFB79723D4D0ADEBBEFFDF7480E9A790D5569F555272A282A6056A80B0B16E1EB7F32CFEC62F97E0976C01BD57307DD6FF3A9F3F9882DAD7D3';
wwv_flow_imp.g_varchar2_table(44) := '8C220B40E071BB300A9346D2346C9C8CDEA36C5CCFE85A16F6F9FC815174B26A1F2368D54AB6DBB91A83DF8723354E6E1CF29DC74CB4466A84E2F3F66F683D01D3B36E0A0384C7E491327F70359D34E398BADD8E51980BFA8CB6712E67BC053007341A73';
wwv_flow_imp.g_varchar2_table(45) := '40B892D05D4C9382D7EBED1E6AB8401EF4D6DE0FD267BDA7B352D795AAB3DA12D24B4A4AEA68BBC8041069D4E372EEC479F04E5A05BABE9C71E17944DB4AF0962F109C14B15C2705980172B95C57E313057F635182CBB66F01BD37574449B82610087CC9';
wwv_flow_imp.g_varchar2_table(46) := '627F6680E459C8ED244A8C605184CB365A207A7EF67E0CDFAF66B5BB3600799C93F0CCE69BACCA70F9285A4080BB7CBEE04ED61635010895B0E12C44BE2CC2CDAA10978F8A050238FB78B1A506D6D6B402083C1EE7789C85DE675588CBEB6F0141847165';
wwv_flow_imp.g_varchar2_table(47) := 'C1E06E2D5AD20C20A28CDBED7A0E9F3158A08562BC0E7D2C8087C7D6E3E1B1855AD5AE294043717FECB8DBF5056E6F0C6355506D04A2B63CAB7E312AFF4D6F7FF09A6F28F7BDDAEBB3A6009106BC0E873764B37C8BFF4C8B5123774DB5F1DBCB1B446944';
wwv_flow_imp.g_varchar2_table(48) := '797979A9961DD41C20A25C8ED33904BF786417261889A34679A98B67F5495CABD381B2A3BA8BE1EC5C8A6F981D8F399FFFD3BA315D00224A628231D30212C952FF865E69136771E93B155952436E119EBD08CFEF109E93911B565F4237801A55B17A3C59';
wwv_flow_imp.g_varchar2_table(49) := '1B4012E6AA578D4B305B4082A771AB02DF64251F86D0E5D21B2059698FCB35171F085F8FFF4C68DB0B0D6F375D4C144B955EB4E5059CF9F33151F896DEDA470520D20937C6F8F8E6C97BB0C1998429BD3B16A7F5FB71C9DA8A2FBCD8EAF7FB03D1B041D4';
wwv_flow_imp.g_varchar2_table(50) := '006AD6192B3E94380E1F4A9C837F1B833F46E8C0605BD3CD98214CE07E6401E1E5D2670305F03BFD96ABF68C66E8E0E5E6A6A7D6D777BF125F0F384412842168887F42252FC71F1BC308776551B2F55084EEC0B7984DFE56C4DF0909FFF8AEB8F894615F';
wwv_flow_imp.g_varchar2_table(51) := 'D26A28401D8DB4DD6E4FFE394948CC08754FC4175126D9242951B24122EEDC687F70CD8CB8D9A04E6880DA0641A8C52FB9ABB15AEB6A6B6AA4DAAAAAAA736653D7940099CD485C9F8E2DC001E27430598003C4643E2ECC01E20C30598003C4643E2ECC01';
wwv_flow_imp.g_varchar2_table(52) := 'E20C30598003C4643E2ECC01E20C30598003C4643E2ECC01E20C30598003C4643E2ECC01E20C30598003C4643E2ECC01E20C3059E0FF01237C2AFAE704977D0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(22134380855524213446)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000016AC49444154785EED5D099095D5953E6F6B8899388E51D3B2B9846432B13431D4646A6A6A2619C70401D94469166330C8620BC81649A2A41C358E4EA920082298';
wwv_flow_imp.g_varchar2_table(2) := 'B84485088943081937D4A4A6523595182B6632714105A159D4192A63AA0CFDB6F9CE7DFDBA5F77BFE5BFFFBBF7FFEFFBFF73C902DDFFDDBE73BE7BCF39774B8C1C31AC489204819822901002C454F251E976121D29F8EF8C10C03F769233020808012220';
wwv_flow_imp.g_varchar2_table(3) := '44E9827F049C2500CF6C9C9A98DDFCA32239638380B304888D04A4A3A1222004B00C3F87D81296EB90E2FD232004F08F5D3C73329B3502E7AE0F004280C0D498BD99B2671358A552510FEAB57C492180A848AC111002C45AFCD2792180E88036024D2EBE';
wwv_flow_imp.g_varchar2_table(4) := '6AD7673383106020BA9A4E9E4DE148D9F6111002D8C7586A0809012F33558B1020B8088AEB61BB907429B2D5B60801228BBF742C64048400210B40AA0F17012140B8F84BED2123608E005E3C8E903B2BD50B0283827E3A27C27A755C945D34A90A02AEAB';
wwv_flow_imp.g_varchar2_table(5) := '45B50087B919405442106841048400B68556DE0BADB183D244935C1F8D4DF4B1AF0CFFAB974200B39270A034FFCAE040E3ED36A1CAA82004B00BB994EE38024200C70554B779F1B273AC484A086005D6DA858ACE060C7883EA02278028800D0510BBDF2F';
wwv_flow_imp.g_varchar2_table(6) := 'AA8113C06F43259F2060030121800D541D2B5376B8D616484C0810DC766AC7745F9AE39A0FD09A121102B9253773F288C90CE096F8A435EE20508300C14715C44E7547299A6A498B85F99A9B015AACB3DE056B6E8AF55EA77CE90D01B3B2698E00DE5A2C';
wwv_flow_imp.g_varchar2_table(7) := '5F09020122A047901812400FA0002527558580400C091002CA52A5B30808019C158D346C20023602254200D1B35823200488B5F8A5F34200D1810A04C20D108411551702F82540CDB5C2E01711FD7641F2E1F92A9D6B51043041206A080801BC4A348CF9';
wwv_flow_imp.g_varchar2_table(8) := 'D96BDBE2FE5D1393AE102050E509D7C66EAEABADDCF6DA3D37488026019211B639FD94DCBE103048005FF54B26412054048400BAF037616FEA561595EF5D9EDC634A807868B1CB8AE70AB9634A0057E09776848D8010206C0948FDA122200408157EA93C';
wwv_flow_imp.g_varchar2_table(9) := '6C048400614B40EA3780807F9F4E0860007E29A27511883501126AE04851329DA07C2ECFFFA044214FD9428112A936BAF5B63BE8CF3E7262AF74DB479D4D855C371D3E788092C89BC7DF57AD5C49B9DC9F289D4AF6E42D523A9D4151092A1473ADA519D5';
wwv_flow_imp.g_varchar2_table(10) := '06D2888792624D00D64E9639CB385F28D2A7CF3B9FFEFA6FFF81C65F3C11BF48A9DF16F0A79CF8DB0458C37FF2EAC7F82DC8924A26E9772FFF9A7EF1F3E7E8F93D4F42F1717689FFAB4A97E43202B126409147FA749A860F3F9BD66EDC4C399020954E11';
wwv_flow_imp.g_varchar2_table(11) := 'FF3C0F0D4FE3EFACE0E5C48A5DC00C91419E22FE244112FE7DB18872F0F722F2230B2D5BBC90BAF6EFC5CF3DBC8BE4DF7C7559AF5AA66D5A0488DA6C988622E77230538A495ABFF9413AA57D981AE1290F532895808AEB27708192C89BCF6769F1FC39F4';
wwv_flow_imp.g_varchar2_table(12) := 'DED1436A2650E69624E710D0228073AD6FB24149982E8A00486CF08CFEAB73E926D8FD6CFF830254C8E72895E2DF784F3CEA97F3E4315B6C7FE441DAB97D2B38C53E8624D710089400F56690302CE6543243B97C374C9D34757767299D806193CAD082CE';
wwv_flow_imp.g_varchar2_table(13) := '25F4C5B11713FEC946BF96CCB2D9E33474E80970906116718791DE3D7C9016CDBF42AB1CF9D83F023ABA142801FC7729D89C69686E017A3FE66FBE40D77DEB0644857ADC610CE299B6341D3FFE01653243B41A5500D1664D1D4749848F0AF015243102E1';
wwv_flow_imp.g_varchar2_table(14) := '3B4042802A9AA8FC004478D8A9A5E4105A7DF3ADF4C9733E434332086F22E5F3F992AFA09112C914BDF2F28BF4ED6F2E43DE9EA961407E9D914BA36AF9B40E02EE10C096873D7090F1500FFB0529984519E4CD412B59D7FFE2A3ED74EF038F28DF80CDF9';
wwv_flow_imp.g_varchar2_table(15) := '1A3A5C136A8E14216E44470EBC45CB175D254AE90802EE10C01140EA35837D859997CFA54997CEA42C4892610719260DCF083A69E9C22BE970D7DB2AA4AAEB64EBD4D3F2DF066021090134B48447711EFA39FE3FAD63364D9B35077FCF23DE5FDDA4A933';
wwv_flow_imp.g_varchar2_table(16) := '1DD0ECC91722FA0A5FA3629D41A329F2694304BCB14708D010C8FE1FA452BC76902D8DDC20C3C3DB77218AD4A6550A6FA3D8BD6B273DBC799DAFB506ADCAE4E3BA0808017415A46760610264B3592C7A6568C74FF6C024CA830849B582DC2829071AFFB9';
wwv_flow_imp.g_varchar2_table(17) := '6CC2056A4F9193C983AFE464BB351B2504A80358BDA80C2B312F7AB1FDFF850BC751E7D2EB28851981B748344A6A8B04F2BFBDF7F7B46AF9A2469FCBEF2D222004F0096E1AEB00392C7A958840F4835D7BB072CC8B5F5E8674EC29E2082BC83263F2977C';
wwv_flow_imp.g_varchar2_table(18) := 'B6C0DD6CAD14CE150218D0A3045479DBAE674A1B4035D392795FA1778E74A999A3D6FA806691F2B90602AD4D0047ECD442027EC0AEA79402EB8644972F5A4087F6BD86E9403392A42164F9B43602AD4D0047247BF77D0F52FBB0514AF979839D4E4A519E';
wwv_flow_imp.g_varchar2_table(19) := '2E9BF84FCA999690A80E7266BE8D3C01385293E9D9C26006B25229A9641AFF5BA0934F399DD6DFFF70BFA2F93C01AF246779CB04EC223E2196CB62E1AC671F5165D83451C852C7D48BD4EF79A14D52B008449600AC78D8CC43D8D40065350F2A6F92CEC1';
wwv_flow_imp.g_varchar2_table(20) := 'F67F7CE75338FDD8BF028EF21CFB9F77E9E99FFE98CEFDECE7E8BCCF8E514E2F27769AFB8FF445EA9874A13A41A6BBBFC87CAFE257A2FB04F069E77FE6F37F4FBFFDD52F4A7B770AE6CFE626B1B96DD2259752C7E5F3FBED0B623DC739319A36FE1FD5CE';
wwv_flow_imp.g_varchar2_table(21) := 'CF144C9B2416CA1ED8F6236A6B1BCA9C040B2ABDE5044D9F740142A8A5B0AAA46011709F003EF1786CE7B3F4FE1FFE97E6CEEE80BEE5B0933345DD0853EADAE895D5A77150A63BFB813269784BF3E3087DE6B09F2759310314719A2C8543F69760910BFF';
wwv_flow_imp.g_varchar2_table(22) := 'D7BB2AC087E667CF5D44E3274E19D4A38E49088562875D203380B71D0275510F33CC69BAEEC4C851C31094F6A9650E677BECDF9EE1B3896A647DFA273B69CB7DF7E0D606C4EDF1B36AC9CB44C30A5ADE0A7DFB5DF7D0599F3807A60D9F07EE8BFDB379C3';
wwv_flow_imp.g_varchar2_table(23) := '84F8E31F8ED1B58BE6D31FDF3F46697C536092E0778F80987C88BE32054A0087651646D3A233030C18D9D6DCF33D3A7DD4194A61533D4EC081B7DEA0AF5FBBC037CEA5911F9BDF705AE69127FE5D6D8A4B61FB43A54DDF470638BF9936DAFDC40EFAEE7D';
wwv_flow_imp.g_varchar2_table(24) := '1B40C42C7DE4A4D3E8FE47B7F75CC1D2D70C1709607AA4F50DBAE58CD121C000A0EE5CB789469CF529982098DE2A6D6B28F0968D6BE9677B9E55F7F9B08F50764E1B61CD57A7F0B1C935F722EC39E28CDECFCB33031BF8CB9774D29A75EBE108B4A9915E';
wwv_flow_imp.g_varchar2_table(25) := '1DB54474E7C05BAFD3A8333FAE66A581B6BE8B04688445547E1F5902DCBE66039D39FAD350FE9C3A88D297F85F199826EFD092CEF9F4FEFF1DA3144C1365A23448505DFACB73CEA71BBE738772702B13DF21D131692CCC9C2C2897A4134F3A89363EB015';
wwv_flow_imp.g_varchar2_table(26) := 'D7A4645418964D250E8F564B428046C8DBFB7D640990C551AE1DBBF70C1ADD958D9E2CC2992DD2874F388176EF8489B209FE0116A41A26983E8FEF7A528DEEFD42997C5F10083073F297D50D71A5D5606C6EC08CF1A5095368EED54B7AC39CA57D70FDC9';
wwv_flow_imp.g_varchar2_table(27) := '638B00AE9A315EFCAD86B230F4416409906302FCF4794C0088AEC04EAF97D82479E3F72FD3F5AB965392CF3B62AB73318F10265F99C867607816C10CB178F975F4775F1CAB2CAA3C0EB973583397C5455958E0E26394C73FF880E6CCBA04798FABB302A5';
wwv_flow_imp.g_varchar2_table(28) := '9B8512F4E8134FAA7068B5C4F9EEDF7017FDC7CF1051EAB9A2C5906CBD15C3648C71F8D53A01C21A85F8AECF6D58A44AD5B9BD8115BF3C1AAB99018A7EDFC675F4C2B3CF206284432F19ACE676E7D499E0134F3E95363FB44D9DFE4AF131C88AE80FF7B1';
wwv_flow_imp.g_varchar2_table(29) := 'A4EEF8839FBFFCE27FD2BFDCB45A5DAC98C71DA13B102ECDD750B23CEAFDD1B6EFD38EAD0FEBDEC0E24DC1E5ABBA0858274058F8B33A4E997E054D9F3DA7AE629549503EB49EC2AD6E0928F1D2ABE7E13A9422CEFD2669ECF809346EE225CAB4295F7CA5';
wwv_flow_imp.g_varchar2_table(30) := '88818985BFEF7A732F9D7C5A3B0DF9302ED2E5902718C1CEB2BA02A5F7F6D1EA8B5CFC53CC1F74E9C42F07B30E1096401CADB7B50950C798545B0E60BFFC60F70B6A6C2EDBECA6169BD8A16567770656713F3474081DEFEEA651677C9CEEBC6733EA5235';
wwv_flow_imp.g_varchar2_table(31) := '7A526826551A91A1E93823CC330B9B416D19985630B124D947A07902185859B4D1CDF289AD2BAEBA1AA3F734B5026C72AB019B2ECCBF59D8C896C7158AEA56392832136DD58DB7D398319FF7783A8C2FD725DA87D361DF5CB17890D36E031B29B30F81E6';
wwv_flow_imp.g_varchar2_table(32) := '09E00A9A0388C8CACE660D0764B6EF7E4E8DC626499084695480A37DF4D07E15FB2FF09A82F229F8E7DD70C05F50F67FA3940071F2D83EC169D6E4B1CAF1E6B686E210376A6C047F1F1D02D411CE69EDA368DD96076112E9EFD7F722731EF5BFBB693D3D';
wwv_flow_imp.g_varchar2_table(33) := 'F7D42E282FBF1900C777F7F3306334F798200235630A7C01E54C37268F97B6C937F511880501381A79E3AD77D0A7CE1BA39C54E309CACAB34D01BB4E7FF8F856EAE89841795CBC9BD4BC3E91CDAA57FFEB25BAE98655686285D3EC52E0DC3878E116180B';
wwv_flow_imp.g_varchar2_table(34) := '0228D307383FFA43ECDFC1BD3EA613CF00BCDADB0D4798CD17BE32C58FBFC184616BA80B4724572E5968BA99525E1504624100564856CE14F6E56FDBF9B4524E5658CF76364F1A8D774A1855B0436FE30ED1CEB978AB80C96461D632DADAC685B93A89C5';
wwv_flow_imp.g_varchar2_table(35) := '8200E5D0271F8FC4EA166DC5CA6C861FB2F370874F63D1DAF9823753BCF29B5FD1CDD7C31C0A987C767AE466A9B12040E51D3EA547ED12B476F34374DAC746B82915B44A6DBB4658F528DF267D8DDC266D4B507A0470751EF3F9D042FBA8D174D7DD1BD5';
wwv_flow_imp.g_varchar2_table(36) := 'CA2DAFEAB2AF50DACC567240C3DAC63150D85133876C29B39F72F50850AD064717C2BC8051DAAB93A139F33AE9E249534BC71B35AF35F1524FB3DFE4E0B3BC8AC7356E4174687074B48505D02C304DE7C76AFDC8113812592F393BEA37DD7B98D629ECFB';
wwv_flow_imp.g_varchar2_table(37) := 'C1FE7D8CFAC54292EE5CB711A7C8CE0609F41EC66BBE25F54BE83587D83196C7358CC2DD980046AB6B8DC2868D1C4D63C78DA771132EA66E0460D23D61CDF24A323BD36D8822F1C8C13E05BF1FCCA7BFF879D4023FB1AA19FFD741E5F0817DB4A2F32A75';
wwv_flow_imp.g_varchar2_table(38) := 'FE40DEE1D641AEFAB742802AB8A83B9EA15F1C7CE4F363BD0AAD0EB7E33A942953E9434386AABF5FD631533D989765E79A1FCEB6FC1C2A6FAB7E0DAFD2FFF3F55F57AFD3584F11B600183B21401D0D62D383F7F69447FE14C8C01BDFF8A62D8E24F19B00';
wwv_flow_imp.g_varchar2_table(39) := 'BC9B3383D06A3708B37EC36698506759F523D42BF6A8EBBDC3076869E7D7ACEB7FD42B10021896700E84F8CA950B68C2D4E9CA4CB279DFE79183FB69E9C2AFA92BD9BDBC4B60B8AB91284E08605C8C189E55A82641D3665CAEDE11E3F3C6099847A65356';
wwv_flow_imp.g_varchar2_table(40) := '99432FD277567FA3E413D448AE84734DF7DF4479420013280E28031B9AD5ED8739F5A85E821EC31D42BAEF88796956393A7464FF9BB462F13C0F5924643A10A48813205C81B3EFA04E7CC1495E839362A70E1F05CFBAE457984E2573E8CAC8EC1D328D4F';
wwv_flow_imp.g_varchar2_table(41) := 'ADF2224E80A060AC5E4F7947A8DA7C074779F5CDB7D127CE3D5F5DD7683AE5782BF56F7F4DB7C01C127FC03BBA4200EF58697FC9237FB6FB4F7DA7D110BEE18339A7B69BDF83248B65DAE251198400FE706B2AD7BA4D20815173A8BF9B1BBC3914AEA9D9';
wwv_flow_imp.g_varchar2_table(42) := '8C305A97007531775B20BC6026E650336A6B2E6FEB12C01C068197A416D6C41C0A1CF76A152A02985AED36558E13C804D408F3E650FF86076F0E05049CEF6AFA8EF729C3B1E16E50DF1549462F088839E405257BDF0801EC61EBA964B3E6508F335C7186';
wwv_flow_imp.g_varchar2_table(43) := '59A243F5C52004F0A4A6C17C24E650303857D6A24500B1F1ED0AC88439544F462E2D96B9A24B5A04B02B7E29DDAC3934184F318706632204709477620E052318214030386BD762C21CAA57A94BE6903638063308010C8269B22831874CA259BB2C214030';
wwv_flow_imp.g_varchar2_table(44) := '3837558B93E6902B5E6C53C8CA425893F005935DCC217B38CB0C600C5B7B37E83A610E4564C41F286E218031029828A831896C9B437C0DE38A6BE6A933C616CEED9800C9681983091051A6F747ADB1A295BEF7FA9D5199D42D2C3073E8069C2CE383CD55';
wwv_flow_imp.g_varchar2_table(45) := '93DBDBCD75A42133800E5A0E7C6BDB1C52EFAAE150FFBB3863BCEC9AB90EF4D86E13224A808047EE900644DBE6D0FE7DAFD337F0524DFDCB63ED2AA8EDD2234A00DBB0B951BE6D73887B79E3B756D26BBF7B495D211FC524046861A9DA3687F87EA33C1E';
wwv_flow_imp.g_varchar2_table(46) := 'FE9B3D751CEE4AE5376BA297A24B805838F37D0AA96D0E61445FBE68011D39F886BADDFA74DC887DD7FA4DEA9AC5724AE1FE22BE8C77E61410A0703C7ADA8F1EF922805CB5E79E2EE89A43D72EBC8ADEEB7A9DF289B4BABF7408068C8F0E1F4D6BEFDDD2';
wwv_flow_imp.g_varchar2_table(47) := 'AF732CEBAE375FA5954B3B43E8B47D5FCE17016C2021A46A0E555D7368C6C40BD4B58DD92C5ECFC4FB07FC7C2C8FFD5B773EDBAF21FCB8F8D1C3076959446FA2768600CD895F72572250368712EA79D5C1B7D0F1887FC5B48B7A5EB2C733413075F0C03D';
wwv_flow_imp.g_varchar2_table(48) := 'DE3B28D2B61FEFE92D2A81EF7220C9BB877015FBD5574612E47810A0C93065ABCD4EFC8EC1EA5B6EA74F9EFBB99A6F682C810974ECD01B741C8ACFDF53AA401F3B1D26D0A63E13A81CF8398AD5E1A5839E66B26F9E04C1B8681020660E6F23C54862442F';
wwv_flow_imp.g_varchar2_table(49) := '226EB97ECB43744AFBF0AA9F1761DA2C5BBC900E1FD8AB1EF4681F7E36FDEBDD1BF0DA4D5BEFF7853C941C4EF1E1FD7B6945445FAE8F06011A69448C7F5F2B3AE46556E3D77092C934CD86B954C8E191F108A6C009E005F808E21C5A9774A343950D6559';
wwv_flow_imp.g_varchar2_table(50) := 'FDF74BBFA49BBEBDCAEAC37FA181E3370C1A6683A56E8F08F4F83DBAD1A17EA5C34C9A3EF942BC87C62F6236B910E6A8991AF80CE0517C6E7FE6C5A90E4CE0DE9DD18D0F3C4A27FEF9A99449671001CAAAF0671A6F22E78B392C8625D453AFF91CCC1E15';
wwv_flow_imp.g_varchar2_table(51) := '12CD53C7E48BF0DC131E01C45B67DDDDDD6ECBA4DC3A4DDC8D1040CC1A8775A392AC58D59D7CE94C9AF5D579C487E2D959E61982C3A2FC142C3F0DCB8F6BBC8287366EBC7E15FE811731919828E5C73EC2ECA9A66E7B6AAA110278AAC9D98FBC8FA0CE76';
wwv_flow_imp.g_varchar2_table(52) := 'C163C3F288EAA410EBCFE13A648EFDAF5D7F2FB58F3853BD6DFCCE912EEA7A7B1FDD71DB6D50789003CE2F3BC14C8E245EB7E199A0B9E465DAAC5283CF6C5EDB2A04F08A947C174904840091142B77CAF2D01911DC624480904C1D1B866B4494CF78377C';
wwv_flow_imp.g_varchar2_table(53) := '601D230218875B0A8C00024280080851BA00047C8CFECA508CF20B313E31117D8A11029126809B720CC91771138CD05B2504B0260289C25883D660C16609A02373B14F0C8A518AF28B805902F86D85EF7C3A8CF35D4978196590B08E7D8B13C03A3E91AF';
wwv_flow_imp.g_varchar2_table(54) := '20EE1C1302445EC5A583F5101002445E3F226E2636293F214093004AF6D646C0220164E4696DD58847EB2D12401FC0B83B64FA88D5C921E38F27389D2280A716CB4782804104840006C194A22C23606156130258969914EF3602428000E423BE4D0020FB';
wwv_flow_imp.g_varchar2_table(55) := 'ACC271025898F37C0225D9A28940B00408599F65248EA61237D3AB6009D04C4B25AF206001819813400EA70CD4A9BA979C45700A8D39012C0C2952644B212004682971B5506343F6F7BC222504F08A947C1749048400AD28D616195D5B015A21402B48C9';
wwv_flow_imp.g_varchar2_table(56) := 'A936468B7D4280B0942B84888A5C633F58D81E09102DD687A5F355EB1568431587470284DAC63A958BF6B82199D65D4F099D00322DBBA1C2716D45E804882BF0D26F37101002D49443EB4EEB6EA8566BB44208D01A728A562B438880D5025008D00F197D';
wwv_flow_imp.g_varchar2_table(57) := 'A7DA2159468B2401F546081010D0524D9808D43667850061CA45EA1E8080FE0CDC2C8442003F08062F273FAD943C1E1010027800C9EF27E21FF845CE66BEFEE690710288D06D0A4FB3ECA808C3E28C6B9C000D4564B1330DEB0EE483C87730101483AA24';
wwv_flow_imp.g_varchar2_table(58) := '780204D533A94710F0808010C00348353F91C15E133DF756D7AD114036B969EA867CDE3C023E7C1E6B0468BE37112D41660DA7042B04704A1C0E352626440D81003141D6215D96A6D446200402883804017710880F017C3848EE8829FC9644113E15A819';
wwv_flow_imp.g_varchar2_table(59) := '396218FFBF2441A00102EE8530FD886C209185007E50943C9141400810A228A368568408A7AFAAFF1FF0094BB573DC82E50000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(22134381148388213447)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A8660000200049444154785EED5D09601445D67E3D33498080022A24939924403C10E51054BC5658504440F1C2DB45775170753D51D7E357D775BD5657D415EFFBC4031450';
wwv_flow_imp.g_varchar2_table(2) := '51BC4565178488A0AC28392613109433409299E9FF554F0249803047775577CFD7BB188CDDF5DEFB5ED7D755AF5EBDD20817100002198B8096B196C37020000408048097000864300220800C763E4C07022000BC0340208311000164B0F3613A100001E0';
wwv_flow_imp.g_varchar2_table(3) := '1D0002198C000820839D0FD381000800EF0010C86004400019EC7C980E0440007807804006230002C860E7C374200002C03B00043218011040063B1FA603011000DE012090C108800032D8F9301D088000F00E00810C46000490C1CE87E9400004807700';
wwv_flow_imp.g_varchar2_table(4) := '0864300220800C763E4C07022000BC0340208311000164B0F3613A100001E01D0002198C000820839D0FD381000800EF0010C8600440002D9C5F525292138944DA12D5B4A9ABCBE22BEA8B46B37C1E4F242B16F3F9BCFC0FDDA75B835B162B539FC16F63';
wwv_flow_imp.g_varchar2_table(5) := '9AA66B114D8FB2A3F8FF117653BDD75B1FA9AFF746B2B3EB19D5DC2D3E9F6FF3B265CB6AD314E3AAC7AD79916D0E513018ECA1EB913E1ED2FAE8447D188422FED985D5F6DB5C75A8670E0261F6F92FECF372FE591A23BDD4E3892DACA858F9B339CD3BA7';
wwv_flow_imp.g_varchar2_table(6) := '958C2080828282BE1E0F8D225D1FCAAEE9CF7F729DE322682A11811A226D1E1F97333B16A3E9555555A512652B11E54A02E8D5AB57F6BA75EB866A7A6C243B7324231B54822E843A1D81E53A696F7B749ADEA163C7CF172F5E5CE774835AEAEF2A020804';
wwv_flow_imp.g_varchar2_table(7) := '02259AA65FC05FFAF3D8D002B7390BF62845A08A34ED595DD79E0E8542CB946A62A270C713C05E7BEDD5BE4D9BAC3114A3F3F96B7FA489D858DF948745C4AC170309A623F03993C1535BB6D4BDBE6AD5AA8DA6B72EB14147134020907F9246DA6D8C572F';
wwv_flow_imp.g_varchar2_table(8) := '89984114106844603E69FA0D9595D5B39C0A8923092010C81BA491E70E067DA0538187DEAE42E06B9D627F0D85567CE234AB1C4500C6703F3BEB711EEA9FE134A0A1AFFB11E080E10BB5B575139C342D700C0114F9FD87C73CFAF3BC4CD3DDFDAF122C74';
wwv_flow_imp.g_varchar2_table(9) := '30023F691EFDF48A8AEAF94EB0C11104505850709EAEE98F33A0D94E00153A663C02759AAE8DABA8AA7ACEEE48D89D00B460B0E0EFBCAC77BDDD81847E40603B0474FDEF9555D537D91919DB128048E659BF6EEDCB44FAC9760610BA01815611D0F4E776';
wwv_flow_imp.g_varchar2_table(10) := 'DBADF338BB2611D995007C81807F2A2B27B2F87001016723A0D3DB9555E153D88888DD0CB125010403FE9718A833ED0616F40102A92220560842A1AA73537DDEAAE76C4700FCE5BF9395BAD62A83D12E10508500EF3EBC2B140A5FA74AFE8EE4DA8A000A';
wwv_flow_imp.g_varchar2_table(11) := '0BF22FD735ED5F760208BA00013311D074FD8A8AAAEAFBCD6C339DB66C4300857EFF11BA873E636344863C2E20E05604A29A8706555484BFB08381B6208078C47FCD1206A4871D40810ECE44C0417BAB96EDB67BA75E765819B0050160DEEFCC0E07AD53';
wwv_flow_imp.g_varchar2_table(12) := '47C02EF100E504100C763D8074EF4286D29B3A9CC93E29F6E062A6912C6AB8DF5404A23A79FA716D8145A6B69A6463EA0920E09FC63A9F98A4DEB81D08B80181B72A43E1D12A0D514A00F10D3E34472500900D045422C001C1A3540604951200CFFDE7B0';
wwv_flow_imp.g_varchar2_table(13) := '0287AB7400640301B508689F5686AA06A9D24119010483FED1A4D3545586432E10B00B023AE9C343A1EAF754E8A38E0002059FF0469FA35518BD4D2682816AF187F43802EA46014A08203F3FBFC8E7D5960BCBF10A00012040BAC71BED515EBE52F409A9';
wwv_flow_imp.g_varchar2_table(14) := '97920E5818F0DFC2EBA0374BB514C280808D11E08E786B45287C8B6C15551080C6C1BFE52CB848B6B19007046C8CC0725E121499B0FC6D94774927003EA66BA047D3BF926722240101672010D3B5C3F838B2AF656A2B9D0090F66BA67B85FBA47E30CC54';
wwv_flow_imp.g_varchar2_table(15) := '1E6DB54040C534403A0170B10F91F6DB07DE070240603B04E6F23440EA59175209808FE5F6931E0DB1D952E5E24503020E4140CFCADEDCE9E79FD7AC93A5AFD48EC8157EC77285DFA76519073940C071086874666565F815597A4B2680FC4748D72E9265';
wwv_flow_imp.g_varchar2_table(16) := '1CE400012720D0AC8E81A63FCA670D8E97A5B75C0208F84584F35059C6410E1070200252E3003209C0C301407194725B073A052A030159086CE24060071626E5E0786904C0EBFF7D79FD7F812C142107083815016F8C7A9685C33FC8D05F1A01040B0AC6';
wwv_flow_imp.g_varchar2_table(17) := 'F359EA936518051940C0D108480C04CA23802002808E7E2995289F99894E32EB05CA230094FE52D28520D49108482B152693009001E8C877114A2B40A09403817D65C895470005FE159CFFD75586519001041C8D804E2BF930D13C1936C82200B10458CB';
wwv_flow_imp.g_varchar2_table(18) := '06F96418051940C0E108D4F308A08D8CA5402904E0F7FBDB793D54D3AA531C74AC4BAA2F97D8B72705F05415C473B641201AA3DC7038BCC96A85A4BC8FC5C5C51DA391BA35561B83F681805B10F0FAB23B959595ADB5DA1E2904D0B56BD72ED959DE9556';
wwv_flow_imp.g_varchar2_table(19) := '1B83F681805B10A8AB8F765DB972E52F56DB2385008A8A8AF263D1FAB0D5C6A0FDF411C034257D0CCD68C1E3CDF2979797579BD1566B6D4821008E010439065061B531681F08B805018E0114720CA0D26A7BA41040715E5E71D4E7915EF2D86AF032BAFD';
wwv_flow_imp.g_varchar2_table(20) := '0C08DAAAF4AF3712EB56B6624599D53A482100AE04D4832B012DB3DA18B40F045C8380E62DA9ACACFCC96A7BA4100087007AC6A2DA12AB8D41FBD6238018411218A7B195812B04EFCB1582FF9784B4946E954300F94C005E10404A1EC2430E4720B5E3E7';
wwv_flow_imp.g_varchar2_table(21) := '3C517DFFF2EAEAEFAD361E046035C2681F08A48000082005D0AC7804435E2B50459BBB420004B02B84F0DFED850056054CF50708C05438D11810701602200067F9CB25DAA616B04AC5780C185A470D0490CA5BE5A067745D238D43B022C6E0E17F6A7A8C';
wwv_flow_imp.g_varchar2_table(22) := 'A2FCC7E3F551BEBF90FAF43B88348FD7B028BF20483D0FE84DE5CB7FA2654B7F202EAE4AE1AA107D575A4A75915AD2623AFF8E28CA7B0D356E54E74645DB3837D0412F440B554100CEF55DC29A6BB11877720FB5DFBD13050ABB53DFFE07D3A8D12771E7';
wwv_flow_imp.g_varchar2_table(23) := 'F5F1F929CD9BF1888ECDF71BDD5AF33069F04F268CC58B16D2179F7D440BE6CDA5CD351B68F3E6CDE469208E8415C18DB6430004603B9798AF5041A0987A1ED897861E338C8A7B94340868E8F9C6F0207EF26FE3F9BFE2EBDEEC30601E0988F183C6F7FD';
wwv_flow_imp.g_varchar2_table(24) := 'F6DBAFF4F59C4FE9BFFFF98A962F5B4A9B37B55E7EC17C6BD0A299088000CC44D3666D350ED30FEA7F08FDE1C24BA84B9E3F3E64DF3A056FBEF8B895007668C7B67B055FFCBA7A258F0A4AE9F38F67D30FDF9552241AB199F550271104400089A0E4D07B';
wwv_flow_imp.g_varchar2_table(25) := '74EEA98204B27CD9D4A9F31E34E2A4D3E8D8E123D91AAF312548F850989DC4EC623C55D8B471034D7EE03E9AF7F517467CA0E594C2A1D0658CDA2000A5AE4E23893B01BDE323FB380978F8B31FD33D7460BF0174FEB809B467573F656767C787FFF1485E';
wwv_flow_imp.g_varchar2_table(26) := '525723B970EBE4D1A34C0073E8A149F7F294604352EDE066B5088000D4E26FAD74FE1CEBDCF1E35301EEA83C97179CB057973CFADDE063A8DFC103A9B0A81B65E5E4C46B08362183C60EBE23054550500400755E15100F8A7B63D128FD9747012F3FFF24';
wwv_flow_imp.g_varchar2_table(27) := 'AD0C57A5442AD682D1A4756B79579A19660802019881A2D3DA1064E0D578D9AF908E1A34848E1B7102E5B46B6F5861F48D86A0A0110C4CE212CFCDFDF2337AF441311210E7B326F77C12A270AB490880004C02D249CDF02A7E7C64C04A6765B7A1F6BB75';
wwv_flow_imp.g_varchar2_table(28) := 'A4ABAEBB91BAEFDD334E024976FCA6B6472211FA76FE5CBAF3F69B8DBC836617BEBCB67B4D4000B673890485F84BAD732717CB7AA2B38B7EE9F165D161470DA611A34FA5C2C262233928791EE0768D9082465F7FF1293D78EF3F288AD501090E4D5D0408';
wwv_flow_imp.g_varchar2_table(29) := '2075EC5CF964C74E7BD009279F4EBDFBF5A740B0303E8C3746F2C90DE737D5D4D0633C15103903493EEA4A5CED6A1408C0AE9E51325C1641422158A39292BDE9B02307D3E0638753FBF6B9FC7BB16C98DCF55DE9027A74D2DDB46AF52A7EB0C57420B9A6';
wwv_flow_imp.g_varchar2_table(30) := '70B7450880002C02D6C9CD1A3102EEAFD939D954B2CF7E74E9C41BA8138F0C92BDF890169AF2D20BF4CEB429541FA94FF671DC2F0101108004909D2A42E395025EE2A7606121DD7AD703D42EB743725F722691EAEA10DD7ED3D5B47A951805E0B21B0220';
wwv_flow_imp.g_varchar2_table(31) := '00BB79C496FA6874F4D0E134E12F57A5A09D4E4F4C7E8066BFFB760ACFE211AB110001588DB083DB17F100B16028AE4E9DF7A4DBEFFD3775E69F3B0EEA6D9F2FDC984F50595146D75CFA270723E15ED54100EEF5ADA996E5E6B6A78BAFBC9EFA1F7C680A';
wwv_flow_imp.g_varchar2_table(32) := 'EDEA34F1D20B2954C6E5E74556620A2DE0116B1000015883ABEB5ACDF707E9BE879F68281E92DC92A000E3A5671EA3E96FBE1ACF324C3EC1C07578DAC52010805D3C61733D468F3987CE38FB0FDC79935F0E14A62D5A388F6EFFBF6BF9EB1F9F58E0B207';
wwv_flow_imp.g_varchar2_table(33) := '0220007BF821292DC457D4C3DB791BE7D8493D9CD4CDF164842EBC73F0B67B1EA0DD3B76E47F8F775E63B350439250C3A6C3780AB1F83DEF0B8EC5B8705813B258BD324C7F1E776EFCBF6304909417ACBC19046025BA26B7DD589243E4D88BBDF8BCA3A7';
wwv_flow_imp.g_varchar2_table(34) := 'A1435A33AB16858044CAF0B88B2FA721C7893A022D2F9DA2F511F27A590F237F289E441427A8782E41E3B5962B09DD74ED5F68D5CA1526A382E6D2410004900E7A8A9E15B5FDB6705DBE488417E9E3DF638B34D1E990C38FA6F1974EE41C80764D64F040';
wwv_flow_imp.g_varchar2_table(35) := '9EB7027FCD3BFF9E7CE4015AB77E3D9DC6538461C79FC07507778F13428BABA666233D32E92EDE32FCA545BAA2D954100001A4829AE267AEBDF90EFA61F1B7F4C5271F7269AE55FCCD154B706647D735CA6DDFC158FBEF7FE891CDE276E2CBBE65CB267A';
wwv_flow_imp.g_varchar2_table(36) := '7AF224FAECA3F779239197EB01E8142CEEC69B894EE314E24146B191A643FD8D8200EE6702983B073100C5EF4F53F120001B392351551E78FC45A3C4D7D2258BE88377A7D33CEE5431311A6851CB33D1F69ADF2786EE31CACACA328A869CF58771BC5D78';
wwv_flow_imp.g_varchar2_table(37) := '3783601A2F8DEB0944B800C8E71FCFA2679F7CA4A130A8982FE8D4363797CE193B9E060F3B9E0B906C7B468C00260B02E0CA418801A4E6192B9E02015881AAC56DDEF7F0D3941F2C36CA77D77179EE450BBFA129AF3C4D95629D3D854D3B2DD51573F8DD';
wwv_flow_imp.g_varchar2_table(38) := '76EF4C7FBDF976AE11B06FC314635B676EAC1654B7A5967E5CBA985E7BF5791E917C679C3920EA0C96ECDB9B6EBD6752334D400016BF1429360F02481138958F0D1F752A8D1D37DE28F3C56138FEA27AA9AE760BBDF3F654FEF33A6D58BF2ECD15028D86';
wwv_flow_imp.g_varchar2_table(39) := '0C3D8EFE74E9D50D3B819B570FDEC2A4E3E5617F96A82928EEE0D1C09BAFBE441FBC379DFF5A4F17F173FD0F3DACD9A80104A0F28DD9B96C10803DFDD2AA56C3479D44E78DBBD428E8D17249FDE765FFA30FDF9BC1D3822F69DDBA35F1AFB7D17F135D7B';
wwv_flow_imp.g_varchar2_table(40) := 'D7A9205044136FBA9DF2F2FDCDF4106BF8E53FFF4433A6BD465DF3F2E9A0830FA36051314F1778BECFFF5BBDEA175ABB6635752BD9870381BE66CF9A410049D43176A057D5A80C0250837B5A5245B47DECF8CB9A104093CE2D4605BC063FEFBF7368CE67';
wwv_flow_imp.g_varchar2_table(41) := '9FD0C2F9FFA12DA23E5F42093CA2A28F46D7DE782BF51381BF165A8A0EFECC630FD1377C28882094FC82023A72D0315C53F0446ADB36B721CD37BE22619C30D4641DD00C02480B343CBC430440000E7C3172DAB4A5E75E9BC11DBDD928BB613550E40718';
wwv_flow_imp.g_varchar2_table(42) := 'A372AADDB299E67269AE679F7C94B66C16453A777DF5EED39F2EBBE646CAED20027F4D2EEECCBFF25AFE235CE06351E9FCAD8940D91C2C6CCFF1826B6EB8858ABAEF1D4F07E0242591A7D034D80702D835F62AEE0001A8403D4D99E2C3FAE48B53A97D63';
wwv_flow_imp.g_varchar2_table(43) := '27DDC5E85E7C895F7BE9699A35F36DCE1FD8C8E703C48C2F7D3C938F938AF8DFBDCC1A9DF6EA4A175F7615EDCF2410AF0E2C3A31A71D31A734CE20C25CF2FBC17BEFA0EA50192F056E362C11CB90871CF97BBA7CE28D3B8DF0D7D5D5D11BAF3C476FBDFE';
wwv_flow_imp.g_varchar2_table(44) := '8A68394D04F0B859088000CC4252623BA2739E70DA3974E639E7C7A5EE84009AD6F68F72B5DEC58B1618B9038BBE5D486B7F5DDD3044173410A34E7BEC498378CFFFC893C618C37963086F9C0928BAAB911218176564FB46E8D3D91FD06C8E355494FD4C';
wwv_flow_imp.g_varchar2_table(45) := '75F57574CAE9E7D269678F6D15854F3F7C8F1E9EF4CFD6331630D197F826F16031AAEF5F5E5DFDBDD542138D40A5A547517E7ECF98575B9256230E78582CB715EDBD1FFDE3EE87381B987BCC4E027C4DEBFBC7BFE65EAAE1A3BC44A070D68C69F18ABD3C';
wwv_flow_imp.g_varchar2_table(46) := '5CF7F21F1157E8C1E5BFDAF13A7EB38402F6DC8A15D514E223C3F7E0114231D70A14EBFD62885F5D55C904B09C6AEB6A69001F32D281CB8BEF749F0F3FF3DDB70B68324F2144F2122E7B200002B0871F92D3823FC81D384BEF92AB6FA03E7CF067E390BA';
wwv_flow_imp.g_varchar2_table(47) := 'B5D37C5A0A1073F26DC70113E53676FC26378AA986C8E9BFEE8A09F44B7515699CE27BE8C023E8DC0BC6531B11F46B65F4D1529E20A035BFFE460F733290188918E424A62146F2923DA704B61F8C9850381604905CD7B3C5DD31EE3C5E9E9B0FFCDD60BA';
wwv_flow_imp.g_varchar2_table(48) := 'F82F5773F1CE3669AEFBEFD82CD1314BBF994F0FFDF376DAB0611DF9C4923F77DA6071310FF72FA0FE03061AF900895DF10E3FF3ADD768CA8BCF502DE72DC4E30B22C090580BB8CB7C044000E6632AADC5CE7BEEC5B9FA13E980BE0759925F6F7C9979D3';
wwv_flow_imp.g_varchar2_table(49) := 'CFE407EEA505F3BEA68DEB455E41BCB7E6F008E0A24BAE30F2FE13CB31882713FDC6B187BB6FBD9ECA38768060A0B45765A7824000EA7D909606071FF63B63C38E51B1B769B83EAD56E30F3716EF58BF6E2DFDB0E43B9A3D6B267DFBCD7F8C209E881B1C';
wwv_flow_imp.g_varchar2_table(50) := 'CF0143B15720D94FF8128E053C3CE91E4E1C125B8333F0F36FA3B9050820E58EB27D11CC949B4AE341917177F9C4EB69001381F8125BD59D623C1210077E7EC57905CF3FFB24EDB3F7DE74D6797F32B2FE92BDC414E6E35933E8F187276114902C7826DF';
wwv_flow_imp.g_varchar2_table(51) := '0F02301950F9CD89757C8D6EFCDB9D7460BF832D23003E4FD8C80B88270808F2137CC34784A710C013938108E7058894E237A7BC48F5BC8A804B0D02200035B89B265564DB898ED9AD643F2EDC7115151677B770BB6D63B43EBD7186D8C310E329C4665E';
wwv_flow_imp.g_varchar2_table(52) := '929C31750A4D9FF63A13426D0A54621A8C19DB1008C025AEF77079B07DF73F80CEBFF0128ED2330938C4AE9A8D1BE9FD99D3E8D5179E894F079CA2B843F0DD959A20805D2164F3FF2EBEC9226B4F24E688C05C374E10BAF2BAFFA33D38B32FB10D406A0D';
wwv_flow_imp.g_varchar2_table(53) := '143507EB6B6B7907E3DBF4EC138FB232F1E9052E39088000E4E06C9D145E4B8F777E41021C9D170543B9535D75C3ADD4BBEF00CAE11C017B5FAC2FC71722F5B53493A70353A7BC4475880948731908401AD4720565E7E4707AEF8974F490E378DB6E90F7';
wwv_flow_imp.g_varchar2_table(54) := 'E737D6F36F5EDC43AE56AD4BDBC4D989D3A7BE46EFF01F915E8CE980F5DE0101588FF1761264754151A8A3B0B807F5EB7F301DC5F5FDF2F2F31B026DF69C680B5C0409BCCFFB145E7DB12126A0C03F99241204E0626F7B1A4A8679B273A833EFD93F7AE8';
wwv_flow_imp.g_varchar2_table(55) := '301A3A7C1475ECD4791756ABCA71E045451113E025C28FDE9D41CF3CF16F177BC71EA68100ECE107A95A0CFAFD70DAA34B171A347808657171912C2688ADA778F0E0400415DBF0EF8D2DC18666629EAE194146513BC0BA74A36D30D4F316E3193C1598F6';
wwv_flow_imp.g_varchar2_table(56) := 'EA8B3C1DA833EA1638E352459EA9A10302480D37473F25D6E1E3DBFB3D54C44B865DBA76DDB6062F5614B8AFF53B6800896A3F3A07190B8245D4AE4D3BFE19E08E2836FFC8E98C623A30934940C405EA384888CB7C044000E6636AFB16E3D57EC49A7BBC';
wwv_flow_imp.g_varchar2_table(57) := '6E5FD3D25D063988A9832833202CE17B0A3888D8B66D3BA35E40B7927D69E0E147F176E0B612ECD4A9A6A686F304DEE23C81A724C8CB3C112080CCF379CA168B0349C5EA422E6F3C3A65CC591C5318CEA7026519A9C1A26E805886B4E2D00F311DF8D088';
wwv_flow_imp.g_varchar2_table(58) := '094C8E4F551C331D48196A690F8200B683DA597338696F4A1341F14A433C350814D27963FF48FBF53E88B23966E0E58E29CE0CB6E2AA8BD4D1CC37A6D034CE13A8C574C034884100A64199390D19FB0FF86BEF31AA09120DE563C08E183484F6EB7560B3';
wwv_flow_imp.g_varchar2_table(59) := '23C1CD4444C42C3671DAB08809884D44C9260BC95A7A35D366196D810064A0EC6A19A2A6578CF2384E70CAE96753FF438E30CE07F4188146334703F1D1C5660E0CCE32F60E3C6B1C45D650ABD4D5085B691C08C04A7433A4EDC64062DBB6ED69F42963E8';
wwv_flow_imp.g_varchar2_table(60) := '783E21D8C74B8B669F57DC08A7A842FCD1BB62EFC023229C29694DC29DCE0401B8D3AF12AD8A17F6340E02118B063C3138FFC28B69F071238D23C3ACB8C45E87086F209A396D0AD7137809F504D200D9950480F95E1A6F44D28F8AEF3CC7031A97148DA3';
wwv_flow_imp.g_varchar2_table(61) := '083D74C67963E9D8E3471BD381F848C0ECE900D713A8413D81A4DDD5E201571240BAA0E0F9F411C8E629C028AE193862F4A94C02ED4DEDFE4DB513E5CD453D8129A29EC0D604A7F4F5CF9416400099E2690576E664E5D0C91C183CFEA4D32C9B0E34D613';
wwv_flow_imp.g_varchar2_table(62) := 'F888EB093C837A02497B1904903464782061048C10BD46632F9A4043868D6212E0A421D32FD4134807D28C27001B55684EC78FB67FF68C73FE48C78E3881DAB6E39880A9CB83DB4CDF5A4F40E409D4D66D3DDBD0F6E0285430E3094021F619255A4C0746';
wwv_flow_imp.g_varchar2_table(63) := 'F2546004FF69C731012BAEADF5049AD618B442908BDA0401B8C899B63685A703391C183C8963028204AC9A0E886421B17700F504127B1B400089E184BB4C4440542EFEFDB011E4E39840C3A1E326B61E6F4A9080D846FC96D83BC03903D840B463884100';
wwv_flow_imp.g_varchar2_table(64) := 'A6BF7A68709708F068E0CC73CFA763469C68F912A128343A93CF1D306A0CE2DA0E0110005E0AF90818D3816C1A79723C4FC0FA9800EA09ECCCC92000F9AF3F243620209285449EC088D1638CE980F91B88B64D0766BF3BDDD83B10AF86646D452327AD2C';
wwv_flow_imp.g_varchar2_table(65) := '8100D01DD522C0A5872EB870020D1E36923710655B963128361089E980514F00D301C3E78206BD517DFFF2EAEAEFAD7E09CC4C04DFA9AE45F9F93D635E6D89D5C6B8A77DA338985273E21F638DCE688809583D1D48B59E8052902C148E118085E0A2E9C4';
wwv_flow_imp.g_varchar2_table(66) := '101034242A138F1279023C1D403D81C4704BF8AE9DCE49B8945B54C30820612071A3A5086467B7316A0DB65E4F20FD9D85A827B0CD8D180158FA4AA3F1641030E689BC42807A02C9A096DEBD2080F4F0C3D32623206202A8276032A8AD34070290873524';
wwv_flow_imp.g_varchar2_table(67) := '258180D47A02E22C42AE276094369112AE4E02088B6F0501580C309A4F0D0111B7CA423D81D4C04BE22910401260E156C908C8AA27C0C79F45F8AC81996F4EA1A99C27906CC971C9A83413976E481404A0D27B909D300232EA0988F262E258725171381A';
wwv_flow_imp.g_varchar2_table(68) := '8D2ACE9048189AB46E0401A4051F1E9685808C7A02C29655BFACA007EFBB937E5CFCADC9E71AC8422A39392080E4F072DCDDE90E116D63B08C7A020D5989DFCCFB92EEBEED26365D5196A4C4CD042000DBBCE15024510452A927B061C37A9A31F575FA78';
wwv_flow_imp.g_varchar2_table(69) := 'D60CDAB8612DF5ECDD9FC69C3596F6DEAF271F6C2A7A5CFC6A4C8EBEE0F41368D3E69A445572EC7D2000C7BA2E83154FA19EC0CBCF3F456F4F79D1E8E1C6D1A67CAC58B77D7AD184CB2652A0B0A81998E2A4A3E71F7F88DEE1E541B75F2000B77BD88DF6';
wwv_flow_imp.g_varchar2_table(70) := 'A5504F60DCD927F1977F3D1F1D208E31D1F924630F79F9E4A209975F43871F35781B4AE2E4631E11BCC33B079F7B4A1C3DE6EE0B04E06EFFBADABAC67A02C79FC83506792BF18EEA09181D9EFF9C3DFA188A317168C611E65C3990B7218BB1802080A387';
wwv_flow_imp.g_varchar2_table(71) := '0CDB3AFC17538008572DFEFCC37769F2FDF7B81A3F611C08C0F52E76B981DCA92F1067118A7A02397C20A9F882B7B80401DC76E3B5B4F4DB797C9C79FCA0328F16A34E7BE4F114E01A3AA06FBF6623009D4707CF3FFE6F7A67FA1B2E070F04E07A07BBDE';
wwv_flow_imp.g_varchar2_table(72) := '40EECDFC5D6FA827309ACB8BE5EED0E4A54B16D3734F3E4C95653F1B878976DEB30B1D3DF4381AC927196FFF8C46CF3EF620BD3B63AAEBE1C308C0F52E76BF81F17A026D1AEA099CB6C37A02B15894AA4295142A5F6E64FAEDB16757EA5EB24FF3CE6F8C';
wwv_flow_imp.g_varchar2_table(73) := '1E446B31BAF2CF7FA470A8C2F5E081001272714C0C1A13BA1337A94320B17A023BD7AFB1FB7F386B263DF6D0BD969D60A40EA1ED25BB9000742E0986CE6AA7974C962E66D41358BE6C29DDF9B71B69DDDADF64A9AD548E0B0900350195BE518A8537AB27';
wwv_flow_imp.g_varchar2_table(74) := '308263027C16E18E2E31DA8F9F51D8F8DDD7E9B7D5ABE8E5E79EA0AF3EFF982251F17B31F273F7050270B77F33D63AB14478FC89A7D2283E7720B7FD6EF10420EEF5F1F38A45B76FBEF1BF86B3039FE6B2E173BFFCCC8811644A59001040C67611F71B9E';
wwv_flow_imp.g_varchar2_table(75) := 'CD670D74DF677F3A810F20E937E050F1C96FE8FE82011A960BF5287DF4C12C7AFDD51768DD9A5F291AA93746068220E20B86EEBE40004AFD8BE0A2A5F01BC37C9D07F21E6AD7B62D0DE6849F9E07F6A53CBF9F3E9AFD3E6D58FB2B952E984F1BD7AF3346';
wwv_flow_imp.g_varchar2_table(76) := '07C4EBFF3AA708C7FFEA6502C014C02CFF481951E15C00B3DC85763205018C0032C5D3B01308EC000110005E0B2090C108800032D8F9301D0880006CF60E482C066333CBA18E0A0440002A50874C206013044000263BC23535F84CC605CDD91301571140';
wwv_flow_imp.g_varchar2_table(77) := '4141C13E1E4D5F6A4FA8A11510B021029AB7A4B2B2F227AB35939207100C067B901E5D66B531681F08B805016F24D6AD6CC58A32ABED914200C57979C5519F67B9D5C6A07D67238040EB36FF456354180E872BADF6A81402F0FBFD41AF87DC5FC5C16A6F';
wwv_flow_imp.g_varchar2_table(78) := 'A1FD8C41C0E3CDF2979797575B6DB01402282A2ACA8F45EBC3561B83F681805B10A8AB8F765DB972E52F56DB2385008A8B8B3B4623756BAC3606EDCB41002B2AD6E3ECF565772A2B2B5B6BB5242904D0AB57AFECF5EBD6D45A6D0CDA07026E4160B7DD3B';
wwv_flow_imp.g_varchar2_table(79) := 'E52C5EBCB8CE6A7BA41080302218F06FE11F39561B6479FB8DC56A121084A0560220E1961D21505B190AB791018D34020804FC652CACF9594F322C840C20E03004788A551E0A858B65A82D8D007804F0351BC4E55F9C7F610EEC7C1FA66B81B5EF80F669';
wwv_flow_imp.g_varchar2_table(80) := '65A86A50BA3A26F2BC4C0210273A9E988852B8A70502984B64D62BA1D3AB9555E13364182D8D00780A70270BBB568651EE94813265EEF4EBF656F1E8E22E9E025C27C35E6904100CFACFE05A8E2FB76A14BE74327C0E19A6219044443819991A9D595919';
wwv_flow_imp.g_varchar2_table(81) := '7E25994752BD571A0114FBFDFB453DF47DAA8AE239209029087863D4B32C1CFE4186BDD208808DF17020703DFFDCF1891032AC850C20607F0436F112600756534AE963990420720116B2617DECEF0368E84A042C1AB19B8CD55C26808126B7B9D3E6E412';
wwv_flow_imp.g_varchar2_table(82) := '4041DE2B5CD8FD7459C6410E10701C029AFE686565F578597A4B268082F1A4E9936519073940C07108E8DA84CAAAAA4764E92D9500B83250802B03896DC152E5CA02137280409A08F0C967DE00570292B673567A47441C20CD57048FBB1981529EFFF795';
wwv_flow_imp.g_varchar2_table(83) := '69A07402704B4210521664BEA699214B66025023A20A08206F90469E8F33C3A5B0CDE6A2D000000522494441547257088048B72114D3B5C3AAAAAAC49E1969977402E84F94B532E0FF113B03A5F918829C8140050FFF7BB0AA1199EA4A2700615C61C07F';
wwv_flow_imp.g_varchar2_table(84) := '0B0F776E9669286401013B23C01DF1D68A50F816D93A2A2180FCFCFC229F57FB918DCD926D30E401011B2210E12AC03DB80AB0F4C2B94A084038805703A46C0FC61CD386AF3B546A89C05B3CFC1FAD0216650410082018A8C2E190693F04748A0D0E8556';
wwv_flow_imp.g_varchar2_table(85) := '7CA242336504D0300A788F7F0E5361386402019B20308BBFFEC7A9D24529017066601FCE0C141B8432F042810FA739DD8A32603A797A8742A145AAB0504A00326301AA00865C20D00A02CAE6FE8D3A292780402050A2516C012BD41EAF0A10C820046A38';
wwv_flow_imp.g_varchar2_table(86) := 'EFBF8F8C13805BC354390108E50A0BF22FD735ED5F19E47CEB4D75C6DE77EB71B0AB04C9BBFE7606832D088095F3060BFC9FF01EC123EDEA2F7BE985F881BDFC91A4363ACDE1AABFB678D7ED420084A940922F116E772A02B618FADB2606D0D48B8140FE';
wwv_flow_imp.g_varchar2_table(87) := '291A6953F877227F071710701B02319DF45343A1EAA97631CC3623804640789FC075BCDC72875D00821E40C02C04345DBFA2A2AAFA7EB3DA33A31DDB1180308AE3014F713CE07C330C441B40C00E0870A99F49A150D5E576D0A5A90EB62400B165F89702';
wwv_flow_imp.g_varchar2_table(88) := 'FF4C268163EC0618F4010229203095B3FD4EE5E7A494FA4E463F5B128030C0EFF7B7F37AB4E789F493933108F702019B21F016EFF43B8B77FA6DB2995E863AB6258006B0B46041FEDF48D36EB42378D00908B48A80A6DD5159597503DF23B2886D79D99D';
wwv_flow_imp.g_varchar2_table(89) := '000CD00A0B0ACED335FD71FE6BB62D51845240A03902751CEDBF80A3FD2FDA1D184710800091F3040EE594E147F9AF3859C8EE6F5566EBB788CFBEB8800FF798E704181C4300024C111C5C15F0DFC0E3A9EBF95F514DC8096F58E6E858CF03FD3BBB5485';
wwv_flow_imp.g_varchar2_table(90) := '6F9B4F54EF14B31D45008DA0F236E27D3C1EFD3606FC34FE9D236D50F782609380C9D8EB3CDC7F83B3D9FFCADB7A9799DCB6E5CD39BAF30483F90328A6DDCF147084E548410010D80E01FD134F4CBBB23C1C16BB591D79399A009A8C08066A5AEC624E23';
wwv_flow_imp.g_varchar2_table(91) := '1EC3BFCB71A427A0B45310A8E54EF33AAFE84FAE0887E73845E99DE9E90A0268348E7307F6F47A692C4F0DC4E9AAA2C67AC29715D55E12168E1B1D8080FE3367F33D1A8BD153BCA6BFDA010A27A4A2AB08A0A9C53C3D18C6D38313787A308A7F1F4C080D';
wwv_flow_imp.g_varchar2_table(92) := 'DC04049A2350C91F93199A97A65654843F702338AE2580A6CE326A0F7A9808745DA416F36202E5BAD199B0296D046AB885F99C78369BBFF4D3F9982ED7D7ABCC080268F95A141676ED1E8B79FA7A48EBC343FF3E0C4211FFECC2F7F9D37E85D080131008';
wwv_flow_imp.g_varchar2_table(93) := 'B3CF7F619F97F3CFD218E9A59AE62B555D9E4B0570194900AD015D525292138944DA12D5B4A9ABCBE22BEA8B46B37C1E4F242B16F3F9BCFC0FDDA70337156FEB2E646A114D8FB2A3F8FF117653BDD75B1FA9AFF746B2B3EB795D3E778BCFE7DBBC6CD9B2';
wwv_flow_imp.g_varchar2_table(94) := '5A1BAAAE4C25BCC8CAA0876020A01E0110807A1F400320A00C01108032E8211808A8470004A0DE07D0000828430004A00C7A080602EA110001A8F701340002CA10000128831E8281807A044000EA7D000D808032044000CAA0876020A01E0110807A1F40';
wwv_flow_imp.g_varchar2_table(95) := '0320A00C01108032E8211808A8470004A0DE07D0000828430004A00C7A080602EA110001A8F701340002CA10000128831E8281807A044000EA7D000D808032044000CAA0876020A01E0110807A1F400320A00C01108032E8211808A8470004A0DE07D000';
wwv_flow_imp.g_varchar2_table(96) := '0828430004A00C7A080602EA110001A8F701340002CA10000128831E8281807A044000EA7D000D808032044000CAA0876020A01E81FF07D8F8E9C49AAA88700000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(22134381421200213447)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA0000200049444154785EEDBD099B1CD795A67773CFAC05E0224A6A75B7C79E1F62FB99EE515324B1AF2445B15BEA995E34EDF1E33F32ED196BB144511B458220011220';
wwv_flow_imp.g_varchar2_table(2) := '08526AF5CCF8F10FB1E7B17AD34602B5E49EE9EFBB5101416CB20AA8ACC88CE50D3D5015AA32226EBC37C073EEB9E77CA7F6FBBFF7B979E08000042000010840A052046A3800959A6F1E160210800004201009E000F022400002108000042A480007A082';
wwv_flow_imp.g_varchar2_table(3) := '93CE234300021080000470007807200001084000021524800350C149E791210001084000023800BC03A526E012975AA99F908783000420703802380087E3C659108000042000814213C00128F4F43178084000021080C0E108E0001C8E1B674100021080';
wwv_flow_imp.g_varchar2_table(4) := '00040A4D0007A0D0D3C7E0210001084000028723800370386E9C050108400002102834011C80424F1F83870004200001081C8E000EC0277173ED186D920EF75671160420000108E49E000E404EA788FAF59C4E0CC38200042050120238002599481E0302';
wwv_flow_imp.g_varchar2_table(5) := '1080000420F0300470001E86169F850004200001089484000E40492692C7800004200001083C0C011C8087A1B594CFCE7497FA52EEC44D2000010840A0BA047000AA3BF73C3904200001085498000E4085279F47870004200081EA12C001A8EEDCF3E410';
wwv_flow_imp.g_varchar2_table(6) := '800004205061023800159E7C1E1D0210800004AA4B0007A0BA73CF934300021080408509E0005478F279740840000210A82E011C80EACE3D4F0E0108644CC005BD2EECE580401E09E000E47156181304200001084020630238001903E6F2108000042000';
wwv_flow_imp.g_varchar2_table(7) := '813C12289D034017BD3CBE668C090210800004F246A0740E40DE00331E084000021080401E09E000E47156181304200001084020630238001903E6F2108000042000813C12C001C8E3AC302608400002108040C60470003206CCE5210001084000027924';
wwv_flow_imp.g_varchar2_table(8) := '800390C759614C10781802A8CD3C0C2D3E0B0108EC11C001E055800004200001085490000E4005279D4786000420000108E000F00E400002108000042A480007A08293CE234300021080000470007807200001084000021524800350C149E79121000108';
wwv_flow_imp.g_varchar2_table(9) := '4000023800BC03108000042000810A12C00128D9A4D30DB16413CAE340000210C888000E404660B92C04200001084020CF047000F23C3B8C0D0210800004209011011C808CC07259084000021080409E09E000E47976181B042000010840202302380019';
wwv_flow_imp.g_varchar2_table(10) := '81E5B2108000042000813C13C001C8F3EC303608400002108040460470003202CB65210001084000027926800390E7D9616C108000042000818C08E000640496CB42000210800004F24C000720CFB3C3D8200001084000021911C001C8082C9785000420';
wwv_flow_imp.g_varchar2_table(11) := '000108E499000E409E6787B141000210800004322280039011582E0B010840000210C833011C803CCF0E6383000420000108644400072023B05C1602108040D509D40560567508397E7E1C801C4F0E438300042000010864450007202BB25C1702108000';
wwv_flow_imp.g_varchar2_table(12) := '04209063023800399E1C8606010840000210C88A000E405664B92E04200001084020C7047000723C390C0D0210800004209015011C80ACC8725D084000021080408E09E000E47872181A042000010840202B0238005991E5BA108000042000811C13C001';
wwv_flow_imp.g_varchar2_table(13) := 'C8F1E430340840000210804056047000B222CB75210001084000023926800390E3C9616810800004200081AC08E000644596EB42000210800004724C000720C793C3D0200001084000025911C001C88A2CD785000420000108E498000E408E2787A141A0';
wwv_flow_imp.g_varchar2_table(14) := '9C04DC20D68D62392000815512C00158257DEE0D0108400002105811011C801581E7B6108000042000815512C00158257DEE0D010840A03404D8DA29DA54E200146DC6182F042000010840E00808E0001C01442E01010840000210281A011C80A2CD18E3';
wwv_flow_imp.g_varchar2_table(15) := '850004200001081C01011C802380C8252000010840000245238003B0EF8CD5F4DB79D1E694F1420002108000040E2480037020223E00010840E0E8087849E1A5050704564D000760D533C0FD210001084000022B208003B002E8DC12021080000420B06A';
wwv_flow_imp.g_varchar2_table(16) := '023800AB9E01EE0F0108400002105801011C801540E796108000042000815513C00158F50C707F084000021080C00A08E000AC003AB78400042070D404A82E386AA2E5BF1E0E40F9E7982784000420000108FC33023800BC14108000042000810A12C001';
wwv_flow_imp.g_varchar2_table(17) := 'A8E0A4F3C8108000042000011C00DE01084000021080400509E0005470D27964084000021080000E00EF00042000010840A0820470002A38E93C3204200001084000078077607904E8AEBC3CD6DC09021080C00104700078452000010840000215248003';
wwv_flow_imp.g_varchar2_table(18) := '50C149E791210001084000023800BC031080000420900D81BA2E3BCBE6D25C75710238008B33E40A10800004200081C211C00128DC943160084000021080C0E20470001667C815200001084000028523800350B82963C010800004200081C509E0002CCE';
wwv_flow_imp.g_varchar2_table(19) := '902B400002108000040A470007A07053C680210001084000028B13C001589C215780000420000108148E000E40E1A68C014300021080000416278003B03843AE00010840000210281C011C80C24D1903860004200001082C4E00076071865C0102108000';
wwv_flow_imp.g_varchar2_table(20) := '04205038023800859B32060C010840000210589C000EC0E20CB902042000010840A0700470000A37650C18021080000420B038011C80C519720508400002108040E108E000146ECA183004200001084060710238008B33E40A872030D739B5439CC72910';
wwv_flow_imp.g_varchar2_table(21) := 'A80201FE7D54619657FF8C3800AB9F034600010840000210583A011C80A523E78610800004200081D513C00158FD1C3002084000021080C0D2093C9003C07ED4D2E7851B420002108000043225F0400E40A623E0E210800004200001082C9D000EC0D291';
wwv_flow_imp.g_varchar2_table(22) := '7343084000021080C0EA09E000AC7E0E180104200001084060E9047000968E9C1B42000210800004564F000760F573C008200001084000024B278003B074E4DC10021080000420B07A023800AB9F034600010840000210583A011C80A523E78610800004';
wwv_flow_imp.g_varchar2_table(23) := '200081D513C00158FD1C3002084000021080C0D209E0002C1D393784000420000108AC9E000EC0EAE7801140000210800004964E000760E9C8B921042000010840E02808CC7491FAA12F84037068749C08010840000210282E011C80E2CE1D2387000420';
wwv_flow_imp.g_varchar2_table(24) := '5012028BAD644B0261E98F8103B074E4DC10021080000420B07A02D93B00353DE47CF50FCA082000010840000210F80D81EC1D00684300021080000420903B023800B99B120604010840000210C89E000E40F68CB9030420000108402077047000723725';
wwv_flow_imp.g_varchar2_table(25) := '0C08021080000420903D011C80EC19730708400002108040EE08E000E46E4A1810042000010840207B023800D933E60E10800004200081DC11C001C8DD94302008400002108040F6047000B267CC1D162050ABCDC3743A0DF57A33CC675295AAD742A3D1';
wwv_flow_imp.g_varchar2_table(26) := '08E3F1583F0BFADD3CB45A2DFD781E269349A8CDA6F1F7D3C9387EADD5A7FA7E1EEACD86FEDE0AFDE1489FEF84417F143ABD6E985981749FE3A5D7DF0ED3D128349BCDD0DFDD0ED3F1287CF52FFE4CE7CD42B3510F33FDDDBFD3B761301884B55E27FE6E';
wwv_flow_imp.g_varchar2_table(27) := '3A1AEBE7F5309ACEE2F89AB57AD8DEDE0E1B1B1B61AC31C4F375DED463F5F3855AFC99C75CD78325CF5C9786D674017A9C0A81921040502E9389C401C8042B173D2A027600DCEDCAC6B15E6BC6CB0E87C3B0B1B9160DAE0DE67C9E3809FEDE47ABD50813';
wwv_flow_imp.g_varchar2_table(28) := '19591BD8D16C1E9D855E6F5DC67F105A4D196819E3EF7DF7FBD118375AED7D87BA339A86F5F5F530D3F52713390F0D19EDA99C0F9DE5B1359BED787D7FDFD1B57EF1CB9F87E72E5D0E9B9B9B1A673FB435168F77341A844DDDCF63ADCF13AFC3CF14743D';
wwv_flow_imp.g_varchar2_table(29) := '9FEFB1FA8F9D987EBF1F36D68FC5AFAD76F24C1C108000048E9A000EC05113E57A474AC086737D7D53063431E8C9CA5F2BE4D13074BB5EC1CFA2518D2B74ADBABDDA6F75DAD119188E26615A6B84B5B5B5F0F2CBDF0BCD767BEF5A93305284A0ADBFFBDC';
wwv_flow_imp.g_varchar2_table(30) := 'FD0E5FC7F74E9D8BC1EE4E78ECB1C7C2CECE4E1CC7645E93F1AF3930119D107FBFAEC8C29D3B77E2F876EEFE2ABCF8E20BC967820CBE221493F130F9BB4EF2ED1D21F073F97C3B14BE6E7A5F7F8E030210804016047000B2A0CA358F94800D62EA00D4B4';
wwv_flow_imp.g_varchar2_table(31) := 'A26FB79BF756FF5E99D7EC102884DEEEF4C2445B02C3890CA9C2FDD7DEBA1EE63585DFED384C2731F43F9653E01579AFD70BFAA8D7E1FB8F55AB753B0976166C8C6DA8D3F0BD57EB0D4514E2AADECE80220436DC33DDDF9FE974F4BB59F2791BFFADAD3B';
wwv_flow_imp.g_varchar2_table(32) := 'E1C52F3D1FE68A2034A3F1D7B6859C01470BEC30C448833E3B99680B41CFF5200ECA9182E662108040A508E000546ABA8BF9B0368AA931B491B5113EA610B9B7006ADADBD7A23AEEF18F6538DFB8F67668777B0AF78F632420EC6D01D8787B751D57D9ED';
wwv_flow_imp.g_varchar2_table(33) := '960CB37A5479F91DB7183EF9988E27BA9E7206742FAFD43D16AFE5ED54C4BD7E5DCF871D001FD3D924461C1C21B033D0A827F7B4A3D16E298F419107EFEB3B9270F9F265E5064C741DDD430E861D8A383E9D97443B1C29600BA0986F2DA38640FE09E000';
wwv_flow_imp.g_varchar2_table(34) := 'E47F8E2A3D421BEE74C5ED95BB0D6D5B2BEBADAD9DB8873F1A2706FCAD1B37B5DAAFCB11F06ADFABF6E4BC96B2F3D22D025FCB46D67F92B0BBF306F60FB1FB9A3E2F5DE5FBFE7640FCC72BFCD4F8FB5E3319F7F4F0EF6CCC47D35ACC0D4842FCDA7668CA';
wwv_flow_imp.g_varchar2_table(35) := 'F99033E0FBDBA908D3DD70E9D2A5D0D638EFDEBD1B1E7DE458D855B2E13C4610EC70547AFA79780840204302380019C2E5D28B13982B9C3E57B83CC9880F49A29C8CAA0DBC0DECF55BEF27FBFF4E98EB74EF65CF37F4332FF0D36A803461D0D749F6DF93';
wwv_flow_imp.g_varchar2_table(36) := '157B4CC4DBE7183BCCAF1579373A1D5B49C5C1DE35BCAAF7EFEC50D899F09EBF1D85F44F9A98983A0FFE1A3301EECB5B5048205E6FA6C8C6F9B367B435906C0B34E598F8BAE9381727C91520000108FC36011C804CDE086A568E0AABCBE7E40244A33D71';
wwv_flow_imp.g_varchar2_table(37) := '28BDAEB23919FF9B37DE8D2BFE89F6F86D28D3B0BB43E93EEEE50CDC1741B0019E69BFC05FD352C286B2F0F73B9CA86783ED15BCEF315652629A10E8FB6AF7FF9E4390E62AC4F243DD37460E66A338BE8EF213E29EBFB629EACE13D0D6C4BD43FB111D6D';
wwv_flow_imp.g_varchar2_table(38) := '0F8C06BBDA3298870B674ECB51D8730C08011CD5ABC4752000818F10C001E095C83581B86ADE33E231C1CEAB67E9017825FECA2BAF84DADAA371FFDF86B5A1F0BA57DD716FDF46D54978DA0EF0CFE27680CEB163E0FA7F4704EC2C1C1401C81ACE2CC944';
wwv_flow_imp.g_varchar2_table(39) := '54B95F332627A60ECC071FB87AE0C5D09E6A9B409106B921416E45C2C215077BDA067AC0AC87C8F52100819212C00128E9C496E5B152619C28F2B3B787DFEBAEDFCB9ADF550EC0ADDBEFC93CD6C3EE601833E96D525D1D10EBF3652D7D0D1BD89861EF8C';
wwv_flow_imp.g_varchar2_table(40) := '411DF756E807940166CDB12181A3A49A20C92DF0364252A5D089CECAA4BF152E9E3B1B0586868A10DC5F1618B745563CFEACF9707D0840203B023800D9B1E5CA474020DD07BF5F2C2796E5B5F656F1CAD0F7FEFBAE3400FECB7FFDBFC3DDED5D39032EDB';
wwv_flow_imp.g_varchar2_table(41) := '4BF6E3BDE79E3A0F1E4E5D7BEB69525F7ACD2318E6A12FE1B1A4257F36F8718C32ECBBBBBBD19919F6B7C3E67A2F9C3CF14CA8CB797126C44C7903DE1A89CFA5E8070704200081C310C001380C35CE591A011B47D7ECFB70D8DE2B641B4AFFF1F78A85C7';
wwv_flow_imp.g_varchar2_table(42) := 'F07F53A57F2E03FCF677BE171EFFCC67A353E032C0F96C4F4340A57F69B26047DFC7CA02EDEF4FEEDF8B5FDA53FDE6461E53AC06D091AEFEBD75E1A845BA4D31D0CA5F298DE1F2C50B5238DC55D45F39055218B4FAA0760238200001081C8A000EC0A1B0';
wwv_flow_imp.g_varchar2_table(43) := '71D2B20824023B49F8DF2B76AFEA9D8C97EEDDD755435F5362A073E5C6DA4F6FF7D6A222E0B5EB6FC90150E29D56CA96129EC69AFD246BDF1AFEAED3EF5A0F20FE7E75C7FDA242CE51F0112B1AF47D8C60E8D92C0658F7DEFFA8AF3E0283F0C273976279';
wwv_flow_imp.g_varchar2_table(44) := 'E3B02F3542250F7240000210380C011C80C350E39CA511F0967D0CD9AB16C075FF36DC69D39C28CAA30F78C56CA3D9DBD88CAB6667E637A5FAB7AB7E007604DA5D390CCEAB9783509741B503D0D457AFACEB4A1C5CE571FF9E7E7C06453BD2FC8498F098';
wwv_flow_imp.g_varchar2_table(45) := '3609B272A056FE0DADFABD0D70E2E9A74247790DAE32E080000420701802380087A1C6394B233019CF7EA3ACD7DCD3DDDFD3CA77B29C0D7D5A9A67311D3B004DE9010429E84505414501FEFA3FFD1FE1539FF99C7E640D01F50DD893EB8D32C07204567B';
wwv_flow_imp.g_varchar2_table(46) := 'CCE29837368EEDC909274245CE5DF0315396BFB709D223961A0EFA8A5E34C3E9932742639E6C1F704000021078580238000F4B8CCF2F95803B00A65B000D390089567EA2E4E7633A5737404BE96A4FDCAD797DC4463A5A2DBB85B00D7E4312C0FA5BF8C1';
wwv_flow_imp.g_varchar2_table(47) := '2B57C2E6F147925240450DACDCB7EA2D003B2189EC6F529D904637DCCB203621922E80DB18BB79914B06A3BCB02A06AC7F6C91A44B67FF68A9F3C1CD200081F210C00128CF5CF2241F43C0658049DB5E25DBC941A8C92978FBD67B921056E1A07B032889';
wwv_flow_imp.g_varchar2_table(48) := 'CE02431604F2EADA9FDBDEBA1B36D67A519D4FA9848970908CAE1D8F74CFDE428249F7BFD546103C8EBFFFBBFF16FEFD57FF2234551D30548F016F238C94EF409920FF24200081FD08E000F07E949A40CBDDFAA4C1EF307B4746DD49F3BBFD71E8A999D0';
wwv_flow_imp.g_varchar2_table(49) := '6BAF5F5504A011C577465A4D8FF5274AFDA6AD7D2526546F243AFED611B85F46F8EEDD0FA3A1B524F12A8FA6C63B5572E0C573A7C3541502CE0B18F5F555CF3A52E743A48457393BDC1B02F926800390EFF961740B12B06AA0EBE65D62E7A43F87D31D05';
wwv_flow_imp.g_varchar2_table(50) := '489403DBE15B2F7D273CFAF8A7140998C75E02B19DB09207FDF9188E9737103BF4ED75FF731262141BDA13E059B510CF442B7DA74876B53D72E20BFF5AE3553961A711C584BC5DB06A0765C1E9E3740840204302380019C2E5D23920309756BFA2F4694B';
wwv_flow_imp.g_varchar2_table(51) := 'DE34EBDEF90196D39DED95095EB9FA46CC07A8A9735FB727A5C1EDED68E8277B35FAA91E41A2E72F211E3725CA41B39E86221C6E91DCF436477D16CE9D3A1176B63F8C9180C469C9C11C30040840209704700072392D0CEAA80838026007C0617CCBEBC6';
wwv_flow_imp.g_varchar2_table(52) := '844289FFA4CD7DB67747DA0E588B2B7F8BEABC73EBDD30D2395A5827BA018A00C42640F7B5008EA5867204BC05E09FAFF2186BD0DDAEB62946C398D4B8D66D86B3279F89E581ABDD9C582515EE0D01083C08011C8007A1C4670A4D206D2234552E80F7C4';
wwv_flow_imp.g_varchar2_table(53) := 'BDE73F56DF00F70B880A827B0243DE1A70F9E0D7BFF9EDF099DFFDBDF8CC1339030EA7C7AA012DA7D344419F9384D8572BC5E7310C078A0068B5EF3C059708C648C0D95361AAB6C22D273470C4A24A8221BC0810F86D023800BC11A527109BEB6815EFC3';
wwv_flow_imp.g_varchar2_table(54) := 'A5752E1B5CD37E7F541354F67FDA2DD0463ECAEF4A3B60301C87EFFDF095B0F1E8135180E8C30FEFC6BC001B7E3B012EC98B21F61577E3B322E040CA870D8DC5110B6F71A820324CD4B6F8F9672FCB83D929FDFCF2801080C0E108E0001C8E1B67158480';
wwv_flow_imp.g_varchar2_table(55) := 'C3FD4DF50418BAB39EC2FF0EDBFBAB96EEB1BDEE4499FE369A5E29C7AE7C5A517B2BA066232FFF6058EF852B57AEE8BCF57B4D84624BDEBD36BE2B56128EF2C0DD3529242AA2D19403E3BD0B2FFA6B7AAE5FFFF2E7E1CFBFFC5C41668A61420002CB2680';
wwv_flow_imp.g_varchar2_table(56) := '03B06CE2DCAF5004A4C3134B05C732ACEFDEFEB19C0349087BEB40DD08A30E80B701B4B5D07152A074FA7DB8439F130AA3BE800BF557783C7BF2F3719CB183A23A27DAC9992A69306A05284AB06A1D8315A2E1D6A527E0EDAFD56ED1E51D310E40DE6788';
wwv_flow_imp.g_varchar2_table(57) := 'F1AD96800C7FBBA712C2E134260ABEF2EA6BE1F8239F0A7365164EA4C637730EC05E65405B7D05BC4D70E7CE9DB0BEB911B71B565D87DF9E0DC3D9B3A7151550E2A3CA1BADA6E831795BC4918CFB6586570B9ABB430002CB268003B06CE2DCAF7004BC6A';
wwv_flow_imp.g_varchar2_table(58) := '765E806BEAC7962156E2E0D7BFF68DF0E9CF7E46BBEDC95681FB0CD4F5C739040DADFEEB0DABF9AB85D1AA17207252FA3B77C28BCF5D0E920750C2A04482E4A4B863E2C6E6F1305047410E0840A09A047000AA39EF3CF50312982961D0E24131DCAF95B3';
wwv_flow_imp.g_varchar2_table(59) := '9D00AB0526ED89A7E18D37AF072DA3D56BC00243DE2A50599EB2F16753251BAA1F414D4A828B1EF6210E9BCB6FA764A66A804B67D43848D1807A2D698BDC52DBE49DDD4168B9AF000704205049023800959C761EFA4109B88F802300EED697D6FFBB1220';
wwv_flow_imp.g_varchar2_table(60) := '5506AC379478A71C81EB376F85B144872CCDEBB6BE16E271C31E29093CE8AD32F99CB210F43F392FE37E387FEAE9A813B0BBAB36C8123CAACBB1714504070420504D023800D59C779EFA210878B56F2720ED22681D0167DB47554017972BEDDEB2C2FFE1';
wwv_flow_imp.g_varchar2_table(61) := '3F7D2D7CEAD39F8D1503B155B14BF356BC05A022882866D45636E3A9A7BFA07C8571EC9C682726ED3CF81028F828041E8C00F9770FC669C59FC20158F10470FB7C1388658132FE36F60EFDFBEF5EE1A79DF61A75350FD2223F2A0CBA9B60AB175EB97235';
wwv_flow_imp.g_varchar2_table(62) := '4603DA9D35ADB09336BFAB3A3CEEA63B196ACFDFDB19CF5DBC109B07351BFAB9FE23ED92470E083C0C8145B6A41EE63E7C367B023800D933E60E052690AAFFD9E08F47D368F8FDC739015151D0C2405163CE9D03A50FA080FBAED481AFBEF54E2C15F4EA';
wwv_flow_imp.g_varchar2_table(63) := '7B95876210312FA1AE0A053B307FF7FFFDBFE1ABFFE62B520B94C3A2F2C5E98ADB19AF920DF78640D509E00054FD0DE0F91722109303ADBEA7C880FF445961B9040EFFBFF4D24B61E389CFE9678A1E34D56970E6DC01850BA41EE8CFB5152D9866BC073F';
wwv_flow_imp.g_varchar2_table(64) := '77530337399262A0A301D3C930BC70F97C18EDDE09DD961C19452A38CA4880187C1967F5A89F0907E0A88972BD4A117014C05182A4DBA0CAECB4F7BFB6BE19DC36D89A003F78FDADB0B9F9A89408E518D8005B3A587F2CC4B3B3AD2C7C270B66792809A0';
wwv_flow_imp.g_varchar2_table(65) := '2EA7C36D83631F03F91F1FFCE21FC357BEF45C68B922E0D0F505590E9A6B430002CB20503C0700C77619EF05F7784002515658879D00F7128832C1FABED9EA24D9F69DF570E5EA752DC25B312A50F3368142EFCA1C8C72C2DE36C8F2D0DA5F4E47120588';
wwv_flow_imp.g_varchar2_table(66) := '4ECA7C128EAD75C2334F7E5E835EBD505196CFCEB5210081FD0914CF01604621902302B18F80F6D66DF4D3AE81AE16B0B15D5F5F0F7D65D9BDFCDD1F84C79FF8DD180598E97F9D6E2B0CFB2385E0D55C48DB02591E1625927441188D2731223155CBE09A';
wwv_flow_imp.g_varchar2_table(67) := '340A7EA928C05FFED9BF8D4E00070420504D023800D59C779EFA8808C4B0BE7B0368759FB606F6B6402AB52B157EEDFD37C3EDDB3F0D237DD6D2C15319FD9E2A04C6031963A7E267783807C01180869200A37E8173012450F4E8F1F5F03FFF4FFF63586B';
wwv_flow_imp.g_varchar2_table(68) := '6578732E0D0108E49A000E40AEA787C1E59D40AD9EECE18FD558C7FBFAA95890A30249C5802403E6ADF0DAD51BD101705BE2E81CE89CB65402270AC96779A4D50AC9B684857F66720486922B0EE1E433CF846E9D084096FCB93604F24C000720CFB3C3D8';
wwv_flow_imp.g_varchar2_table(69) := '724F6038D29EFAB163617B7B5B257F5605FE4D529F57DCD2E10D8DF67AF8DE8FDE08DD8DE35A8937A3A0901D80BA33F033160AB40680258BA39681EED9559E829D94357506FCD5AF7E15FEECC50BB967CC002100816C08E00064C395AB5684C04C1BECA9';
wwv_flow_imp.g_varchar2_table(70) := '28903BEEA5AA81FE1A3B014A7F7F5E57B95FE884AB6FDF8C5B00D149701741E7E4B9DF708687C57FEA8A52783CBE931D819E72011C85F0F82E9FFC830CEFCEA52100813C13C001C8F3EC30B6C213B0D8CE5C9AFBB34637BC71FD1D25FD29F35FD2812DD5';
wwv_flow_imp.g_varchar2_table(71) := 'E38D06FDD09026FF2A8F8B679E963AF020760AF4319A258E8B258D6663452A943BC00101089493000E4039E795A7CA09818612F06635350852C9DF5B37DF0B6D75E11B2B23DF12C19D96B60326AB950ADEBDF38BF0E52F3D1F2B031C1D68F5366252A34B';
wwv_flow_imp.g_varchar2_table(72) := '15D7B54D30D058392000817212C00128E7BCF2547921A02CFC46A71BBEF1ADEF86638F3DA190BF7B0B48525849006D450156DD2CA8AE2D8ACBE7CFC672C08636091CA1B086C1A0BF137B052869212F241907042070C40470008E18289783C0FD049C23E0';
wwv_flow_imp.g_varchar2_table(73) := '4A01B70B0ECD8E8CBF14F9A4BFAF82C0301ECAE82A0AB0CA632669E04B674E85E97827AC75DAA12FAD827647390B9351E8C841B143C00101089493000E4039E795A7CA0981B9C2FF96DB7DFDEAB5D0ECF694FB97B416B64890B3F19D9CB7CAC3518853CF';
wwv_flow_imp.g_varchar2_table(74) := 'FC51E8D4A761D4DF958F22B1200907C6F24539014E20E4800004CA490007A09CF3CA53E584C0B4D60D5FFFE637C27FF7DFFFCBB0B533880D83AC1160E36F65BE544A7895C3DDFDF097E18B97CE85CDF54E185938485A01D60D68B71AFABACA9115F5DE86';
wwv_flow_imp.g_varchar2_table(75) := '4693A5A2CE5E95C68D0350A5D9E659974E6014DAE16D85FF47D20BE8280130ED1E68C36FC5C0B489D0D207B67743152E86569884CB679E0993D1AEF6FC65B8B445614765345495822A18382000817212C00128E7BCF2543921F08DEFBE169E78E209C901';
wwv_flow_imp.g_varchar2_table(76) := '7B2FDDCA80F5B8EA4F5B087BA5BDCAC30E40430980174E3F151A52255415E0DE1640520AC84A7695B3C3BD21902D011C806CF996FEEA69F7BB742FFB7E3DFC7EBFFF5BCA78A58461819DA9F4F5B5B7DF6DD7C3CEE06E6CF623CDBD301CCCC2B5F77EB2EF';
wwv_flow_imp.g_varchar2_table(77) := '63DB21B013606E2D65DC4FB4EFEE6B7905EE9FAB382F6E19CCD554C89FE92843DF4A82DE9BB789969C60BCBE930AED585864C85F3B9D44FBBFA6D5FC7E474D658A6DA9053EF3E41FAA4F80DD81C421F118EA5AFDCF2524C40101089493000E4039E77569';
wwv_flow_imp.g_varchar2_table(78) := '4F65236523E6FD6CCBE15A0FDF06C8AD7037373773B1C79D2D0C69EC4BE4673894E4AF04F63BDD7AD8D6B30729FFDD78FB76981C20F493F2B371B7C13647FF2C86E065E8D73736C3D6D656FCF968344C14047D7549FA5ACDAF2923EDF31A32E29E076F2B';
wwv_flow_imp.g_varchar2_table(79) := 'F8EF7D95F1F93307ADE0E3BDB4F23F77F654682B11D0897F76220603CB15375412C85E76B6EF0F5787C0EA08E000AC8E7D29EE5CD70AD206235DEDD765F0FCBD8DFF4046315D5196E2613FE6215C2B3F8DC5FC0AEDCB908EE5FC6C1CDB94133009EFBCF3';
wwv_flow_imp.g_varchar2_table(80) := 'E330753AFD3E47BAFA4F0DBF9DA7D4F8FB67C35D19F976D26ED8465E05FB71FB2036F49193505395819D077FEF73ED14F8BCF4EF07718F910695029E3B7D22B46A2A4D541E80EF75ECD823613256544102411C1080403909E000E4765E5D1E96FF1AEC18';
wwv_flow_imp.g_varchar2_table(81) := 'FA577BD9A8352F43E4AF968F1DABDE3D26BA2993BCD4C7DEB3B7149A77EB5FD7FDCB84876BD76FC82768CB5CEF3F87769E6C7077765487AFD2C0910CB8A328D6F0B74EC0445D06FDFB8D8D0DE51138DAD20C4349F4AEA9ABA02304E90A3F66ED6BF59F38';
wwv_flow_imp.g_varchar2_table(82) := '07E3B8FA77A5810DFC7EC7448D82D67AEA4A38DC0EA79E7E32ACAF25110427FFF97C5F930302102827011C8072CEEBD29ECA2237DE278E2B4919A6D87656B5E45EFD7B25EA9072990F6FC1B7E4E4EC0E55D32F16D3593DBCF4BD57C2A34F7C56CE80CCF3';
wwv_flow_imp.g_varchar2_table(83) := '0165FEF3B96477B5EDDE89217E85DFC5712EA7A2BFB315BEF8C5E7B4C56F23DE0AA5B3F8A80000200049444154BB0AC9B7DBDD70F58DEB72AAC4D5017A7D76ACCFA646DADB2E669E1AFE348F605FFE35452ED40BA0AD0739AF4A0047741CB470D5425ECA';
wwv_flow_imp.g_varchar2_table(84) := '14CBFCFEF06C105825011C8055D22FC3BD5B5A894A40C69DF05C4196AE3CD5F2266E0D943D894C0573AA9D1FC4684DAB2D05BD5A3BFCF0D56B5ACD6F44E39CF4E0FBE4C37903DE4270ED7D4396D70E8196E3E1FCE9D35A992BE16F7C27FEBEDDF6F749D1';
wwv_flow_imp.g_varchar2_table(85) := '9E771CDE7AEB9D4444482B74E70878CBC52B77E70198BBCB0BD388CC410E809D94F978373C7BF14C8CE63811D1C983AB16292AC33F0F9E01027926800390E7D929C0D8FEC337BE1BFEFD5F7D5589645E936A29ABAF5EC9B6B45A8DFBD925CF21ABCBE087';
wwv_flow_imp.g_varchar2_table(86) := '9A32E5EB33453D265AA1BF13BAEB8FA9C9CF3846E7EB0728FD39625293D18E2D851D499131BE70EA84C2FF5BA125CB5C5774C1BD03620B615F705E8F8EC5DADA46DCEFBFFACEFBF1DCB142F9AE16307BAFFCB590DF6B01BC7F99E144D76B69F5DFD2333C';
wwv_flow_imp.g_varchar2_table(87) := 'F3853F8C0D8A26CA2FF096C6AA4B140BF0FA334408149A000E40A1A76FF583FFFE9BEF4943BE19FEE167FF2DFCAFFFEE2F9444368806C90E402C575364A0CCC778AC0A885E5DC67F471AFA6B7200DE55326033B4D5496F28437A9003E095BF0D774CDE53';
wwv_flow_imp.g_varchar2_table(88) := 'E9DE6CD40F97CE9E964325764A2A54CFC0B822F7671C2D8861FEF55EFCBC0DFDA07E2CBCF4D24BD21AF84CC49C5615CC142698C5E4C0FDF720E675DD336E014CC3D993CFC8617324222891334926C40938BAB73749E1E480407E08E000E4672E0A39921F';
wwv_flow_imp.g_varchar2_table(89) := '5C7B5F7BD2CE4457C8592BD3672F5D085329C8B991CC5406D05AF8DE2357AAB98C565FC652C9695EA5EA9C68AC1442CFF33155FDBDF7D8BDAFDE5B53A29F42EB69A6BE43EC7365C977D44277570BFE2B6FBC2DC3DFF3D23B7936393FAEA7DFEFF016C2D4';
wwv_flow_imp.g_varchar2_table(90) := '2D83FD79196B67E47FF1D98B61B8F3A1B82A32304FF400E67BC9042ECDF31862BDBF5A0AB795B93FD52D465AC9BF71FD5D25607663F87EAAEB34F43B8510F6BDBF3715BC4DD10CE370E6C4D3A129072035FA6C01E4F9CD646C10589C000EC0E20C2B7D85';
wwv_flow_imp.g_varchar2_table(91) := '2BEFFCE76890BCD2ADC9E0CD14FAEECAF83FFD85CFC715ADD73C43194F3B045EC52652B88D30D4E79A8DB64C8FF6BC737CC45AF8BD4CFDDDFE76CC7188B90D32FE31F35ECBE5DD91EAE7B5377FF3F68F5DA4A7BDFA642F7E36D53336F7CFA29F4B7B3FAA';
wwv_flow_imp.g_varchar2_table(92) := 'F169356F07C04ED42F7FFEF7E1DF7CF90519636D01EC3913B12450ABFEB865B05771E173A6EEDEA72CFEC17812EACD35E51FBCA184C2753921C9EA3F2951FCE4030720C72F1F438340C604700032065CF6CBBF76E3A7325C325E7B8A76331B786F406BC5';
wwv_flow_imp.g_varchar2_table(93) := '3FD276C0F397CF847569E06F2B51CDCE40B3967497EB76D7D41C67475B05F98F0078BC750DD3E5798E04786B23CDB677987D6DFD78B8A26E7F733934B6B70EEB6FA8A4CFA1FB030DB01C808EA2060EED3BD230D7AA7E3AEE87E71549F15EFC5C32BD49BD';
wwv_flow_imp.g_varchar2_table(94) := 'BF1C0BDDD7E57F3E7677B793EFB5DD309EF41389E118F66F87B76EDED67ADE63D67907BC80380065FF17CAF341E09309E000F0762C44E0476FFD24AE88C74A544B95E81C229F6925EBBF37668370F6D4E9585AD6F47EB46AE366DADBAEEDF599B7F67C9E';
wwv_flow_imp.g_varchar2_table(95) := '0F3F838FB4798F458E6C78FDF35887AF5AFF6FBFFCDD70FC91C795F8A76794688F7FE7CF79EBE32029DEB63413B677A5DA772F69B22627490B78394B274F9E548421D15870E4C42B7AEB04F8BA36EDCEFA1F3BDFA0A50882C2FD8E0ECCE69DF0C32B6F86';
wwv_flow_imp.g_varchar2_table(96) := 'A6920467AE08C001C8F3EBC5D820B0520238002BC55FFC9BFFE8DA7B31ECDDD52A3F0ADA28796C7DA32723265D7C8BDBC8C0C570F97418CE9C3915F7CCBB1D779ADB8D7BEA9371BE3D80B494CEAB731B751F7678FC6C2EBDDB9DD4A5F8A7C43FD7F28B41';
wwv_flow_imp.g_varchar2_table(97) := '7F5775FB52EC4BE474770FECA697CAFEFA3EA9ACAFB7FBFDF3984731ED87679E79266E355896772647CB9516D1499063A04E013A6F1A86DA9E686ABFBFD6EC69F5DF0E57AEBF1D6ADA72A91FD06C880840F1FF0DF20410382C011C80C392E3BC48E09BDF';
wwv_flow_imp.g_varchar2_table(98) := 'BB1A1E7DF4D118FAAEAB998D8FFBE568E7AA5D4F8CE85C21EA610C6F5F72BDB9B6083A0AFFE7BDD74CDAECC8CF158DF45EB39D9EF6D9FD9CDF51CDBF1D013B413EEACA6F18EDC9F43A7870501260B2B24FB650EE57DE73F144E21C243D02EE7CF0ABF095';
wwv_flow_imp.g_varchar2_table(99) := '2FFF49E8AA4CCFE582AEB688CA7F8A05780BA0D7919A9F4A01876A4CF4F2F75F0DC7551530730EC15EA4E5935E571C00FE2143A0BA0470008A3AF739510A1ED77AE19D9BEF4A0CC7496849925F5AD61655016530A33C709A196F95B9415F8BD871B870FE';
wwv_flow_imp.g_varchar2_table(100) := '5CE835F35D26E86748F7FE935A7C6D074823DF46D906F8EABB7F7BAF294FAAE1EF0880193807E0A0663CA943916E35A4C985A98ADF4439029B1BEB61FBEE1D751B6C2AB9F2C9D073D5859327952FA09840702185C7D354ED7EA875C36B57AF878EA483B7';
wwv_flow_imp.g_varchar2_table(101) := '76EEAAD39F1B027DF2810350D4FF00306E082C4E000760718695BEC224F4C29BD7AFA9AC2F2991AB290A1033DB15A6B6111C2B07C0AB54AF901B0A5147511B65D4B995ED5C9FBF78E60F72CD2FDD024843F5B1044FC97EFEFBDB6FBF1D76EBEB71F5EE15';
wwv_flow_imp.g_varchar2_table(102) := 'FBBDD5BCF6EABD9A774BDE0322F0F13AA9804FCC93D8AB3018A8F35FC7CA822AEFF3459C58A94C80D0D15680CB2B4F9FD2B6801CAEDA7C1C1D8DBAEE359934C2EBD76E845647D109C932B7E5301C747F1C805CBF7E0C0E029912C001C8146FF92F6EC9DF';
wwv_flow_imp.g_varchar2_table(103) := '376FBCABAE77568E4B4A01A3B4ACF7FD1F400BDF5501DE1A3873EAA9A0E8B692032543EBA08016B88E1AD828DA88395930AD4B8F918598716FA398ADB48A750C5CCE67819C58DDE0BA7EADAAB5DE96E37333290FD8E7300F5702C4D23D8D36CD2568697F';
wwv_flow_imp.g_varchar2_table(104) := 'DF3F6B454EC936894B237BEB6BD178CFF74AFD143F49047F7615E6EFADC7CFD9D1481D92B3A79E8CDB0E3EDEB8A63E01AAAE18AA24D0086BCAC338488A1807A0FCFF467942087C12011C00DE8D85084827275CBFE1B23367BF2B214DD67F2A4356D34AD5';
wwv_flow_imp.g_varchar2_table(105) := '86EDA014BF440CC81BDED2A09722DD73972E2A41B01F8E6D24DAF635F7A897C173D9A057D5E98A3CDD8FCF5AA9CE02C70EB5F7BA6DB5E6ED878634F9ED14BCAA307B53E57B0795F9A5DB1FB14B5FAC8ED02A5E5A0213ADF0FD7CCF9D3F29E7269102BEF2';
wwv_flow_imp.g_varchar2_table(106) := 'FAD568C02DDE13A329722E5C16989601A6CFEF2A04FF7E2A43BFDE6B2821312903AC4B73206A323832E0CA01470E0E985D1C80855E7F4E8640A109E000147AFA563F781BC337DFBE1557C4DEEF1EAA31D0A6AA00E24AF501B6F7D37DF598DDAE3C02CBD0';
wwv_flow_imp.g_varchar2_table(107) := '7EA084B7175F50273C2D6CE772267E53073F882578BE765A8E3771FA7D86878D685706BBBFBD153A6B0AADABD6EFA5EFFD303CFEE9DF55DE43D2C067FF08402DE608D8E8277910EADE2727E91FFEEE67E12FBFFA1752FADB8DDB227575FC6B29837F7B77';
wwv_flow_imp.g_varchar2_table(108) := 'A856C237E36ADF7915E3BD36BF693E85B7576CE47D389A309674B07974D77AB132C18E92EFE7C35B0B073948380019BE3C5C1A023927F0900E80FF635BF2EE2E399FB0BC0DAFD650DDF9EBD7641C8F256D6D95D97FF7C30F12519B18B6DF3F443E8E19F3';
wwv_flow_imp.g_varchar2_table(109) := '5AB1EABD72C25A2C9D534DFBDA7A3BFCD1937F18BADE5F8F75F08923E0E8800D9BDBF08EBDF77D4092DBA2BC5C6E67236A63DF95D6FF58FB1A7678A6DABA70D583F50EF63B5281241BE96894E5E10CB6EF842F7DF1D9D83EB9D1D4B5A5E6E744C35F7FB0';
wwv_flow_imp.g_varchar2_table(110) := '158E1D7B443F6B47637EFBF67B61D24A74FF93EB58DD4F0C2C08A4E84334F4FAE76851227704ECE9AB1DAAD856F83EB5C2FDC68703B0E81BC2F910282E818774008AFBA08C3C1B0236886F5C7F4796CD0A755AE1CA20DAC84583A5D0FE4165705607ACD7';
wwv_flow_imp.g_varchar2_table(111) := '65B4860EF3ABCF7D9415F62A57C64D5F1B329C27A451DF96B16DC81A5B6AD86570D61988EA770F106558E4C9A74EC6D3EA7DE80885447FAEBEF9566849FB7F20A3ED107D634FA3FF93EE6101A154023976E9930EC2A5F367C25C8E8C13F81A72A09C3059';
wwv_flow_imp.g_varchar2_table(112) := '534E402A2E14830A2EE1D3377FFDCD57C2F1E3C7C3BA9405DDF1CFD7B3B360C3EDEF7DD8B948120993957F1AF64FA30638008BBC019C0B81F212C00128EFDC2EE7C9B43AFF8EEACEBB9B8FC71571474A780329DBC5B2B60312E43C40AF541DCEEF767ED3';
wwv_flow_imp.g_varchar2_table(113) := 'E1CE598069199DF303D23AF83FFDCA97A338CEFD75F0E9CA3AAB877504C03AFB5D85E4ADF97F43258F036D0374B51DE02447EFD1EF77B8E2C1C98AF21614AE9733A14CC7F3679E09B3E176ACE99FCE9372413F871D1C3B447327372AC4111B0F85F5B8ED';
wwv_flow_imp.g_varchar2_table(114) := 'F1F56F7C537A0B8FC76A8BDDC13089B0C4A44229096E6FC7BFEBC47B65988E9A986DBA1DF04963240290D59BC37521907F023800F99FA35C8FD0C64B2D71C2AD9FFC57ED8F3B755F26C58651B6CC0EC14106D256D406B2A9DAF9B4D18DEBD91D026FF87C';
wwv_flow_imp.g_varchar2_table(115) := '19B5639B1BF7EAE09F79DA75F02E6FD3EAD716D81DEF323C6A32F01A5D4CD47B2B2AFE39D92E91FB75525E9AC3F08906565B074E88B40310F322D4A5EFDCC9A754CEA7ED12FD89CE85221F3EDC0FC0C63E7508FC336FAB2415043A5F950F6FBCE9924B97';
wwv_flow_imp.g_varchar2_table(116) := '07263D076234445B06F797293A6261A729CD3D200290E10BC2A5215060023800059EBC3C0CBDAD55EB8E22CF6FBDFBE398BDEEFD6787A86D7CE60A793B84BFEF219FA1296DFB91D4EC62883F5A3C09DDC8D0DAB08D637321E7E2DBB1903C6EAC831FA80E';
wwv_flow_imp.g_varchar2_table(117) := 'FE44AC839FCD2DB693DDE1AD06A9F1AB54B1A6BDFF9BD2FAEF6A4C89D3D1D0EFBCCDB1DFE1423CB7ED6DB654452026EB4AD69B8D76A21350AFD9B948AE1531A9E6DF3180BAF20B92C886F222D40B60B72FD53FC90CCB57101A6D435C7B5B0E96FA2C2877';
wwv_flow_imp.g_varchar2_table(118) := 'C21192B439517F68ED815EDC1A48B70AEC08E00064F77E7065081499000E4091672F07639FCDAC40B711AE5E7F2F8C6CBCF79AFEC83C85715FA6B3735021DAC33F441AF6F7D74B679F8C0E82AB08DA6EBEA3A880F30E6C1C6D182DA5FB1B25C2A4A9CF6F';
wwv_flow_imp.g_varchar2_table(119) := 'B2E3657E25DAE3D5FC504636EEAD2BA960AAF3E3A32837A1D670839D9A9EEF6D95FDAD6BD59D64F57B4F7EA08A0737E6F1359D7DEF15BCF7F91D1598EE55273847C09182786D8D37551074D2DEA54B9742AF3E883A03F13AC33DE749CFE27BC6664ABA9E';
wwv_flow_imp.g_varchar2_table(120) := 'BB025A4F202600CA61FAE1AB57436FF3517DE6E03AFF83E8FA1E1E93EF7F4EB916B5899C083517726EC54839072D4566382000817212C00128E7BC2EEDA99ADAABDE19CCC3CB3F783D7CEAB39FD34A5E19E832AAE3A176AF3B1B61384F12D38EFA489D00';
wwv_flow_imp.g_varchar2_table(121) := '99DA5875F0953FF9526C9233756580F7DC75C432393904692B5D2B11A6BAFBDE3A882179071C621F0385D495D8E7AD081F368031F94FBD0CBEF7C357C2A38F3DA14887C2ED5A81C7263CFAAC257F5D9D902800B66228DF4E871D82549CC717F7CF9DE790';
wwv_flow_imp.g_varchar2_table(122) := '081B59D9C87BF58994F085535F48AE27236F636BE722DD56682AB16FA0F3ACE8E7EE7F03550D74BA1BB102E115555E287350AC1733D0291B3FEBAFFEE967E1AFFEFC4FC3DD5FFF221C7FECF1D85ED85B0C1C1080403909E00094735E97F65435B5F60D0D';
wwv_flow_imp.g_varchar2_table(123) := '65EF874EB876E3560C773BABDDD27DD108EE5F05B8D038933DF510D67A12C05193A17367D56D50DB03DA195044406A7816229242A18F54D3DF8638AD8D8F7D0ADC4E574674A87A7AB7DBF54A78B7AFFC03CB18C776BBBDF0EE7BEFBB5621CA19BBEDB113';
wwv_flow_imp.g_varchar2_table(124) := 'FB5A96D9D5F7DEDFB751B713E008808DBDFFA48D7DFC791B7597ED4D654C7D6F1BFE514CE453F5C3603B3A0C972580D410CB5E47E7AA53625CF9EBE71BBD6EB873E78E3A278A71DCF7D7BD64F86FDCFAB198BBDBD0623910B17783C633D1B3CEC7BBE1D9';
wwv_flow_imp.g_varchar2_table(125) := 'F3A79563510F5B123D6A69BB236BA5C5855E004E86000416228003B0103E4E8E59F25A2ED7A55B7FE50D85C9A594E723CAF65ADBC7FFB7C091AEF45319E08F5EAAAEC4B8B90573B4F277529D93EC9EBF7C497F57D85CC6D1DB015128475AF936CAD60F68';
wwv_flow_imp.g_varchar2_table(126) := 'AA739E57BC77EF6CAB64D12D77ADCE67F53DEBEADBA1A927823A5ACD5FBBF59FE3EFBDE7DE9141F4F7BE4E57D7F06A3F26F8E9B0C1B6A177A83F75327C0F27FFA5AB6CE72C4C748FB40190CFB1D3119F4DE58D3FFFA7BF0F7FF5977F1176B6EFCAA9E9C4';
wwv_flow_imp.g_varchar2_table(127) := 'B15A17C1DD067DCF862B2C542EF9EAEBD7B505F08842F42A935C30441F1D0DE759680C2211CE9FF8829C8A246FA0AD7C02771DE4800004CA490007A09CF3BAB4A76A698F7B47ABD9AE8480BEFFA3D762C6FCDAFAB1D81237358C8B0CE6FE32BF8F7302E6';
wwv_flow_imp.g_varchar2_table(128) := '0AE5DB107B4FDE6179AFCA3B5AC56FDDB91B5E7CF145EDABDF0D1B2AD9DB9551B5916FCAE0ED68A5EE55B8657CEB5AEDA6FAFADEF3778F81444BBF11AEABD9CFAC9964E87BA11D1D013913BD6EE2E4CCBD572F039EEEED4783AFC39FDB5037BEBB77EFDE';
wwv_flow_imp.g_varchar2_table(129) := '13E489657EBAB7F30F5CE16047C1E39EC676BDFA9DFC085D2A4CD429F1F9672FC6D07B8C30C80B48E58F1D92F7AADCF908758DCB6374546191C3D18BBE9C8BF5756D2D8C76C3E9A73EAF68853656F40CFD8172122481CC0101089493000E4039E775694F';
wwv_flow_imp.g_varchar2_table(130) := 'E5A4BBB642F077B677D4856E3386A607DA2B8F1DF2D440E76021A08387BA9F1330AF493E588675775789764AD26B68DB21F610B05D55B87DEBC37F0C5FF9CA9F4449E1B656CB561E5C5BDBD078A59CA7AF63571F58A0475B1616DAF11EFBD7BEF1AD70EC';
wwv_flow_imp.g_varchar2_table(131) := 'F8E36ACCB31176158E4FAB1A1CDA8F4D8E6498BDCAB7911FED4915A74F9124D4B5E2EFA343709F4E8023040DE510DCCB4388B59289908F230F1D3925163A9A299AD196DEC1A913CF240985CE31D0EADFE7BF734BAD9765F31D9170ADE5A211005711CCDD';
wwv_flow_imp.g_varchar2_table(132) := '7340BC622F860B674273AFB2A2E6AD8D3DB1A18367894F4000024523800350B419CBD9789DB9DE5953DDB9C2F0F37A37BCF9E62DC5D8BBB14EDF0EC05149477F92131055F4DC554F2BE35DEF5BCBF8262D7BF7D408350E1BB973A74F68852B03ECCC7A0B';
wwv_flow_imp.g_varchar2_table(133) := 'E4C4AA818E2215FDA82A6823E8E34D75D4733B5DEFF76FEFC8F86BB51FF7C9755D1BE9786D9D9F4AFC5AC2D886B9AB90BD8D7FAACAE7FD7D87EDD7E474D819F0D6881D889DBE647DB51530724D9FD7FE72103CFECE9EB4EF440EC03185FCDD53A111BD18';
wwv_flow_imp.g_varchar2_table(134) := '234C34079C68D88EE3D9135A88B183C57200BC7D22AF248EDB32CE93FE563873C29D19135D063B2B1C1080403909E00094735E97F6542D19CEDDA19AD0A8BE7D77380B2FBF7C253CFAF867B537EEFDFFB1CCE3D119908FCB07A8AB14CE86D72BEB96F6E5';
wwv_flow_imp.g_varchar2_table(135) := 'B776B7A4B0A7FA78DD76ACBAF8594DFAF8DEA657829D9BF0789FFFC30FEF6A152DE32641A1C7368EEDC9162786DDBA03233B077A9E18BD90414EF7EC0D35460BFC731D896C71F27C494580FE6E79625701E89EA74E9D0A2D451CEA562F9493E1EBBE75E3';
wwv_flow_imp.g_varchar2_table(136) := '9DE85CF4B42D1135FB65E4FDBBA1AB0A746D3B0956F673F960BAFA8FC6593F4FEBFBDB7226921247F750582CC7C2CED1CC51136B15E8399AAADAB870E6E4BDE4BFAC951697F6A272230840E09F11C001E0A55888804BEB9C411FB5FA65C0FA4A4C7BEBD6';
wwv_flow_imp.g_varchar2_table(137) := 'ED305767BB818C6C532BF4B81DE044B7BD232ADBEDC9D6C6B2B8221F329C136F83A851D0C4CA7C72307AB2A4A79EFE23ADE093D57DDABD2F4627B460B7C3F2B61C819A22016339283EA28E81CB17E41058D0C78E8093F3EAF771CB025312419176819C89';
wwv_flow_imp.g_varchar2_table(138) := 'B845A19C838BAAA6984AACA81935141207278D7CC4ED969DBDF1D9D1393AFF2E8BC7E39A1080C03E047000783D1622E0BD732BF83917C02BD4B91C81D7D5CEB6DE96688E56FF75ADBC53E3FF71AD693F29BB7FA1412DF1E4A656EA5ED93B84DF5778DF06';
wwv_flow_imp.g_varchar2_table(139) := 'B4AD3FA79EFAC368402D28E404452704DAE9B1D4AF5B0A5BEED88EC0F55B3F497400C4CFD1041BDAA81BA0ECFF245171B115FE4128EC7F8D349E8612207D285811863B775549712EEA39A4118034B2115507E5ECD811F0D8662E03E58000040A490007A0';
wwv_flow_imp.g_varchar2_table(140) := '90D3969F41D762273F25BC69F51A93DFB4B73D5354C04E80F7019C757FFF612720CD6AB751297A88D92BE8968CF9DDADEDF0C8238F84A12A0CCE9EFC827828475FC6D122C636F4AEE7F75787F5ADFFEF4840D40B188EC36B57DF08BD8DE3DA7ED08E83DB';
wwv_flow_imp.g_varchar2_table(141) := '0E7BF5AF2D81D868F0806E838BBE097600BC953054C67F9C3F3572EAB41C05381D45955C8D604724963EEE691C58EF60EAD24F9D4C0460D119E07C08AC8E000EC0EAD897E2CE968BB5046F5A07EFDA71EBE6BFFC831F84C73FF339859593C4B87B2A787A';
wwv_flow_imp.g_varchar2_table(142) := 'EA3412906E05141984931D5D3EE87A7F87F11D01382307A0E5AD0F75115078243EBFD5096305811C201B5A2B14DA0970B440A5FD2A475C0BDF7FEDF570FC91C793263ECA699848F96F2FDD2033446E3C14258FAD522887CD49892E03FCC77FF859F8B7EA';
wwv_flow_imp.g_varchar2_table(143) := 'BEA8C605B19AC1E37632635A1191260716DD81CB0C2C1786400108E000146092F23CC47A4C449B45A39586ACA773ADFCA568F7CA8F5E5541C066347C655AF5DF3F1F5E417B156F23E992B99854A79C88179EBB10B9B876DF32BF6EFDEBE35E5F023B0C32';
wwv_flow_imp.g_varchar2_table(144) := 'AAD21394DAA07A044C9588276BFFF20F7E143EFDE9CF2A815109828A161CD46C68D177C3E37755810DBAC7E379B4805257550C67CE9C0ADDFA246E5FB8E431DD8E48BB0DA673BAE818381F0210580D011C80D5702FCD5DAD96B726511B1B87D4B8C52632';
wwv_flow_imp.g_varchar2_table(145) := '2ACB7BF5D5574363FDB1F8AC362E69BBDFFB13FF8ABE82748EDC48BA07767EBCDDE1A6425E353F7FE98292E5B6B4E79F6807D495DCE732441B7567F96F3EF268940EB60C71DC0A512C3D759CAEBCFEA6C488145911C3AC23001AECDEFC84189988635168';
wwv_flow_imp.g_varchar2_table(146) := 'C2D512D64CF8E2B993D1B9E90FA4F3B0278F9CBEBC4945C401DD1E4BF3A6F32010281F011C80F2CDE9529FA8EE64B058F69634C671899CF78AEF6EED4409DBEF5EB971CFB0A4FBFF6955C0C725052E75F04770B3912487D77A120C92316FB93DAF12E79C';
wwv_flow_imp.g_varchar2_table(147) := '1838565EC4F3CF5E96D6FF4E6254BD97AEAD12E701A4B90F7185AFF0BF5C03255126C97ECE0FE8F436C39B376FC79C80AC0FCF59D27C282963F49CC42648DE869072E2C5A7FFF5BDBE062DE904A4AA879EE3182DC8B84A21EBE7E7FA10A832011C802ACF';
wwv_flow_imp.g_varchar2_table(148) := 'FE113C7B2C5593816B45C53AA9D8C980784F39B6999563F0AD1F5E8F59F03618F72700FAD64917BD62D791B94DEF5421732BE97B31DC70685FFBFF16D8B1CEFF5C0EC2C5736763CB5F3FABB705D2463FC9EA599AFF2A17AC4B7DCF9D08C74E0C5073A5D7';
wwv_flow_imp.g_varchar2_table(149) := 'DEBC196AAD247A90E5E108869B0ABB12C02B7C1F69CB6267FC6FD48651CF2056014C9D2F90380AAB9F37674866CB264BEE5C1B027920800390875928F118E6B556B8FAE65BA1A1D2B17E6CB79B849947AA755F93AA5D3478253E2CA76BE3BF7DF74E78F1';
wwv_flow_imp.g_varchar2_table(150) := '85E7B4E76F153F39036E2E20E7214D84B4E85FC3BA004A0E1CA943E175755694AB90B40F5EE111A30272629EBB743ED4249BECE64F1ED3AEE6AFD753A967C6658A2B7C746E0D81D213C00128FD14AFF801E500CCB42DF0E6DB376379605D59F13112A090';
wwv_flow_imp.g_varchar2_table(151) := '772A2EB3E211667AFBA99ED56B5537FA994D06E1E285F38A0E281740DB049625F63E7B1408927314E588B524FFDE2BAF85E38F7D263A03730B09ACF0B003E39ECBFFF0B3FF27FC6FFFCB57F5ED2058FD71EE6D8EB89D91243772400002C523800350BC39';
wwv_flow_imp.g_varchar2_table(152) := '2BD4882D1464A9DB5795D836D5D79E3A05BA642E0D23CFAC455FE2C3023B6E01EC55B38D7E4DDB0303D5DA7FF185E76376FDE6BA1B0625224A518A58D2C66F5E53B73FB5571EC7B2C2DF2828AE02937B16AC49C360AE4641674F3E15C5815CD5E0ED8DE4';
wwv_flow_imp.g_varchar2_table(153) := '586D8462154CB8671E09B025749859C101380C35CE796002B1544CA1EC86F4EBAF49FE767B77249BA1B6B87B7AF62D4BCF95F870A4DFC67D6D5DBD129428E81C81AE5AECFA7B27DB9D3DF5548C88D821BA79F3A636089444D85E8BC980757192FBB4523A';
wwv_flow_imp.g_varchar2_table(154) := 'DE96D8D9D90EEBDAAE71E4E2D4D35F081B7A168B3F9541C869A570B93904564C000760C51350F6DB7BA538514F8028182491A0EB376F2912A084414506EACD764C922BF5A1ED0F87F8ADA4E7AFB124504CA2EEBE9302F7A47453A9DDA6993842A2A8402C';
wwv_flow_imp.g_varchar2_table(155) := 'AB5CB103E0688D0F8FC38BFEC409785A9D03B57D311AEC5510947A067938089496000E4069A7361F0F969699D9B0F52537ABDCF870FBC73F55C31B85FE15F26E649CE5BE6A0A3389ECD8F0A71510510F41C6D43D01EC14D46BCA11703B637D2696124A56';
wwv_flow_imp.g_varchar2_table(156) := '3826FEC97198B855F08A1D8054C4C9E3DBD95169E7FA5AD8DDFE303C7BF952D430705E03070420504C023800C59CB7C28CDA4964DE9D1B69B518856DB467FCCDEF7C3FAC1F7F4CDB006AB9BB57FF5E98077AC8817A95EF723A1B528B05A592C94E0EF4D1';
wwv_flow_imp.g_varchar2_table(157) := '733F003902E6E4EFED04448DFDBD3E09ABAEB39FA91D724BAA8E356D4738E9CF65FFAE04E8EFDC09E755DED853CF030E0840A0980470008A396F8519B50D5B92C96E7D0095FF8D257BAB44B7776EFF4DCC7277267C998F7B657EB29CA912A2A322A9A6BE';
wwv_flow_imp.g_varchar2_table(158) := 'B3FE5363EF5C013B01A9C04E4B15138E02ACF2E8C492BF519869FC4D397033F50E7062A23629F46716CE9F7C7295C3E3DE1080C0020470001680C7A9071348EBC4BDF2F51FAF226DF41C52FECE77BE13DA8FFC9E0CA0CAE464542692CAF52AD986D06172';
wwv_flow_imp.g_varchar2_table(159) := '470BEA28CD1D0C79859F70DF838B17CE86BA1C95465DDB19D161917BA02D8CBA1208E79245E6800004F2490007209FF3529A51D9A07BE56BA3EEC3ABDBF58D63713FD9ABE06FBF722D4A06FBF77105AC9FF933DE238F8EC08AEBE04B3311193DC8541D0B';
wwv_flow_imp.g_varchar2_table(160) := '5DDAF8DCC5F3D232E84B0E59351F6E2CA46D82415F2D86251FCC010108E493000E4056F342596A249BEC1B27E16F97BDA5DF3795EC16CBE2A410F8EA6B57A2FEBD4B05777676A374B01D0497C0273AF51C7925E00C8096248CFB5B1F4627A0A3B2CEB12A';
wwv_flow_imp.g_varchar2_table(161) := '3B6ADADE49DA1EAF760B23AFDC181704F2400007200FB350E231A419EE76009C0C97369AF1EADE86DEC971D606B8F5FE4FC2B4DE0923D5C35B3CA8A74634FA06A9D99CBF1B33F70870E320B50FAECFC6E1E4534FC6D6C7CE1588C50C5637E48000047249';
wwv_flow_imp.g_varchar2_table(162) := '00072097D3529E41D9C03B0F20AD81F793A575F1D139907D984B22B8AFD480EFFEE047E1B1273E1B7FBFA396B9B14E9E1C805CBF0CF3BD664E533977160BDABAF3ABF0C2B397D4DCC8BD0E94C951F232CF5C4F0E8383C0010470007845322550DBD38AB7';
wwv_flow_imp.g_varchar2_table(163) := '7CACF7F7FBFD7E340A0EEDC7AE786A2A536F49FCC639E54A1CFB8F5FFF66F8D4A7ED04A81E5EE1E4A9EAE839F24B60A42D9EB5B5F5B8D533563E404F2A87D3E16EB874EE9CFA06A8C36183F9CBEFEC31B2AA13C001A8FA1B90F1F30FD566F6F8F1E3616B';
wwv_flow_imp.g_varchar2_table(164) := '6B4B59E2BFBDA79F6E09D878A8BD4C7408DC2F60A86DE39BB7DF971A9E4A08E51470E497405BA1FF9D1D25FF297F63A2557F5DF6BE25A18091FA1D3CFFDC252581ECE677F08C0C021527800350F11720EBC7F7AAFE9EA8CD9E1680F7FF1DDA4F7ACCD742';
wwv_flow_imp.g_varchar2_table(165) := 'BB25C95BD5C6CFF5472624D4546FDE9FD462EF807ABD9DF510B9FE0204E653E90228823396F74082520000200049444154DC737D4FEA78EEC6465136781C2E9F7D6A81AB732A04209025011C802CE972ED85097CFB476F878D8D8DA88DDF9548CE485A01';
wwv_flow_imp.g_varchar2_table(166) := '0A0B84B6B707B4AD105C6BBEB7CF1CCBCFDC6A587FF79FE4EF0B0F810B2C40C05D042F9C3F734F27C0AD85539D003B0EE8042C00975321B020011C800501727AC604EADD584A76EBDDF7C39642CDED6E2F869BB79524E88A82997E67A3DFD6EAD3918524';
wwv_flow_imp.g_varchar2_table(167) := 'DA90241D26DA03E5561ACC98FEC297B794B04A027E4B2720CE916A3CD10958182F1780C04204700016C2C7C9591368D5E6DA26909090B2047E74E55AE8AC1F53ABDC69589398D0585F8394E69C5018C583D4B73E2D37F4B8D26D86ACC7C8F53F99C04775';
wwv_flow_imp.g_varchar2_table(168) := '02DC4068A26D03EB0458246A1423021C1080C02A08E000AC823AF77C6002B3D16EE82ACB5C1BCC61477A01B56627DCB8793B0C545A68457AAF26D3D5BE930A9BAA2BF4DF5D7A988A0E3DF0CD16F8A00D1DE98AFF1CE0C7E904F4DAEA8EB8A71330DB6B37';
wwv_flow_imp.g_varchar2_table(169) := 'BC007A4E8500040E490007E090E0386D3904BCBA8F6D73AD2AA31E02FE7B5DA585DBDA0EB87DFB76E82B89D07BFD6E37EC6A02970E3A1A9096195287BE9C79FAA4BBD801F031D3DCA013B0DAB9E0EE10F828011C00DE897C135015C068D88FBD01FCD521';
wwv_flow_imp.g_varchar2_table(170) := 'E4D4C0DBE84F1ABDF0EAABAF4683DFE9AD4955506D879527E0D5BF350790125EEDF4AE5E27C059A0E481ACF62DE0EE7925800390D799A9E0B83E2E8C5EAF35932C7F259235D468C6A17DAFF86312D9701C9ADA1AA8C929509A40B87AED7A68ABB7803BD1';
wwv_flow_imp.g_varchar2_table(171) := '0DC7137DDFD96B455C41983979E4FD74029E7BF662A84DFA391929C38040F508E000546FCE0BF5C4752901365BF5BDA642DA0590B6FC4859FE560E747FFAFA6810D5029B5AF5DB0918E9CFD7BFF9ADF02FFE877F1976FB43890FB1FA5BE584A73A0113CD';
wwv_flow_imp.g_varchar2_table(172) := '514D519A58A2894EC02AA7847B43E01E011C005E86521378F58DDB3129D0328423A9123695803651F58073059C57E0AD82543720FD6A20FE79EC43A06CF5B9E489FCBDA30F714BC13FBBA73D90743AF4DF7D3D7FC6DFC70C772525D6E598B81C515D0DF4';
wwv_flow_imp.g_varchar2_table(173) := 'BB49DCCAF016461AC9F868E260DAFB201D4BD97B21B881D0F973A7C35C32C2ADD83B4073A31C0FE90A29B223D6739511724000029910C001C804EBC117F5BA74951A3595C95A978E808DAD0FE708BCFCF2CB2A21DC8C7F77D2E0489D079324C2E66F3903';
wwv_flow_imp.g_varchar2_table(174) := 'A91360E36D631E550BA3AE40D2CCC8D2C69638769E412A40943A0DFEAC8D7FFA733B0836FCFEEA36C7EE8950537963322EEB16247AF9A9B1BFDF2929BB0310ACE3A08A80E72F5D506440111B71890E95B678DC4998668207FFB7844F40E0B0047000F625';
wwv_flow_imp.g_varchar2_table(175) := '4702D1615FACDC9CA77D8168BCA5536F233F1E4924A8D38E46C6C6F707AFBD1E7F6EA37EBF92E03D83ACD5A83F6BCD8186DADCFAF096833FBF2BE3DFD9730E62C9A10C794D656DB1B781220D6E6BDCD40A36363D92F360A7607373534EC330C95B48F319';
wwv_flow_imp.g_varchar2_table(176) := 'EEEB98571683FFA00EEE546C5D1D30D8BE132E2812600961E77BF888F3652F80030210C884000E402658B9685E08B82D6D2C218C863B49201C2B849F1AF8E13809DDFBE73EEE0FBDA7617FFFAC25236587C159ED36F22F7FFF7B0AEA37C2B18D359DDB0A';
wwv_flow_imp.g_varchar2_table(177) := 'E3786D197D6BE0FBFFF6B6165A5EC9CAD7B031F38FA356813FE72D036D43CCEE13C2F1CFCAE2003CE8FCDBD4D704A863696775113C7DE2A9B0B9BE1626CAED184BEAB921D5470E0840201B0247E20054269C9CCD1C70D50C09D8F6DBF027A1FCEEDE5795';
wwv_flow_imp.g_varchar2_table(178) := '0FEAEFFE79CC0FD833FC1F370CAF486D9477D5B6D8E78F9DC0A6F2C3A9FBDDEB682A46ED6B75BAC9DEBE856DEC4CBC7EF58DB875305147C34EA72719E3ED782FFB1EFE7C579FB7D3D0D4BE777A5451B3A02E46E3C1507919A3F0E8F16361E7CEAFC3A50B';
wwv_flow_imp.g_varchar2_table(179) := '67356993D072D5873230382000816C081C890390CDD0B82A041627E010736AE4EF450014CEB751772F81B1569AF7EFC1A72BF034B1AF1193D2920882C3F6561F8CB9003184AF55FC9E23605DC2348F60A4EBFBDABBBBBBDACBEE68A5DF0AAFBCF24A58DF';
wwv_flow_imp.g_varchar2_table(180) := '3CAEED8744AE78384AB606B44F905CDB0987FB38228B93C8E7151C51E9BA82C3C9930AF777B4CDE2ED80CB172F88A8A23735B600F239738CAA0C047000CA308B3CC381046226BE0C6E9AF91FF7E9AD27705F02DEFDE1F7F4E7714F5A46DF06EA5EE6BE2B';
wwv_flow_imp.g_varchar2_table(181) := '02B4328DE7ABD94DDCEFD775264A5DF767DCB5D049828F3EFA6892F13FD11682F20EEE6EED848E648D5FF9D1AB3102D0D4EA77384E2A0CEEAF4838F0614AF4012DF2C3683295664337B232C75E5B7BFF127DBA7CE93C3A01259A6B1E257F047000F23727';
wwv_flow_imp.g_varchar2_table(182) := '8CE80809B8FC2EDDD7F70ADD8E8033F0D3B23DD9E68F5D7DA719FDB3B9F6A663F9DF5E1440C67A3C1C45236F89E286340A62DE9A56F5E93969D29FFFDE54B3A29AF6FC7D5F77311CCAD8CD940CE02D0347085EBFF17E34FEA90370848F5E884BB90CD07C';
wwv_flow_imp.g_varchar2_table(183) := 'CCC53A01D109733E858B2F551DF0ECB9A70BF11C0C12024524800350C45963CCA521E048849D811FBD7A25D49563506B74145D508461BEE714C4C4C0B9B62A86A1A72842DAF2D8AB666F6D943D6FA0319F8453279F0E4AA11415E57168EBC5151973F585';
wwv_flow_imp.g_varchar2_table(184) := 'F0D6CA5C0E16070420703802380087E3C6591038120236E2DBD20668C8F0CF257CF3AD6FBF141E7FE2779420A8CC78451966F7950ABA82C0918754D7208D3A1CC940727A91A992031D7CB97CFE6CD409984FC731B9D25B30A3A112321581E1800089E887';
wwv_flow_imp.g_varchar2_table(185) := '7B0770000EC78DB3207024046CC49D3018FB1AB8BA407F7725C1EB57AEEEA9152A2CEE10B97A1B742564E48881F7CAD7D77ADA77D07642C99B109BC75AAF13AB032C16E4EA805A5DFFB9978314D516EF2BA33C9209E12210A810011C800A4D368F9A3F02';
wwv_flow_imp.g_varchar2_table(186) := '53AD686B0E67EFC90837D4DCC846BE2DDD01EB09BC2647A02107213425292CA33756E5C1F1CD75AD7E77554F380E337DBECCC7DCBA0DCAB5E876544239EA87F3A74FC66D008B054576DA06E080C0C71270720E55A4FBBE1C3800FCDB81C00A09B8C3A1F7';
wwv_flow_imp.g_varchar2_table(187) := 'F167AA067024C0D2C2960A7682A19D82B172016A52237CEB9D77A3B1F78A582744E3E70CFA5AA3BDC2D1677FEB9AB648EC10B981D09A722006BB77C3B317CE45C5C099F20338200081C313C001383C3BCE84C0C204BC05E050B62B023A5ACD7E54B5D0C9';
wwv_flow_imp.g_varchar2_table(188) := '6E5610F416C16BAFBF292D8163714B60ACD0B7CF73425C998FA1F21ED6D737E2B6870B049AF27A26839D70F1EC5969044887019D80324F3FCF9631011C808C01737908EC47206DFC937E4D9B0EB5A430187B102884694397F629984A59F0D68FFF26DCDD';
wwv_flow_imp.g_varchar2_table(189) := '1D2A49703D8AE794F970F9E560A044C0563B36089AA804B3D36E84A19415BFF4C273613EDA29F3E3F36C10C894000E40A678B93804F627109B08C9D047ED006D03A47A00A9E890ACBF8CFC24D465E89BD2CB1F2B1CB0339A871BB77FA2A2B8BA5AE87EB4';
wwv_flow_imp.g_varchar2_table(190) := 'A170B988CFA7EAAA28E3AFF40735744A9A304D1515701EC0B0BF13BE78F164B91E98A781C01209E0002C1136B782C0C312481B04D921708E80BF8EA5386843F8B5AF7D2D7CEA77FE45AC898F82466E382423D97423222508D624633C2F798E804202E1BC';
wwv_flow_imp.g_varchar2_table(191) := 'BB082ADBCB9A00CE0DB044B34A28B455A29FA213F0B0AF1C9FAF10011C800A4D368F5A3C026944C07BE036FA4E885B5BDF8C498231074049826FBCF99655F3D59F20952496ECB12207D6D5B79E40998F991C9DBA9EFED2B933B2FC525D94D3139B30A9C7';
wwv_flow_imp.g_varchar2_table(192) := '023A01659E799EED2808E0001C0545AE01810C09787BC02240366CDE2EF0F7560FDC9180903B0D3A22F0939FFE6DD81E285B5E1A02D6CCB3B3305407C396A202653E5CE5D56E35C2F687BF0A5F7AEE729410568D84AA2AD4A151111374020A36FB94EE2D';
wwv_flow_imp.g_varchar2_table(193) := '75C27000968A9B9B41E0E10844A960EB00E8489500FDD5B9039B9B9B61FBCEDDD0E9AD87ADDD7EB8F1CE6DA5C96B9B4056D16D876BCA19A869CBA0CCC7CCA5928A86582CC83A01E74E9D88DB008E045842D9A24A1C1080C0C713C001E0CD80408E09D8D0';
wwv_flow_imp.g_varchar2_table(194) := 'C746425AD17BF5EF3FFEDE7A01DE1E70329CA50152B5C0DB3FFE6918CAE63B2760AEDF977BFDAF675474244A225B51510E4F7FE74ED409683979D282C17BDD1E733CC50C6D0904900AC60158C26BC62D2070B404EADAD777E2DF4CC23F6907C2B47DB0B7';
wwv_flow_imp.g_varchar2_table(195) := '065C2EE8AD006F0F38F1CD5DF5DEBA712B51088C4970E5CE01B04EC0C646921331D7BE7FCB8D03941878E1CC99C8ACD9400AEE68DF48AE5626024400CA349B3C4BE908787F7F6363230A05A9138E4A019BB164D04E81FFB874706DBD1BB5F1BD5DD05447';
wwv_flow_imp.g_varchar2_table(196) := 'C1FE681A6EBDFF93D09778904BE8CA7CB4B4FFDFEF0F435DCE8E321FE3DE7FB7D30C83EDADF0FC7397426DD22FF3E3F36C105888000EC042F83819021913B012A0C2D8D1E84F7ED3FA3655109CCD150257267CC3AA785AFC5A19B0D159D336C02CDCB8F9';
wwv_flow_imp.g_varchar2_table(197) := 'AEB4021A190F70B597B74E80DB02CFA48F30D37689393927C0DB01D3F1303C7BEEE9D50E90BB4320C7047000723C390C0D028B12B8FAF6FBE804A013B0E86BC4F92525800350D289E5B12060027375114427009D80ACFE35B8C6A2DC59265991CBC77571';
wwv_flow_imp.g_varchar2_table(198) := '00F2310F8C02029910F016013A01E80464F27271D1C213C00128FC14F20010D887807201D0094027807F2310F838023800BC1710283181BA4AE3D0094027A0C4AF388FB600011C8005E0712A04F24EA0AB32407402D009C8FB7BCAF8564300076035DCB9';
wwv_flow_imp.g_varchar2_table(199) := '2B049642C00D71D009402760292F1B37291C011C80C24D190386C08313A8D5D540089D0074021EFC95E1931522800350A1C9E65121F05102E8040CC3797402F8875151023800159D781E1B0226804EC0384840385C3A774672CAEAB228B965F755982879';
wwv_flow_imp.g_varchar2_table(200) := 'D2DB27CD16DD04F997525E023800E59D5B9E0C02071240272084B6FA096C7FF8ABF0A5E72E4B38791EBB08BAA780DB308FA6930319F201081495000E4051678E7143E02808A013107B07ACF53A6136EA8773A74E84664DED951509A8A9BFC2AC4604E028';
wwv_flow_imp.g_varchar2_table(201) := '5E33AE914F023800F99C17460581A510402740CD94249450D31F3710EAEFDC09CF5E38A736CBB518097023260E089495000E40596796E782C00310402760A476CBE8043CC0ABC2474A480007A08493CA232D8180C2C45A2216FE402740ABFE3E3A01857F';
wwv_flow_imp.g_varchar2_table(202) := '9179804311C0013814364E82403908A013300AF5660B9D8072BCCE3CC54312C0017848607C1C025522804E003A01557ADFABF6AC3800559BF1523EAF3B9293AD9DC5D4A213804E4016EF15D7CC07011C807CCC03A380402E09A013804E402E5F4C067524';
wwv_flow_imp.g_varchar2_table(203) := '0470008E04231781404909A013804E40495F6D1E4B7A17BFFF7B9F2B412E33530901086441009D007402B278AFB8663E08E000E4631E1805047249009D00740272F96232A823218003702418B90804CA49009D007402CAF966F354268003C07B701F8192';
wwv_flow_imp.g_varchar2_table(204) := 'A8DB30A74746009D0074028EEC65E242B923800390BB29C96A4018F7ACC856F9BAE804A01350E5F7BFE8CF8E0350F41964FC105821017402D00958E1EBC7AD17248003B020404E87409509A013804E4095DFFFA23F3B0E40D16790F143609504D0094027';
wwv_flow_imp.g_varchar2_table(205) := '6095EF1FF75E88000EC042F8381902D526804E003A01D5FE1750ECA7C70128F6FC317A08AC94003A01E804ACF405E4E60B11C00158081F2743A0DA04D0094027A0DAFF028AFDF43800C59E3F460F812324F0F0A5A2E804A01370842F20975A32011C8025';
wwv_flow_imp.g_varchar2_table(206) := '03E77610A812017402D009A8D2FB5EB467C50128DA8C315E081488003A01E80414E875ADDC5071002A37E53C30049647009D00740296F7B671A787258003F0B0C4F83C0420F0C004EAD20968F5D6C3D66E3FDC78E77608CD4E98AA01F94C7F6ACD46A84D';
wwv_flow_imp.g_varchar2_table(207) := 'A70F7CAD227E7056AFA31350C489ABC89871002A32D13C26045641009D00740256F1DE71CF07238003F0609CF8140420700802E804A0137088D78653964400076049A0B90D04AA48009D007402AAF8DE17E59971008A32538C13020524804E003A01057C';
wwv_flow_imp.g_varchar2_table(208) := '6D2B33641C80CA4C350F0A81FC11A8BA4EC06CD40F972E9E0BCD300F93713FB4EAB5309F4B90A9AE9FD4EA21CCC7F99B3446541A023800A5994A1E0402C52350759D80309B86E978182E9D3B23E33F0FB5F934D45D39A09FCF67B5506F146F4E19717108';
wwv_flow_imp.g_varchar2_table(209) := 'E0001467AE1829044A47A0EA3A01B3F93C743BADB0F5C12FC3979EBB1C5C35116AB3309F4C43BBDD0EA3E9A47473CE03E587000E407EE6829140A07A04A413D0A9B04E80CDFB7C32096BBD4E18ED6E8573A74E846EAB192301D3A9C2FF8D66F5DE099E78';
wwv_flow_imp.g_varchar2_table(210) := '6904700096869A1B4100021F2550759D805AAB1546A39116FDB3B0DEED84FECE9D70F1ECE9D0741A80C2FF33FD9C03025911C001C88A2CD78500040E2450759D80D1781CD6D737C26030702C20B49A75E5FD0DC2853367940330098D3A0EC0812F111F38';
wwv_flow_imp.g_varchar2_table(211) := '34011C8043A3E344084060510255D70968346A613C9E2AD2DF8A897FB3F1246C6EF4427FEB6EAC0E68CC868B22E67C087C22011C005E0E0840606504AAAE13208B1F63FD3397FE351AA1D96C86C1CE4EE8A84FC25C390097CF3EB5B2B9E1C6E527800350';
wwv_flow_imp.g_varchar2_table(212) := 'FE39E6092150580255D709180D76C2F3CF5E0A61320A6DE503CEC623E904CC43A3DD09137555AA05B6080E7CB9E55B697785E36308E000F05A400002B92550759D00490284EDAD0FC28B97E5044814A8ABC8801303A732FD76046A355B370E081C8E000E';
wwv_flow_imp.g_varchar2_table(213) := 'C0E1B871160420B0040255D7097092A0B703669341B87CFE6C682A29B0DFEF877643C982520DACD5500A5AC26B58DA5BE00094766A793008149B8016BF12CAABB64E40901C7053C67ED8DF0E17CF9D0E0D0905351BAA1690F19F4EA7614268BBD82FF98A';
wwv_flow_imp.g_varchar2_table(214) := '478F03B0E209E0F61080C02713A8BC4E80120447C341585BEB4A2868275CBE743ED4953838554E40540D4428887F3E0B10C00158001EA7420002D912A8BA4E80BA0144C0332903CE250B6C85C073A79ED64F27A1D776E92021806CDFC007BDBA933193B9';
wwv_flow_imp.g_varchar2_table(215) := '2AD2810350A4D962AC10A81881AAEB044CA50BD052C6BF1B044D250C341AF4C30BCF5D08B5A9AA01F4770E082C42000760117A9C0B0108644AA0EA3A017565FB4F9407E1A3AE6440EDFC875FFFFC1FC29FFFE9971516908430550099BE7F65BF380E40D9';
wwv_flow_imp.g_varchar2_table(216) := '6798E783408909AC5A27C0A578B16B9FF4FC95971F3EFCF52FC3575E7C3E745A2AD353CDBE4BF6DA6BEBE1833B3BE1CDB76FC5C6477327F649F0C7BFF3F9FB1DB135F070147300760743E5044A20483900CF9E792668032096037240E0B00470000E4B8E';
wwv_flow_imp.g_varchar2_table(217) := 'F3200081951358B54E8033F11B32E8DBDB77D5CEF752E875DAAA5C90A196408F457B62E85E7F6BB5BB0AE12B9B5F21FD37DF7E2796EFC9FC4BFC6FFF323E5FBFAB2D80D168101AADB6AE310F9D76239C7FE60B613EDA52292065802B7F090B3C001C8002';
wwv_flow_imp.g_varchar2_table(218) := '4F1E438740D509AC5A27C021F8B1B2F45F78F662184BB5CF257AA3BE8CB512F43A1DA9F5A9D5AF8D78534E82D2F8F4BFA68C762B3A01D1A0EB77FB1D2D750B1CEA7A16049A79B5AFEB4CD42CA8233D807327BF1023091C10382C011C80C392E33C084060';
wwv_flow_imp.g_varchar2_table(219) := 'F50456AC13E0B0FF892F7C5E19F932CE32CC5DB5F4ADC948EF286CDF6C75A281DEDDD90A6DD5ED3754CFDF50D9DEF650C97B8D6E740262CFDFFD0EF50898A827408C2CC801183929D07D02863B31197034ECAF7E0E18416109E0001476EA18380420B06A';
wwv_flow_imp.g_varchar2_table(220) := '9D800F7EF18F3121AFD598AA4E7F5B86BA150623B5F1EDF4C2505F1D21A8D7E692F095F1D7D7EDDD4168290F6038AE8557AE5C0DBDCD47F69DC424E4DF9212E058D71D8735B50E9EA91C7032D80A97CE4A188876C1FC235880000EC002F038150210582D';
wwv_flow_imp.g_varchar2_table(221) := '8155EB045C3EADBD7897E3C9407765FC87DA0E706B5F0BF44C14DE770E40437F26FAB90D77A7D355185FE23EAEDFD7D7D76FBCBF2F40570074B5FA9F3A9F402BFFF14499034E2CACCFC3453900F3291180D5BE81C5BE3B0E40B1E78FD143A0D20456AD13';
wwv_flow_imp.g_varchar2_table(222) := '70E9C4BF8AAB7CFF897BFD0AF9DBE86F6D6D85CDCDF5309696BFEC75F05EBE13FEACE3EFC3F901FEDDD55BFF65DFF94BB2FE131120570DD8B1E876A50A2869E0F3674EC64A000E081C96000EC061C9711E0420B07202ABD609F8E2C97F95ACF46386BE12';
wwv_flow_imp.g_varchar2_table(223) := 'F564A4ED00381970ACB23D3B044EFE0BB556D2C6574E805201C26047DB0532E43FBCF1B70738002DC9FE0EB5C5B0A73227076038D4DF1501F8F0573F0F7FF6E517563E070CA0B80470008A3B778C1C02103880807502649263D39CBA56E136C24D8BE768';
wwv_flow_imp.g_varchar2_table(224) := '45AD8DF5306FB41F9AA1AF91FEF9E3B39F8F7BFDEDEE5A18EF09F64CA4D3EFED0097014EB4EFDF6E755529A0BC80464BFAFD6E4DAFCC7FE5FEF973576FFD5FFBDF5F5B054D0DD7F79BCAB198CB81B093311BED869D3B1F843FC70178E8F9E384DF10C001';
wwv_flow_imp.g_varchar2_table(225) := 'E06D8000044A4B60E66CFB6B6F4727407577892175EDBEB2F2DBDE53DF33DA0F032035FE3EC75B00BD5E2FEC6CF763427F5AFA970AFC383AD09150908DB675FCFCF391F6F19BAD64457FE5E6FE11808E220B83C16E8C245840687B3008C7940838950370';
wwv_flow_imp.g_varchar2_table(226) := 'E1ECA9509F0E1E66E87C1602BF4500078017020210282D814FD209B07ADF40BAFAAD43D6D1A706FEC28927B5C2976997367F4B99FEDBDBDB12FD694B07A013B7045A0AD9F7A50FE0F6BDE939DE2E98CF1AF1F7AFBFF3DEBEEC1DEEB70AA0B500AC1BD0D4';
wwv_flow_imp.g_varchar2_table(227) := '1FE70E5807E099273F2FC5419A0195F6E55DC283E1002C0132B780000456444056D6E1F96D19D01BEFDC0EA129C31CC3F08AAB6B5FBD768010CF41A3DEFEF057E1C5E79F5534C16179E900D8B8CBD80FB4CAB781B796BFCBFF5A6D85EFB5FA1F4832B8D3';
wwv_flow_imp.g_varchar2_table(228) := '590BBBBBD3F0C69B6F85E6E6B17D6FE171BA0CD0DB05560FB40E802E1F1AF349B87CEE54541DE480C06109E0001C96DCC39CE7685FD2CF830302105822819A33E825A65353F8DF32BCB77FFCD330D416BC7302B4292F43BAD80ADAF5F9E74F9FD03EBDDA';
wwv_flow_imp.g_varchar2_table(229) := 'F36AB37E3E9FC9584FC35897EDAADEBF262FC0C67BEE76BEFAEF405B91819DC158DB05BD70EDDA8D303B2002610760A412C28E720AEA7525004A0B607DAD17EABAE6D34FFE81A20E4B84C9AD4A470007E048A6B498BDA08FE4D1B90804724CC02B7287E5';
wwv_flow_imp.g_varchar2_table(230) := 'BD37AF42FA3094717EEBC6AD98FC671D7DD7D42F7238AB7F3CDC0DCF5F962ADFEE56DC06A82971CF99FFFE9D57FD96034E257BFB32E0CDF65AB8FDDE4FD4DC4742416976FF270CC221FF5806B8779DB67404765541D0AE4FC3B3E7CFEA77A34586CFB915';
wwv_flow_imp.g_varchar2_table(231) := '27800350F11780C78740EE081C61C4ECA33A012D29F4ED2A23FFDD1FFF8D0CF028EEAB2F72C4DA7C19E846A3164E3FF3B4F6E4EB312760D0DF096D19F791AA0D9ACDB61C834EECE6E73E006FDDB81976E508B84150FD8076BE1602525C21E6128C752D8B';
wwv_flow_imp.g_varchar2_table(232) := '0CF914D7FF9F7CEAC9D044097091E9ABFCB93800457E05DC0974B10866919F9EB143E04002D609B08A9EF7E16DA4C763196BEDC10F65586FDC7C37C8A41E788DFD3E908A00A58EC0F6DD5F872F5EBE18D6BADAF357B29E04015401A028C0B411AEBE713D';
wwv_flow_imp.g_varchar2_table(233) := 'AEFEEBDA0618CB69A83B7EAF88C4BE87B62FBCE7EFFBB87BE0589F774F810F7FF1F7E12FFFECCB61AE2D080E081C96000EC061C9711E0420507802D609982BB9CE39013597DAEDE904D8B0D6BC6F7F089D80A38432930850DDD2C2B564B3DFD1004B0B9D';
wwv_flow_imp.g_varchar2_table(234) := '7CEAF3516CC86B000E081C96000EC061C9711E0420507802F3662F66E3DFAF13E03D7BEB0474B4423F8C4EC05142E976DBE1EE5DE530747B61E40A025504F4B77E1DBEF2C7CFC7F6C3AE0CE080C06109E0001C961CE74100028527F0493A01D6EE77639F';
wwv_flow_imp.g_varchar2_table(235) := 'C3EA041C1598916BFE95C018B7002C60A4F2BFB3EA01D069CCC25002415617E480C06109E0001C961CE7410002C527A05C808ECAF5B676FBBFA513109BF569FF7E519D804501B91990950B9344C0103EFCE52FB4FA7F417F9F480D701805873820705802';
wwv_flow_imp.g_varchar2_table(236) := '38008725C779108040E109D455B7EF44FE8FD30998BBA9CF8A9F702A4FA46ED9625714A8CCF085E72F2B12300E63890E6DF4BAC165851C10382C011C80C392E33C0840A0F004AC13B0B3A3923DC9F7DEAF133053B99E5BEF2EAA13B028203B006B32F477';
wwv_flow_imp.g_varchar2_table(237) := '7FFD4FE1CB5FFAA27A180DC244DB02EE38E823FDBAE87D38BF9A047000AA39EF3C35042020021FD50968AA36BF3F9A865BEFFF24F487E385750216855C57929FDB014B6E289C3DF9B44A02A77256BA961E90A4B135021613325A747C9C5F6C0238002B99';
wwv_flow_imp.g_varchar2_table(238) := '3F940357829D9B42E02304AC1360395FEB0478517DD43A010B03970E4090ECEFA5F3272438A48643DA0EB0B89093173B12357244800302872580037058729C070108949EC015E904B879504D32C24DD5E35BF067AA9E026D95083A39CF92BFDE3E7087BE';
wwv_flow_imp.g_varchar2_table(239) := '86B60C5CAA67D95F7FCE99FB3E622BDFFB24815D66E8DF3BBBBF21633E9403D292C4EF50CA849606F6CF2DF7EB12C0D9CEAFC3E5CB97E3F9F3991A01C94BF1757D8DF4FBD24F020F9819011C8087417B8412A50F735B3E0B0108AC86C0B8D609EFFDE4C7';
wwv_flow_imp.g_varchar2_table(240) := '32CED328E5DB92ACAF0DBE8DBF8FB942F036FEBD5E4F6583C3F8BB99D4FA5C46E89F4F95B0D790B3E08644760ED6D7D7EF196F3B017355217891DFDC2BE74BAF670D82990CFEA5D34FC5F3E27575ADA43C711836363642BFDF5F0D14EE5A1A023800A599';
wwv_flow_imp.g_varchar2_table(241) := '4A1E040210386A025385DABDDAFEE16BAF87471EFB9456E86A28A4DC005B6DAFC4A70ACBDBA83B91B0A755BC8D75BAF2AF2B7260C3ED9FCD64E4FD7D62B4EB5AF1B7E3755D6EE8A6413E26922C6EABF4B02EA7C21D044F9D50BD7F3389304C634741B907';
wwv_flow_imp.g_varchar2_table(242) := '8E40C8F948A30AE9B947FDDC5CAF1A047000AA31CF3C250420700802D1680FB4CF5E6B85FFF3A5EF84471F7B22B4BB6B715BC0BAFC3D65E86F6D6D49A1AF1D0DBF8DBD57E95DB7FD9553D0547740E71538AC6F83DF71E99E9C8086B6146CD02DF35B53FE';
wwv_flow_imp.g_varchar2_table(243) := '813BFEA97B80F6F927E1D7AAF5FFE32F3D1F363737B5DDD08FD7F7F7BE7EBAFAF7D7A80F704033A1433C32A75488000E4085269B478500041E8E404D8639AAF0D5EAA1DEE8849196EC960EB66E8043FBFD411296F74A3C6DFBEBD0BF57EAFEF9FDCD82A2';
wwv_flow_imp.g_varchar2_table(244) := 'C4B03EE7D5BB3F134BF894C96FA7417D8AE4004CC2B9B36742D74D82D487C08E42A7DD8CD7F1B9F74717FCB3B8052127820302872580037058729C070108949E40CB1D0425B6632DBE98DCA7D0FF44CBFF766F2DFCF5FFFE1FC3677EE7F7E3CF474AE4AB';
wwv_flow_imp.g_varchar2_table(245) := '6B55EF95BDCBF3A6FA4C740A24DD5B93D36087A0DB551740197BAFDC7BBD4E5CCD7794F437D8DD09E72F9C0B3DE9FC8F867D7D4E5B09FADA94919FCAF0FBFA69D2DFDADA5A8C083829D1C65FA77340E0D00470000E8D8E13210081B213B0E1F61FABEED9';
wwv_flow_imp.g_varchar2_table(246) := '085B79CFE1F83B6AD0B3B1795C867AA8AD8049B871E39D981FE0E641D612984C663142A0104054EDF356C25C19FFEE30D8D5FEFFDDBB7763767F5D1186182D90259FC959B0D330D096830DFD485B078E04388A9026FFC5EA8258919038053800657F03B3';
wwv_flow_imp.g_varchar2_table(247) := '7D3E1C806CF972750840A0C004B44BAFCCFFBA56EBDAB7DF6BBEEBD0FD7C4FA3DF06BCADFD7DEFF3CB632C9C240000094C494441541C6BD5DE09033909DFFDFE0F745E4791832494FFEFFEF2CFB59A1F87A62B0365D413C3AD0A0045149C2CE83C00FD25';
wwv_flow_imp.g_varchar2_table(248) := '0C1521E86DAC47E31FA308FA9C8D7DDC0ED07D7CEF819210FDB3380EE50C7040E0B00470000E4B8EF3200001084000020526800350E0C963E810800004200081C312C001382C39CE830004200001081498000E4081278FA1430002108000040E4B0007E0';
wwv_flow_imp.g_varchar2_table(249) := 'B0E4380F0210800004205060023800059E3C860E010840000210382C011C80C392E33C084000021080408109E0001478F2183A042000010840E0B00470000E4B8EF3200001084000020526800350E0C963E810800004200081C312C001382C39CE830004';
wwv_flow_imp.g_varchar2_table(250) := '200001081498000E408127EF63876E8DF159D91E8AE7810004200081A326800370D444B91E042000010840A0000470000A30490C110210800004F241A04C41561C807CBC538C02021080000420B0540238004BC5CDCD200001084000025910A8E9A2F387';
wwv_flow_imp.g_varchar2_table(251) := 'BA70E11D803285631E6AE6F8300420000108406001028577001678764E850004200001085496000E4065A79E07870004F24DC0F5BC8E717240201B023800D970E5AA1080409908B0D758A6D9E459F608E000F02A400002108000042A480007A08293CE23';
wwv_flow_imp.g_varchar2_table(252) := '4300021080000470007807200001084000021524800350C149E791210001084000023800BC03108000042000810A12C001A8E0A4F3C8108000042000011C00DE01084000021080400509E0005470D27964084000021080000E00EF00042000010840A082';
wwv_flow_imp.g_varchar2_table(253) := '0470002A38E93C3204200001084000078077000210800004205041023800159C741E190210800004208003C03B00010840000210A820011C800A4E3A8F0C010840000210C001E01D800004200001085490000E4005279D4786000420000108E000F00E40';
wwv_flow_imp.g_varchar2_table(254) := '0002108000042A480007A08293CE234300021080000470007807200001084000021524800350C149E791210001084000023800BC03108000042000810A12C001A8E0A4F3C8108000042000011C00DE01084000025912A8E9E2F32C6FC0B5217038023800';
wwv_flow_imp.g_varchar2_table(255) := '87E3C659108000042000814213C00128F4F43178084000021080C0E108E0001C8E1B67410002108000040A4D0007A0D0D3C7E021707404BC4DEDED6A0E0840A01A047000AA31CF3C25042000010840E0B708E000F042400002108000042A480007A08293';
wwv_flow_imp.g_varchar2_table(256) := 'CE234300021080000470007807200001084000021524800350C149E791210001084000023800BC03108000042000810A12C001A8E0A4F3C8108000042000011C00DE01084000021080400509E0005470D27964084000021080000E00EF00042000010814';
wwv_flow_imp.g_varchar2_table(257) := '93009D16179A371C8085F07132042000010840A0980470008A396F8C1A021080000420B010011C8085F07132042000010840A0980470008A396F8C1A021080000420B010011C8085F07132042000010840A0980470008A396F8C1A021080000420B01001';
wwv_flow_imp.g_varchar2_table(258) := '1C8085F07132042000010840A0980470008A396F8C1A021080000420B010011C8085F07132042000010840A0980470008A396F8C1A021080000420B010011C8085F071320420000108149F4035358571008AFFE6F2041080000420008187268003F0D0C8';
wwv_flow_imp.g_varchar2_table(259) := '3801021080000420507C023800C59F439E00021080000420F0D00470001E1A1927400002108000048A4F0007A0F87358AA27A8EB6966A57A221E06021080403E09E000E4735E1815042000010840205302380099E2E5E2108000042000817C12C001C8E7';
wwv_flow_imp.g_varchar2_table(260) := 'BC302A08400002108040A604700032C5CBC521000108400002F924800390CF796154108000042000814C09E000648A978B43000210800004F2490007209FF3C2A8200001084000029912C001C8142F1787000420000108E493C0CA1C80B978B8FF120704';
wwv_flow_imp.g_varchar2_table(261) := '20000108400002CB27B0320760F98FCA1D21000108400002104809E000F02E400002108000042A480007A08293CE234300021080000470007807200001084000021524800350C149E791210001084000023800BC03108000042000810A12C001A8E0A4F3';
wwv_flow_imp.g_varchar2_table(262) := 'C810800004724FC075E2AE17E7C88C000E406668B9300420505C02330DBD5EDCE13372083C00011C800780C447200001084000026523800350B619E57920F0310450DEE4B58000043E4A000780770202103880009BB1BC22102823011C8032CE2ACF0401';
wwv_flow_imp.g_varchar2_table(263) := '084000021038C8B5FFFDDFFB1C7996BC26108000042000818A11200250B109E77121000108400002268003C07B00010840000210A820011C800A4E3A8F0C010840000210C001E01D800004200001085490000E4005279D47860004CA45009D8772CDE7B2';
wwv_flow_imp.g_varchar2_table(264) := '9E06076059A4B90F04200001084020470470007234190C05021080000420B02C023800CB22CD7D200001084000023922800390A3C96028108000042000816511C001581669EE03010840000210C811011C801C4D0643810004200001082C8B000EC0B248';
wwv_flow_imp.g_varchar2_table(265) := '731F084000021080408E08E000E46832180A042000010840605904700096459AFB4000021080000472440007204793C15020000108400002CB228003B02CD2DCA798046A1AB6755639724BA0AE91CD723B3A060681FC12C001C8EFDC3032084000021080';
wwv_flow_imp.g_varchar2_table(266) := '40660470003243CB8521000108400002F925800390DFB9616410800004200081CC08E0006486960B430002108000041E9680335A9CD992FD8103903D63EE00010840000210C81D011C80DC4D090382000420000108644F0007207BC6DC01021080000420';
wwv_flow_imp.g_varchar2_table(267) := '903B023800B99B120604010840000210C89EC09E03B0BCA483EC1F893B400002108000042070100122000711E2F7108000042000811212C00128E1A4F248108000042000818308E0001C4488DF430002108000044A480007A08493CA237D1C01F25C782F';
wwv_flow_imp.g_varchar2_table(268) := '20000108DC4F000780F7010210800004205041023800159C741E190210281901DA56976C4297F3383800CBE1CC5D20000108400002B922800390ABE9603010800004200081E510C001580E67EE02010840000210C815011C805C4D0783810004200081AC';
wwv_flow_imp.g_varchar2_table(269) := '08B8C9AEEB813812023800BC09108000042000810A12C001A8E0A4F3C8108000042000011C00DE01084000021080400509E0005470D27964084000021080000E00EF00042000010840A0820470002A38E93C320420000108400007807700021080000420';
wwv_flow_imp.g_varchar2_table(270) := '5041023800159C741E190210280A0144FE8B3253451C270E4011678D314300021080000416248003B020404E870004200001081491000E4011678D31430002252260715A8BD4724060B904700096CB9BBB4120C7043044399E1C8606812327800370E448';
wwv_flow_imp.g_varchar2_table(271) := 'B92004200001084020FF047000F23F478C1002108000042070E404FE7FA4B884B35686EC060000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(22134381736452213447)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(4635444053851171)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>15599294851930
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(22134084433004213224)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15551029026214
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(22134084757436213224)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>15551029026218
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(22134085057916213224)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>15551029026218
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(22134085365755213225)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>15551029026218
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(22134085611298213225)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>15551029026219
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(22134085910661213225)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>15551029026219
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(22134086217851213225)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>15551029026220
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(22134086513465213225)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>15551029026221
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(22134086894674213226)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>15551029026223
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(22134087147241213226)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>15551029026223
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(22134087481453213226)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>15551029026223
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(22134087701896213226)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>15551029026224
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(22134088015924213226)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>15551029026224
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(22134384660586213450)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>15551029035068
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/reader_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(22134384746909213450)
,p_name=>'Reader Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(apex_app_setting.get_value(',
'   p_name => ''ACCESS_CONTROL_SCOPE''),''x'') = ''ALL_USERS'' then',
'    -- allow user not in the ACL to access the application',
'    return true;',
'else',
'    -- require user to have at least one role',
'    return apex_acl.has_user_any_roles (',
'        p_application_id => :APP_ID, ',
'        p_user_name      => :APP_USER);',
'end if;'))
,p_error_message=>'You are not authorized to view this application, either because you have not been granted access, or your account has been locked. Please contact the application administrator.'
,p_version_scn=>15551029035073
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/authorizations/contribution_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(22134384889557213450)
,p_name=>'Contribution Rights'
,p_scheme_type=>'NATIVE_IS_IN_GROUP'
,p_attribute_01=>'Administrator,Contributor'
,p_attribute_02=>'A'
,p_error_message=>'Insufficient privileges, user is not a Contributor'
,p_version_scn=>15551029035074
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/pracownicy
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(36003491634580539898)
,p_name=>'Pracownicy'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from pracownicy',
'where upper(USERNAME) = upper(:APP_USER)'))
,p_error_message=>'Blad'
,p_version_scn=>15565630956261
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/security/app_access_control/administrator
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(22134384255324213449)
,p_static_id=>'ADMINISTRATOR'
,p_name=>'Administrator'
,p_description=>'Role assigned to application administrators.'
,p_version_scn=>15551029035051
);
end;
/
prompt --application/shared_components/security/app_access_control/contributor
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(22134384401417213449)
,p_static_id=>'CONTRIBUTOR'
,p_name=>'Contributor'
,p_description=>'Role assigned to application contributors.'
,p_version_scn=>15551029035056
);
end;
/
prompt --application/shared_components/security/app_access_control/reader
begin
wwv_flow_imp_shared.create_acl_role(
 p_id=>wwv_flow_imp.id(22134384529819213450)
,p_static_id=>'READER'
,p_name=>'Reader'
,p_description=>'Role assigned to application readers.'
,p_version_scn=>15551029035056
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(22134385659324213451)
,p_name=>'FEEDBACK_ATTACHMENTS_YN'
,p_value=>'Y'
,p_is_required=>'N'
,p_valid_values=>'Y, N'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(22134382167433213448)
,p_version_scn=>15551029035083
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(22134385967090213451)
,p_name=>'ACCESS_CONTROL_SCOPE'
,p_value=>'ACL_ONLY'
,p_is_required=>'N'
,p_valid_values=>'ACL_ONLY, ALL_USERS'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(22134381993914213448)
,p_comments=>'The default access level given to authenticated users who are not in the access control list'
,p_version_scn=>15551029035090
);
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/access_roles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(22134536246271214017)
,p_lov_name=>'ACCESS_ROLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>15551029055599
);
end;
/
prompt --application/shared_components/user_interface/lovs/desktop_theme_styles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(22134407613148213475)
,p_lov_name=>'DESKTOP THEME STYLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>15551029035736
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_templates
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(37286499969546506969)
,p_lov_name=>'EMAIL TEMPLATES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as display, ',
'       static_id as return ',
'  from APEX_APPL_EMAIL_TEMPLATES',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'RETURN'
,p_display_column_name=>'DISPLAY'
,p_default_sort_column_name=>'DISPLAY'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15567103186960
);
end;
/
prompt --application/shared_components/user_interface/lovs/email_username_format
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(22134543735522214023)
,p_lov_name=>'EMAIL_USERNAME_FORMAT'
,p_lov_query=>'.'||wwv_flow_imp.id(22134543735522214023)||'.'
,p_location=>'STATIC'
,p_version_scn=>15551029055800
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(22134544050363214023)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Email Addresses'
,p_lov_return_value=>'EMAIL'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_rating
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(22134561086164214264)
,p_lov_name=>'FEEDBACK_RATING'
,p_lov_query=>'.'||wwv_flow_imp.id(22134561086164214264)||'.'
,p_location=>'STATIC'
,p_version_scn=>15551029065935
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(22134561318514214265)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Positive'
,p_lov_return_value=>'3'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-smile-o fa-2x feedback-positive" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(22134561793106214265)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Neutral'
,p_lov_return_value=>'2'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-emoji-neutral fa-2x feedback-neutral" aria-hidden="true" ></span></span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(22134562145314214265)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Negative'
,p_lov_return_value=>'1'
,p_lov_template=>'<span title="#DISPLAY_VALUE#" aria-label="#DISPLAY_VALUE#"><span class="fa fa-frown-o fa-2x feedback-negative" aria-hidden="true" ></span></span>'
);
end;
/
prompt --application/shared_components/user_interface/lovs/feedback_status
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(22134573482640214273)
,p_lov_name=>'FEEDBACK_STATUS'
,p_lov_query=>'.'||wwv_flow_imp.id(22134573482640214273)||'.'
,p_location=>'STATIC'
,p_version_scn=>15551029066002
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(22134573725547214273)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'No Action'
,p_lov_return_value=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(22134574188786214274)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Acknowledged'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(22134574527094214274)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Open'
,p_lov_return_value=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(22134574981911214274)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'4'
);
end;
/
prompt --application/shared_components/user_interface/lovs/klienci_imie
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(28984196032325491641)
,p_lov_name=>'KLIENCI.IMIE'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'KLIENCI'
,p_return_column_name=>'ID'
,p_display_column_name=>'IMIE'
,p_default_sort_column_name=>'IMIE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15556866339021
);
end;
/
prompt --application/shared_components/user_interface/lovs/klienci_imie_1
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(37157814638575292722)
,p_lov_name=>'KLIENCI.IMIE_1'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'KLIENCI'
,p_return_column_name=>'ID_KLIENTA'
,p_display_column_name=>'IMIE'
,p_default_sort_column_name=>'IMIE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15567000087924
);
end;
/
prompt --application/shared_components/user_interface/lovs/timeframe_4_weeks
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(22134455277008213931)
,p_lov_name=>'TIMEFRAME (4 WEEKS)'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'SECONDS'
,p_display_column_name=>'DISP'
,p_version_scn=>15551029051093
);
end;
/
prompt --application/shared_components/user_interface/lovs/user_theme_preference
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(22134408397720213477)
,p_lov_name=>'USER_THEME_PREFERENCE'
,p_lov_query=>'.'||wwv_flow_imp.id(22134408397720213477)||'.'
,p_location=>'STATIC'
,p_version_scn=>15551029035776
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(22134408630967213477)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Allow End Users to choose Theme Style'
,p_lov_return_value=>'Yes'
);
end;
/
prompt --application/shared_components/user_interface/lovs/uslugi_usluga
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(27398464846604142506)
,p_lov_name=>'USLUGI.USLUGA'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'USLUGI'
,p_return_column_name=>'ID_USLUGI'
,p_display_column_name=>'USLUGA'
,p_default_sort_column_name=>'USLUGA'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15555700951707
);
end;
/
prompt --application/shared_components/user_interface/lovs/view_as_report_chart
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(22134502837646213984)
,p_lov_name=>'VIEW_AS_REPORT_CHART'
,p_lov_query=>'.'||wwv_flow_imp.id(22134502837646213984)||'.'
,p_location=>'STATIC'
,p_version_scn=>15551029053867
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(22134503194580213984)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Add Report Page'
,p_lov_return_value=>'REPORT'
,p_lov_template=>'<span class="fa fa-table" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(22134503500554213984)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Add Chart Page'
,p_lov_return_value=>'CHART'
,p_lov_template=>'<span class="fa fa-pie-chart" aria-hidden="true"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(22134386240167213451)
,p_group_name=>'Administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(22134618548803214738)
,p_group_name=>'User Settings'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(22134088918933213227)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(22134089153270213227)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(22134599607558214297)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(22178456052033034248)
,p_short_name=>unistr('Rejestr u\017Cytkownika')
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(22596440001988956504)
,p_short_name=>unistr('Baza klient\00F3w')
,p_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(27412176526303550189)
,p_short_name=>unistr('Wizyty klient\00F3w')
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(27432635255599794282)
,p_short_name=>'Kalendarz wizyt'
,p_link=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(31633929725304955686)
,p_short_name=>unistr('Dodanie us\0142ugi')
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(37282368688397716856)
,p_short_name=>unistr('Wysy\0142ka e-mail')
,p_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>7
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(22134356719724213431)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072363937200175119
,p_is_locked=>false
,p_current_theme_style_id=>wwv_flow_imp.id(24563317887878275250)
,p_default_page_template=>4072355960268175073
,p_default_dialog_template=>2100407606326202693
,p_error_template=>2101157952850466385
,p_printer_friendly_template=>4072355960268175073
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>2101157952850466385
,p_default_button_template=>4072362960822175091
,p_default_region_template=>4072358936313175081
,p_default_chart_template=>4072358936313175081
,p_default_form_template=>4072358936313175081
,p_default_reportr_template=>4072358936313175081
,p_default_tabform_template=>4072358936313175081
,p_default_wizard_template=>4072358936313175081
,p_default_menur_template=>2531463326621247859
,p_default_listr_template=>4072358936313175081
,p_default_irr_template=>2100526641005906379
,p_default_report_template=>2538654340625403440
,p_default_label_template=>1609121967514267634
,p_default_menu_template=>4072363345357175094
,p_default_calendar_template=>4072363550766175095
,p_default_list_template=>4072361143931175087
,p_default_nav_list_template=>2526754704087354841
,p_default_top_nav_list_temp=>2526754704087354841
,p_default_side_nav_list_temp=>2467739217141810545
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2126429139436695430
,p_default_dialogr_template=>4501440665235496320
,p_default_option_label=>1609121967514267634
,p_default_required_label=>1609122147107268652
,p_default_navbar_list_template=>2847543055748234966
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.2/')
,p_files_version=>67
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(22135863068714262804)
,p_theme_id=>42
,p_name=>'Vita - Dark (copy_1)'
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Dark.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@g_Accent-BG":"#244855","@g_Accent-OG":"#0b0d11","@g_Color-Palette-2":"#826705","@g_Color-Palette-2-FG":"#e4f9fd","@g_Color-Palette-1":"#304cdb","@g_Color-Palette-1-FG":"#ffffff","@g_Color-Palette-3":"#3e8814","@g_Color-Palette'
||'-3-FG":"#f0fcfb"},"customCSS":"","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#22135863068714262804.css'
,p_theme_roller_read_only=>false
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(24559254608229350994)
,p_theme_id=>42
,p_name=>'Redwood Light (copy_1)'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_FILES#css/Redwood#MIN#.css?v=#APEX_VERSION#'))
,p_css_classes=>' rw-layout--fixed t-PageBody--scrollTitle rw-pillar--plum'
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Redwood-Theme.less'
,p_theme_roller_config=>'{"classes":["rw-layout--fixed t-PageBody--scrollTitle","rw-layout--fixed t-PageBody--scrollTitle","rw-pillar--plum"],"vars":{},"customCSS":"","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#24559254608229350994.css'
,p_theme_roller_read_only=>false
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(24560732328303428438)
,p_theme_id=>42
,p_name=>'bEST'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_FILES#css/Redwood#MIN#.css?v=#APEX_VERSION#'))
,p_css_classes=>' rw-layout--fixed t-PageBody--scrollTitle rw-pillar--plum'
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Redwood-Theme.less'
,p_theme_roller_config=>'{"classes":["rw-layout--fixed t-PageBody--scrollTitle","rw-layout--fixed t-PageBody--scrollTitle","rw-pillar--plum"],"vars":{},"customCSS":"","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#24560732328303428438.css'
,p_theme_roller_read_only=>false
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(24563317887878275250)
,p_theme_id=>42
,p_name=>'v1'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_FILES#css/Redwood#MIN#.css?v=#APEX_VERSION#'))
,p_css_classes=>' rw-layout--fixed t-PageBody--scrollTitle rw-pillar--plum'
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Redwood-Theme.less'
,p_theme_roller_config=>'{"classes":["rw-layout--fixed t-PageBody--scrollTitle","rw-layout--fixed t-PageBody--scrollTitle","rw-pillar--plum"],"vars":{},"customCSS":"","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#24563317887878275250.css'
,p_theme_roller_read_only=>false
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2A210D0A20436F707972696768742028632920323031342C20323032332C204F7261636C6520616E642F6F722069747320616666696C69617465732E0D0A202A2F0D0A2F2A210D0A20436F707972696768742028632920323031342C20323032332C20';
wwv_flow_imp.g_varchar2_table(2) := '4F7261636C6520616E642F6F722069747320616666696C69617465732E0D0A202A2F0D0A3A726F6F74207B0D0A20202D2D612D626173652D666F6E742D7765696768742D73656D69626F6C643A203630303B0D0A20202D2D612D69636F6E2D73697A653A';
wwv_flow_imp.g_varchar2_table(3) := '203172656D3B0D0A20202D2D612D627574746F6E2D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D627574746F6E2D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D627574746F6E2D70616464696E67';
wwv_flow_imp.g_varchar2_table(4) := '2D783A20302E373572656D3B0D0A20202D2D612D627574746F6E2D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D627574746F6E2D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D627574746F6E2D6761702D783A';
wwv_flow_imp.g_varchar2_table(5) := '20302E323572656D3B0D0A20202D2D612D627574746F6E2D69636F6E2D73706163696E673A20302E33373572656D3B0D0A20202D2D612D627574746F6E2D69636F6E2D73697A653A203172656D3B0D0A20202D2D612D63762D677269642D6761703A2031';
wwv_flow_imp.g_varchar2_table(6) := '72656D3B0D0A20202D2D612D63762D6974656D2D77696474683A20323072656D3B0D0A20202D2D612D63762D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D612D63762D736861646F773A20766172282D2D75742D736861646F';
wwv_flow_imp.g_varchar2_table(7) := '772D736D293B0D0A20202D2D612D63762D6865616465722D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D6865616465722D70616464696E672D783A203172656D3B0D0A20202D2D612D63762D6865616465722D6974656D2D737061';
wwv_flow_imp.g_varchar2_table(8) := '63696E672D783A20302E373572656D3B0D0A20202D2D612D63762D69636F6E2D73697A653A203172656D3B0D0A20202D2D612D63762D69636F6E2D636F6E7461696E65722D73697A653A203272656D3B0D0A20202D2D612D63762D69636F6E2D70616464';
wwv_flow_imp.g_varchar2_table(9) := '696E673A20302E3572656D3B0D0A20202D2D612D63762D69636F6E2D7370616365723A2063616C6328766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A652C203172656D29202B20766172282D2D612D63762D6865616465722D69';
wwv_flow_imp.g_varchar2_table(10) := '74656D2D73706163696E672D782C20302E373572656D29293B0D0A20202D2D612D63762D696E697469616C732D73697A653A203272656D3B0D0A20202D2D612D63762D696E697469616C732D666F6E742D73697A653A20302E38373572656D3B0D0A2020';
wwv_flow_imp.g_varchar2_table(11) := '2D2D612D63762D7469746C652D666F6E742D73697A653A203172656D3B0D0A20202D2D612D63762D7469746C652D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D63762D7375627469746C652D666F6E742D73697A653A20302E';
wwv_flow_imp.g_varchar2_table(12) := '373572656D3B0D0A20202D2D612D63762D7375627469746C652D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D63762D62616467652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D63762D62616467652D626163';
wwv_flow_imp.g_varchar2_table(13) := '6B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A20202D2D612D63762D626F64792D70616464696E672D783A203172656D3B0D0A20202D2D612D63762D626F64792D70616464696E672D793A20';
wwv_flow_imp.g_varchar2_table(14) := '3172656D3B0D0A20202D2D612D63762D6D61696E636F6E74656E742D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D63762D6D61696E636F6E74656E742D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(15) := '63762D737562636F6E74656E742D666F6E742D73697A653A20302E3638373572656D3B0D0A20202D2D612D63762D737562636F6E74656E742D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D63762D616374696F6E732D70616464696E';
wwv_flow_imp.g_varchar2_table(16) := '672D793A203172656D3B0D0A20202D2D612D63762D616374696F6E732D70616464696E672D783A203172656D3B0D0A20202D2D612D636865636B626F782D73697A653A203172656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D666F6E74';
wwv_flow_imp.g_varchar2_table(17) := '2D73697A653A20302E373572656D3B0D0A20202D2D612D636865636B626F782D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D636865636B626F782D69636F6E2D73697A653A20302E373572656D3B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(18) := '636865636B626F782D696E64657465726D696E6174652D77696474683A20302E36323572656D3B0D0A20202D2D612D636865636B626F782D696E64657465726D696E6174652D6865696768743A20302E31323572656D3B0D0A20202D2D612D636865636B';
wwv_flow_imp.g_varchar2_table(19) := '626F782D6C6162656C2D73706163696E672D793A20302E31323572656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D73706163696E672D783A20302E33373572656D3B0D0A20202D2D612D636F6D626F2D626F782D70616464696E672D79';
wwv_flow_imp.g_varchar2_table(20) := '3A20302E323572656D3B0D0A20202D2D612D636F6D626F2D626F782D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D636F6D626F626F782D636869702D6C696E652D6865696768743A20302E373572656D3B0D0A20202D2D612D646576';
wwv_flow_imp.g_varchar2_table(21) := '2D746F6F6C6261722D6261636B67726F756E642D636F6C6F723A20233636363B0D0A20202D2D612D6465762D746F6F6C6261722D6261636B64726F702D66696C7465723A206E6F6E653B0D0A20202D2D612D646174657069636B65722D6261636B67726F';
wwv_flow_imp.g_varchar2_table(22) := '756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746F6F6C6261722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D626F726465722D7261646975733A20766172282D2D75742D62';
wwv_flow_imp.g_varchar2_table(23) := '6F726465722D726164697573293B0D0A20202D2D612D646174657069636B65722D6865616465722D6261636B67726F756E642D636F6C6F723A20233036303630363B0D0A20202D2D612D646174657069636B65722D6865616465722D626F726465722D63';
wwv_flow_imp.g_varchar2_table(24) := '6F6C6F723A207472616E73706172656E743B0D0A20202D2D612D646174657069636B65722D6D6F6E74687069636B65722D73656C6563742D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D646174657069';
wwv_flow_imp.g_varchar2_table(25) := '636B65722D6D6F6E74687069636B65722D73656C6563742D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D646174657069636B65722D6D6F6E74687069636B65722D73656C6563742D666F6E742D73697A653A2031';
wwv_flow_imp.g_varchar2_table(26) := '72656D3B0D0A20202D2D612D646174657069636B65722D6D6F6E74687069636B65722D73656C6563742D666F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D7765696768742D73656D69626F6C642C20353030293B0D0A20202D';
wwv_flow_imp.g_varchar2_table(27) := '2D612D646174657069636B65722D63616C656E646172732D73706163696E673A203070783B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E';
wwv_flow_imp.g_varchar2_table(28) := '742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D7469746C652D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D';
wwv_flow_imp.g_varchar2_table(29) := '7469746C652D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D7469746C652D6261636B67726F756E642D636F6C6F723A20233036303630363B0D0A20202D2D612D646174657069636B';
wwv_flow_imp.g_varchar2_table(30) := '65722D63616C656E6461722D6865616465722D70616464696E672D783A20766172282D2D612D646174657069636B65722D63616C656E6461722D6461792D73706163696E67293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D68';
wwv_flow_imp.g_varchar2_table(31) := '65616465722D6261636B67726F756E642D636F6C6F723A20233036303630363B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6865616465722D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D7465';
wwv_flow_imp.g_varchar2_table(32) := '78742D6D757465642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D73706163696E673A20302E3572656D3B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D666F6E74';
wwv_flow_imp.g_varchar2_table(33) := '2D73697A653A20302E38373572656D3B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D626F726465722D77696474683A203170783B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D626F';
wwv_flow_imp.g_varchar2_table(34) := '726465722D7261646975733A203530253B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D63';
wwv_flow_imp.g_varchar2_table(35) := '6F6C6F72293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D73656C65637465642D6261636B67726F756E642D636F6C6F723A20766172282D2D612D70616C657474652D7072696D617279293B0D0A20202D2D612D6461';
wwv_flow_imp.g_varchar2_table(36) := '74657069636B65722D63616C656E6461722D6461792D73656C65637465642D746578742D636F6C6F723A20766172282D2D612D70616C657474652D7072696D6172792D636F6E7472617374293B0D0A20202D2D612D646174657069636B65722D63616C65';
wwv_flow_imp.g_varchar2_table(37) := '6E6461722D6461792D73656C65637465642D626F726465722D636F6C6F723A20766172282D2D612D70616C657474652D7072696D617279293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D7765656B2D6261636B67726F756E64';
wwv_flow_imp.g_varchar2_table(38) := '2D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746F6F6C6261722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D7765656B2D746578742D636F6C6F723A207661';
wwv_flow_imp.g_varchar2_table(39) := '72282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D666F6F7465722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261';
wwv_flow_imp.g_varchar2_table(40) := '636B67726F756E642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D74696D657069636B65722D73656C6563742D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D646174657069636B65';
wwv_flow_imp.g_varchar2_table(41) := '722D74696D657069636B65722D73656C6563742D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D646174657069636B65722D74696D657069636B65722D73656C6563742D666F6E742D73697A653A20302E38373572';
wwv_flow_imp.g_varchar2_table(42) := '656D3B0D0A20202D2D612D66732D636F6E74726F6C2D736570657261746F722D626F726465722D77696474683A20766172282D2D75742D636F6D706F6E656E742D626F726465722D77696474682C20317078293B0D0A20202D2D612D66732D636F6E7472';
wwv_flow_imp.g_varchar2_table(43) := '6F6C2D736570657261746F722D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D66732D636F6E74726F6C2D6865616465722D70616464696E672D793A20302E37';
wwv_flow_imp.g_varchar2_table(44) := '3572656D3B0D0A20202D2D612D66732D636F6E74726F6C2D6865616465722D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D66732D636F6E74726F6C2D6865616465722D666F6E742D73697A653A203172656D3B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(45) := '66732D636F6E74726F6C2D6865616465722D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D66732D636F6E74726F6C2D626F64792D70616464696E672D793A20302E373572656D3B0D0A20202D2D612D66732D636F6E74726F6C';
wwv_flow_imp.g_varchar2_table(46) := '2D626F64792D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D66732D636F6E74726F6C2D616374696F6E732D70616464696E672D793A20302E373572656D3B0D0A20202D2D612D66732D636F6E74726F6C2D616374696F6E732D7061';
wwv_flow_imp.g_varchar2_table(47) := '6464696E672D783A203072656D3B0D0A20202D2D612D66732D636F6E74726F6C2D6974656D2D73706163696E673A20302E373572656D3B0D0A20202D2D612D66732D66696C7465722D67726F75702D626F726465722D636F6C6F723A20766172282D2D75';
wwv_flow_imp.g_varchar2_table(48) := '742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D66732D66696C7465722D67726F75702D626F726465722D77696474683A20766172282D2D75742D636F6D706F6E656E742D626F726465722D77696474682C20317078';
wwv_flow_imp.g_varchar2_table(49) := '293B0D0A20202D2D612D66732D66696C7465722D67726F75702D6C6162656C2D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D66732D6974656D2D737562';
wwv_flow_imp.g_varchar2_table(50) := '2D67726F75702D73706163696E673A20302E3572656D3B0D0A20202D2D612D66732D63686172742D70616464696E672D793A203172656D3B0D0A20202D2D612D66732D63686172742D70616464696E672D783A203172656D3B0D0A20202D2D612D66732D';
wwv_flow_imp.g_varchar2_table(51) := '63686172742D626F726465722D77696474683A20766172282D2D75742D726567696F6E2D626F726465722D77696474682C20766172282D2D75742D636F6D706F6E656E742D626F726465722D77696474682C2031707829293B0D0A20202D2D612D66732D';
wwv_flow_imp.g_varchar2_table(52) := '63686172742D626F726465722D636F6C6F723A20766172282D2D75742D726567696F6E2D626F726465722D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F7229293B0D0A20202D2D612D66732D6368617274';
wwv_flow_imp.g_varchar2_table(53) := '2D626F726465722D7261646975733A20766172282D2D75742D726567696F6E2D626F726465722D7261646975732C20766172282D2D75742D636F6D706F6E656E742D626F726465722D72616469757329293B0D0A20202D2D612D66732D63686172742D62';
wwv_flow_imp.g_varchar2_table(54) := '61636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D66732D63686172742D736861646F773A20766172282D2D75742D726567696F6E2D626F782D73';
wwv_flow_imp.g_varchar2_table(55) := '6861646F77293B0D0A20202D2D612D66696C6564726F702D70616464696E672D793A203172656D3B0D0A20202D2D612D66696C6564726F702D70616464696E672D783A203172656D3B0D0A20202D2D612D66696C6564726F702D626F726465722D726164';
wwv_flow_imp.g_varchar2_table(56) := '6975733A20302E31323572656D3B0D0A20202D2D612D66696C6564726F702D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D626F726465722D636F6C6F72293B0D0A20202D2D612D66696C6564726F702D74657874';
wwv_flow_imp.g_varchar2_table(57) := '2D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D66696C6564726F702D666F6375732D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075';
wwv_flow_imp.g_varchar2_table(58) := '742D666F6375732D626F726465722D636F6C6F72293B0D0A20202D2D612D66696C6564726F702D6974656D2D73706163696E673A20302E323572656D3B0D0A20202D2D612D66696C6564726F702D69636F6E2D73697A653A203272656D3B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(59) := '612D66696C6564726F702D69636F6E2D73706163696E673A20302E323572656D3B0D0A20202D2D612D66696C6564726F702D68656164696E672D666F6E742D73697A653A20312E323572656D3B0D0A20202D2D612D66696C6564726F702D68656164696E';
wwv_flow_imp.g_varchar2_table(60) := '672D6C696E652D6865696768743A20312E373572656D3B0D0A20202D2D612D66696C6564726F702D68656164696E672D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D7469746C652D636F6C6F72293B0D0A20';
wwv_flow_imp.g_varchar2_table(61) := '202D2D612D66696C6564726F702D636F756E742D62616467652D666F6E742D73697A653A20302E36323572656D3B0D0A20202D2D612D66696C6564726F702D636F756E742D62616467652D6C696E652D6865696768743A20302E38373572656D3B0D0A20';
wwv_flow_imp.g_varchar2_table(62) := '202D2D612D66696C6564726F702D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D66696C6564726F702D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D66696C6564726F702D70726F67726573732D7769647468';
wwv_flow_imp.g_varchar2_table(63) := '3A20313572656D3B0D0A20202D2D612D66696C6564726F702D70726F67726573732D6865696768743A20302E373572656D3B0D0A20202D2D612D66696C6564726F702D70726F67726573732D626F726465722D7261646975733A20302E33373572656D3B';
wwv_flow_imp.g_varchar2_table(64) := '0D0A20202D2D612D66696C6564726F702D70726F67726573732D6261722D77696474683A203372656D3B0D0A20202D2D612D6669656C642D696E7075742D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D6669656C642D';
wwv_flow_imp.g_varchar2_table(65) := '696E7075742D626F726465722D7374796C653A206461736865643B0D0A20202D2D612D6669656C642D73656C6563742D6261636B67726F756E642D73697A653A203272656D203172656D3B0D0A20202D2D612D6669656C642D73656C6563742D6172726F';
wwv_flow_imp.g_varchar2_table(66) := '772D70616464696E673A203272656D3B0D0A20202D2D612D67762D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D67762D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D67762D626F726465722D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(67) := '766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D67762D63656C6C2D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D67762D63656C6C2D70616464696E672D783A20302E357265';
wwv_flow_imp.g_varchar2_table(68) := '6D3B0D0A20202D2D612D67762D63656C6C2D6865696768743A203272656D3B0D0A20202D2D612D67762D726F772D686F7665722D6261636B67726F756E642D636F6C6F723A20233036303630363B0D0A20202D2D612D67762D696E7365727465642D6261';
wwv_flow_imp.g_varchar2_table(69) := '636B67726F756E642D636F6C6F723A20766172282D2D612D70616C657474652D737563636573732D7368616465293B0D0A20202D2D612D67762D64656C657465642D6261636B67726F756E642D636F6C6F723A20233064306430643B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(70) := '67762D6772616E64746F74616C2D6261636B67726F756E642D636F6C6F723A20233139313931393B0D0A20202D2D612D67762D757064617465642D6261636B67726F756E642D636F6C6F723A20766172282D2D612D70616C657474652D696E666F2D7368';
wwv_flow_imp.g_varchar2_table(71) := '616465293B0D0A20202D2D612D67762D6865616465722D63656C6C2D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D67762D6865616465722D63656C6C2D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D67762D68';
wwv_flow_imp.g_varchar2_table(72) := '65616465722D63656C6C2D6865696768743A20322E3572656D3B0D0A20202D2D612D67762D666F6F7465722D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D67762D666F6F7465722D70616464696E672D783A20302E373572656D3B0D';
wwv_flow_imp.g_varchar2_table(73) := '0A20202D2D612D67762D706167696E6174696F6E2D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D67762D706167696E6174696F6E2D627574746F6E2D746578742D636F6C6F723A2076';
wwv_flow_imp.g_varchar2_table(74) := '6172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D67762D706167696E6174696F6E2D627574746F6E2D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D67762D706167696E6174696F6E2D62757474';
wwv_flow_imp.g_varchar2_table(75) := '6F6E2D70616464696E672D783A20302E323572656D3B0D0A20202D2D612D67762D706167696E6174696F6E2D627574746F6E2D6761702D783A20302E323572656D3B0D0A20202D2D612D67762D706167696E6174696F6E2D627574746F6E2D686F766572';
wwv_flow_imp.g_varchar2_table(76) := '2D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D67762D706167696E6174696F6E2D627574746F6E2D686F7665722D746578742D636F';
wwv_flow_imp.g_varchar2_table(77) := '6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D67762D6E6F646174612D6D6573736167652D70616464696E672D793A203172656D3B0D0A20202D2D612D67762D6E6F646174612D6D65';
wwv_flow_imp.g_varchar2_table(78) := '73736167652D70616464696E672D783A203172656D3B0D0A20202D2D612D67762D6E6F646174612D6D6573736167652D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20';
wwv_flow_imp.g_varchar2_table(79) := '202D2D612D67762D6E6F646174612D6D6573736167652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D67762D6E6F646174612D6D6573736167652D69636F6E2D73697A653A203272656D3B0D0A20202D2D612D67762D6E6F646174';
wwv_flow_imp.g_varchar2_table(80) := '612D6D6573736167652D69636F6E2D73706163696E673A20302E373572656D3B0D0A20202D2D612D68656C702D6469616C6F672D636F64652D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D63';
wwv_flow_imp.g_varchar2_table(81) := '6F6C6F72293B0D0A20202D2D612D6D64656469746F722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D6D64656469746F722D626F7264';
wwv_flow_imp.g_varchar2_table(82) := '65722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D626F726465722D636F6C6F72293B0D0A20202D2D612D6D64656469746F722D626F726465722D77696474683A20766172282D2D612D6669656C642D696E7075742D626F726465';
wwv_flow_imp.g_varchar2_table(83) := '722D7769647468293B0D0A20202D2D612D6D64656469746F722D666F6375732D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D666F6375732D626F726465722D636F6C6F72293B0D0A20202D2D612D6D656E756261';
wwv_flow_imp.g_varchar2_table(84) := '722D6974656D2D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D6D656E756261722D6974656D2D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D6D656E756261722D6974656D2D73706C69742D69636F6E2D73697A65';
wwv_flow_imp.g_varchar2_table(85) := '3A203172656D3B0D0A20202D2D612D6D656E756261722D6974656D2D73706C69742D69636F6E2D73706163696E673A20302E3572656D3B0D0A20202D2D612D6D656E752D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D6D656E752D70';
wwv_flow_imp.g_varchar2_table(86) := '616464696E672D783A203072656D3B0D0A20202D2D612D6D656E752D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D6D656E752D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D6D656E752D626F726465722D7261';
wwv_flow_imp.g_varchar2_table(87) := '646975733A20302E323572656D3B0D0A20202D2D612D6D656E752D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A20202D2D612D6D656E752D7365702D626F726465722D636F6C6F723A207661';
wwv_flow_imp.g_varchar2_table(88) := '72282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D6D656E752D7365702D73706163696E672D793A20302E323572656D3B0D0A20202D2D612D6D656E752D69636F6E2D73697A653A203172656D3B0D0A2020';
wwv_flow_imp.g_varchar2_table(89) := '2D2D612D6D656E752D69636F6E2D73706163696E672D793A20302E3572656D3B0D0A20202D2D612D6D656E752D69636F6E2D73706163696E672D783A20302E3572656D3B0D0A20202D2D612D6D656E752D6974656D2D67656E657269632D70616464696E';
wwv_flow_imp.g_varchar2_table(90) := '672D793A20302E3572656D3B0D0A20202D2D612D6D656E752D6974656D2D67656E657269632D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D6D656E752D63616C6C6F75742D73697A653A20302E373572656D3B0D0A20202D2D612D6D';
wwv_flow_imp.g_varchar2_table(91) := '656E752D63616C6C6F75742D6261636B67726F756E642D636F6C6F723A20766172282D2D612D6D656E752D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D6D656E752D63616C6C6F75742D626F726465722D7261646975733A20307265';
wwv_flow_imp.g_varchar2_table(92) := '6D3B0D0A20202D2D612D6D656E752D63616C6C6F75742D626F726465722D636F6C6F723A20766172282D2D612D6D656E752D626F726465722D636F6C6F72293B0D0A20202D2D612D6D656E752D63616C6C6F75742D736861646F773A20766172282D2D75';
wwv_flow_imp.g_varchar2_table(93) := '742D736861646F772D736D293B0D0A20202D2D612D6D656E752D63616C6C6F75742D6261636B67726F756E642D636C69703A20636F6E74656E742D626F783B0D0A20202D2D612D706F7075706C6F762D7365617263682D6261722D70616464696E672D79';
wwv_flow_imp.g_varchar2_table(94) := '3A20302E3572656D3B0D0A20202D2D612D706F7075706C6F762D7365617263682D6261722D70616464696E672D783A20766172282D2D612D706F7075706C6F762D7365617263682D6261722D70616464696E672D79293B0D0A20202D2D612D706F707570';
wwv_flow_imp.g_varchar2_table(95) := '6C6F762D636869702D70616464696E672D783A20302E323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D666F6E742D7765696768743A20766172282D2D612D636869702D76616C75652D666F6E742D7765696768742C20766172282D';
wwv_flow_imp.g_varchar2_table(96) := '2D612D626173652D666F6E742D7765696768742D73656D69626F6C642C2035303029293B0D0A20202D2D612D706F7075706C6F762D636869702D6C696E652D6865696768743A20302E373572656D3B0D0A20202D2D612D706F7075706C6F762D63686970';
wwv_flow_imp.g_varchar2_table(97) := '2D72656D6F76652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E303735293B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(98) := '612D706F7075706C6F762D636869702D626F726465722D77696474683A203170783B0D0A20202D2D612D706F7075706C6F762D636869702D626F726465722D636F6C6F723A20766172282D2D612D636869702D73746174652D626F726465722D636F6C6F';
wwv_flow_imp.g_varchar2_table(99) := '722C20766172282D2D612D636869702D747970652D626F726465722D636F6C6F722C20766172282D2D612D636869702D626F726465722D636F6C6F722C20766172282D2D612D6669656C642D696E7075742D626F726465722D636F6C6F722C2072676261';
wwv_flow_imp.g_varchar2_table(100) := '28302C20302C20302C20302E30373529292929293B0D0A20202D2D612D72762D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D72762D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D72762D626F64792D70616464';
wwv_flow_imp.g_varchar2_table(101) := '696E672D793A20302E323572656D3B0D0A20202D2D612D72762D626F64792D70616464696E672D783A203072656D3B0D0A20202D2D612D70657263656E742D63686172742D6865696768743A203172656D3B0D0A20202D2D612D70657263656E742D6368';
wwv_flow_imp.g_varchar2_table(102) := '6172742D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D7368616465293B0D0A20202D2D612D70657263656E742D63686172742D626F726465722D7261646975733A20302E31323572656D3B';
wwv_flow_imp.g_varchar2_table(103) := '0D0A20202D2D612D70657263656E742D63686172742D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D70657263656E742D63686172742D6261722D6261636B67';
wwv_flow_imp.g_varchar2_table(104) := '726F756E642D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D612D70657263656E742D63686172742D6261722D746578742D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172';
wwv_flow_imp.g_varchar2_table(105) := '792D636F6E7472617374293B0D0A20202D2D612D70657263656E742D63686172742D6261722D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D7265706F72742D';
wwv_flow_imp.g_varchar2_table(106) := '636F6E74726F6C732D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D626F726465722D';
wwv_flow_imp.g_varchar2_table(107) := '636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D626F726465722D77696474683A20766172282D2D75742D636F6D706F6E656E742D626F72';
wwv_flow_imp.g_varchar2_table(108) := '6465722D7769647468293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D6974656D2D73706163696E673A20302E323572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D73706163696E673A20302E357265';
wwv_flow_imp.g_varchar2_table(109) := '6D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D77696474683A2031382E';
wwv_flow_imp.g_varchar2_table(110) := '373572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D6C696E652D';
wwv_flow_imp.g_varchar2_table(111) := '6865696768743A203172656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D';
wwv_flow_imp.g_varchar2_table(112) := '2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D626F726465722D77696474683A20766172282D2D75742D636F6D706F6E656E742D626F726465722D7769647468293B0D0A20202D2D612D7265706F72742D636F6E74726F6C73';
wwv_flow_imp.g_varchar2_table(113) := '2D696E7075742D626F726465722D77696474683A20766172282D2D612D6669656C642D696E7075742D626F726465722D7769647468293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D626F726465722D636F6C6F723A2076';
wwv_flow_imp.g_varchar2_table(114) := '6172282D2D612D6669656C642D696E7075742D626F726465722D636F6C6F72293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D626F726465722D7261646975733A20766172282D2D612D6669656C642D696E7075742D626F';
wwv_flow_imp.g_varchar2_table(115) := '726465722D726164697573293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D666F6375732D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D666F6375732D626F726465722D636F6C6F';
wwv_flow_imp.g_varchar2_table(116) := '72293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D70616464696E672D783A20302E3572656D3B0D';
wwv_flow_imp.g_varchar2_table(117) := '0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D6C696E652D6865696768743A203172656D3B0D0A2020';
wwv_flow_imp.g_varchar2_table(118) := '2D2D612D73706C69747465722D6261722D77696474683A20302E3572656D3B0D0A20202D2D612D73706C69747465722D7468756D622D77696474683A20302E3572656D3B0D0A20202D2D612D73706C69747465722D7468756D622D6865696768743A2033';
wwv_flow_imp.g_varchar2_table(119) := '72656D3B0D0A20202D2D612D73706C69747465722D7468756D622D626F726465722D7261646975733A203072656D3B0D0A20202D2D612D73746172726174696E672D73746172732D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D73';
wwv_flow_imp.g_varchar2_table(120) := '746172726174696E672D73746172732D62672D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A20202D2D612D73746172726174696E672D76616C75652D73706163696E673A20302E3572656D3B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(121) := '2D7377697463682D77696474683A20322E373572656D3B0D0A20202D2D612D7377697463682D70616464696E672D793A20302E31323572656D3B0D0A20202D2D612D7377697463682D70616464696E672D783A20302E31323572656D3B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(122) := '2D7377697463682D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D7377697463682D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D7377697463682D6163746976652D6261636B67726F756E642D636F';
wwv_flow_imp.g_varchar2_table(123) := '6C6F723A20766172282D2D612D7377697463682D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D7377697463682D636865636B65642D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D73';
wwv_flow_imp.g_varchar2_table(124) := '77697463682D636865636B65642D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D7377697463682D636865636B65642D6163746976652D6261636B67726F756E642D636F6C6F723A20766172282D2D612D7377697463682D636865636B';
wwv_flow_imp.g_varchar2_table(125) := '65642D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D7377697463682D746F67676C652D77696474683A20312E323572656D3B0D0A20202D2D612D7377697463682D746F67676C652D6865696768743A20312E32357265';
wwv_flow_imp.g_varchar2_table(126) := '6D3B0D0A20202D2D612D746F6F6C6261722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D726567696F6E2D6865616465722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D746F6F6C6261722D626F726465722D';
wwv_flow_imp.g_varchar2_table(127) := '77696474683A20766172282D2D75742D636F6D706F6E656E742D626F726465722D77696474682C20317078293B0D0A20202D2D612D746F6F6C6261722D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F72646572';
wwv_flow_imp.g_varchar2_table(128) := '2D636F6C6F72293B0D0A20202D2D612D746F6F6C6261722D6974656D2D73706163696E673A20302E3572656D3B0D0A20202D2D612D746F6F6C6261722D7365702D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D696E';
wwv_flow_imp.g_varchar2_table(129) := '6E65722D626F726465722D636F6C6F72293B0D0A20202D2D612D746F6F6C6261722D736D616C6C2D627574746F6E2D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D746F6F6C6261722D736D616C6C2D627574746F6E2D7061646469';
wwv_flow_imp.g_varchar2_table(130) := '6E672D783A20302E3572656D3B0D0A20202D2D612D74726565766965772D746F67676C652D73697A653A203172656D3B0D0A20202D2D612D74726565766965772D6E6F64652D69636F6E2D73697A653A203172656D3B0D0A20202D2D612D747265657669';
wwv_flow_imp.g_varchar2_table(131) := '65772D6E6F64652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D74726565766965772D6E6F64652D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D74726565766965772D6E6F64652D70616464696E672D793A20';
wwv_flow_imp.g_varchar2_table(132) := '302E323572656D3B0D0A20202D2D612D74726565766965772D6E6F64652D70616464696E672D783A20302E323572656D3B0D0A20202D2D612D74726565766965772D6E6F64652D746578742D636F6C6F723A20696E68657269743B0D0A20202D2D612D74';
wwv_flow_imp.g_varchar2_table(133) := '726565766965772D6E6F64652D666F63757365642D736861646F773A20696E7365742030203020302031707820726762612835372C203135352C203233342C20302E35293B0D0A20202D2D612D74726565766965772D6E6F64652D706C616365686F6C64';
wwv_flow_imp.g_varchar2_table(134) := '65722D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D74726565766965772D647261672D68656C7065722D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D636869702D70616464696E67';
wwv_flow_imp.g_varchar2_table(135) := '2D793A20302E31323572656D3B0D0A20202D2D612D636869702D70616464696E672D783A20302E323572656D3B0D0A20202D2D612D636869702D73706163696E673A20302E323572656D3B0D0A20202D2D612D636869702D666F6E742D73697A653A2030';
wwv_flow_imp.g_varchar2_table(136) := '2E373572656D3B0D0A20202D2D612D636869702D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D636869702D6C6162656C2D73706163696E673A20302E323572656D3B0D0A20202D2D612D636869702D626F726465722D726164697573';
wwv_flow_imp.g_varchar2_table(137) := '3A20302E31323572656D3B0D0A20202D2D612D636869702D626F726465722D77696474683A20766172282D2D612D6669656C642D696E7075742D626F726465722D7769647468293B0D0A20202D2D612D636869702D626F726465722D636F6C6F723A2076';
wwv_flow_imp.g_varchar2_table(138) := '6172282D2D612D6669656C642D696E7075742D626F726465722D636F6C6F72293B0D0A20202D2D612D636869702D686F7665722D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E303235293B0D0A20';
wwv_flow_imp.g_varchar2_table(139) := '202D2D612D636869702D6163746976652D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A20202D2D612D636869702D6170706C6965642D6261636B67726F756E642D636F6C6F723A2072';
wwv_flow_imp.g_varchar2_table(140) := '676261283235352C203235352C203235352C20302E303735293B0D0A20202D2D612D636869702D6170706C6965642D686F7665722D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A20';
wwv_flow_imp.g_varchar2_table(141) := '202D2D612D636869702D72656D6F76652D686F7665722D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A20202D2D612D636869702D72656D6F76652D6163746976652D6261636B67726F';
wwv_flow_imp.g_varchar2_table(142) := '756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E303735293B0D0A20202D2D612D636869702D6170706C6965642D69732D6163746976652D72656D6F76652D686F7665722D6261636B67726F756E642D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(143) := '72676261283235352C203235352C203235352C20302E31293B0D0A20202D2D612D636869702D6170706C6965642D69732D6163746976652D72656D6F76652D6163746976652D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235';
wwv_flow_imp.g_varchar2_table(144) := '352C203235352C20302E32293B0D0A20202D2D612D636869702D696E7075742D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D636869702D696E7075742D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D636F6D62';
wwv_flow_imp.g_varchar2_table(145) := '6F2D73656C6563742D69636F6E2D73697A653A203172656D3B0D0A20202D2D612D736561726368726573756C74732D6761703A203172656D3B0D0A20202D2D612D726573756C74736974656D2D6974656D2D6761703A203172656D3B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(146) := '726573756C74736974656D2D70616464696E672D783A203172656D3B0D0A20202D2D612D726573756C74736974656D2D70616464696E672D793A203172656D3B0D0A20202D2D612D726573756C74736974656D2D6261636B67726F756E642D636F6C6F72';
wwv_flow_imp.g_varchar2_table(147) := '3A20233030303B0D0A20202D2D612D726573756C74736974656D2D626F726465722D77696474683A203170783B0D0A20202D2D612D726573756C74736974656D2D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F';
wwv_flow_imp.g_varchar2_table(148) := '726465722D636F6C6F72293B0D0A20202D2D612D726573756C74736974656D2D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D612D726573756C74736974656D2D636F6E74656E742D6761703A20302E323572656D3B0D0A2020';
wwv_flow_imp.g_varchar2_table(149) := '2D2D612D726573756C74736974656D2D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D726573756C74736974656D2D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D726573756C74736974656D2D686561';
wwv_flow_imp.g_varchar2_table(150) := '6465722D6761703A20302E3572656D3B0D0A20202D2D612D726573756C74736974656D2D6865616465722D73706163696E673A20302E323572656D3B0D0A20202D2D612D726573756C74736974656D2D7469746C652D666F6E742D73697A653A20317265';
wwv_flow_imp.g_varchar2_table(151) := '6D3B0D0A20202D2D612D726573756C74736974656D2D7469746C652D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D726573756C74736974656D2D7375627469746C652D666F6E742D73697A653A20302E3933373572656D3B0D';
wwv_flow_imp.g_varchar2_table(152) := '0A20202D2D612D726573756C74736974656D2D7375627469746C652D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D726573756C74736974656D2D7375627469746C652D73706163696E673A20766172282D2D612D726573756C';
wwv_flow_imp.g_varchar2_table(153) := '74736974656D2D6865616465722D73706163696E672C20302E323572656D293B0D0A20202D2D612D726573756C74736974656D2D6465736372697074696F6E2D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D726573756C747369';
wwv_flow_imp.g_varchar2_table(154) := '74656D2D6465736372697074696F6E2D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D726573756C74736974656D2D617474726962757465732D666F6E742D73697A653A20302E3831323572656D3B0D0A20202D2D612D726573';
wwv_flow_imp.g_varchar2_table(155) := '756C74736974656D2D617474726962757465732D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D726573756C74736974656D2D617474726962757465732D6761703A203172656D3B0D0A20202D2D612D726573756C74736974656D2D6D';
wwv_flow_imp.g_varchar2_table(156) := '6973632D666F6E742D73697A653A20302E3831323572656D3B0D0A20202D2D612D726573756C74736974656D2D6D6973632D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D726573756C74736974656D2D6D6973632D746578742D636F';
wwv_flow_imp.g_varchar2_table(157) := '6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D726573756C74736974656D2D69636F6E2D70616464696E673A20302E3572656D3B0D0A20202D2D612D726573756C74736974';
wwv_flow_imp.g_varchar2_table(158) := '656D2D696E697469616C732D73697A653A203272656D3B0D0A20202D2D612D726573756C74736974656D2D696E697469616C732D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D726573756C74736974656D2D62616467652D666F';
wwv_flow_imp.g_varchar2_table(159) := '6E742D73697A653A20302E373572656D3B0D0A20202D2D612D726573756C74736974656D2D62616467652D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A20202D2D612D726573756C';
wwv_flow_imp.g_varchar2_table(160) := '74736974656D2D62616467652D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D612D726573756C74736974656D2D62616467652D70616464696E673A20302E323572656D3B0D0A20202D2D612D736561726368726573756C7473';
wwv_flow_imp.g_varchar2_table(161) := '2D706167696E6174696F6E2D73706163696E673A203172656D3B0D0A20202D2D612D736561726368726573756C74732D706167696E6174696F6E2D6761703A203172656D3B0D0A20202D2D612D736561726368726573756C74732D706167696E6174696F';
wwv_flow_imp.g_varchar2_table(162) := '6E2D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D736561726368726573756C74732D706167696E6174696F6E2D666F6E742D73697A657A3A20302E38373572656D3B';
wwv_flow_imp.g_varchar2_table(163) := '0D0A20202D2D612D736561726368726573756C74732D706167696E6174696F6E2D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D746F6F6C7469702D666F6E742D73697A653A20302E3638373572656D3B0D0A20202D2D612D73';
wwv_flow_imp.g_varchar2_table(164) := '70696E6E65722D73697A653A203272656D3B0D0A20202D2D612D7370696E6E65722D626F726465722D77696474683A20302E323572656D3B0D0A20202D2D612D7370696E6E65722D636F6E7461696E65722D70616464696E673A20302E3572656D3B0D0A';
wwv_flow_imp.g_varchar2_table(165) := '20202D2D612D6C6F76652D617065782D6D617267696E3A203020302E31323572656D3B0D0A20202D2D612D6C6F76652D617065782D686F7665722D746578742D636F6C6F723A20766172282D2D612D70616C657474652D64616E6765722C202346303029';
wwv_flow_imp.g_varchar2_table(166) := '3B0D0A20202D2D6A75692D6469616C6F672D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D726567696F6E2D6261636B67726F756E642D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D';
wwv_flow_imp.g_varchar2_table(167) := '636F6C6F7229293B0D0A20202D2D6A75692D6469616C6F672D746578742D636F6C6F723A20766172282D2D75742D726567696F6E2D746578742D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C';
wwv_flow_imp.g_varchar2_table(168) := '6F7229293B0D0A20202D2D6A75692D6469616C6F672D626F726465722D636F6C6F723A20766172282D2D75742D726567696F6E2D626F726465722D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F7229293B';
wwv_flow_imp.g_varchar2_table(169) := '0D0A20202D2D6A75692D6469616C6F672D626F726465722D77696474683A20303B0D0A20202D2D6A75692D6469616C6F672D626F726465722D7261646975733A20766172282D2D75742D726567696F6E2D626F726465722D7261646975732C2076617228';
wwv_flow_imp.g_varchar2_table(170) := '2D2D75742D636F6D706F6E656E742D626F726465722D72616469757329293B0D0A20202D2D6A75692D6469616C6F672D736861646F773A20766172282D2D75742D736861646F772D6C67292C2030203020302031707820766172282D2D75742D72656769';
wwv_flow_imp.g_varchar2_table(171) := '6F6E2D626F726465722D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F7229293B0D0A20202D2D6A75692D6469616C6F672D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D6A75692D646961';
wwv_flow_imp.g_varchar2_table(172) := '6C6F672D7469746C656261722D70616464696E672D793A20302E373572656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C656261722D70616464696E672D783A203172656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C656261722D';
wwv_flow_imp.g_varchar2_table(173) := '6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D6A75692D6469616C6F672D7469746C656261722D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D7469746C652D636F';
wwv_flow_imp.g_varchar2_table(174) := '6C6F72293B0D0A20202D2D6A75692D6469616C6F672D7469746C656261722D626F726465722D77696474683A20766172282D2D75742D726567696F6E2D626F726465722D77696474682C20766172282D2D75742D636F6D706F6E656E742D626F72646572';
wwv_flow_imp.g_varchar2_table(175) := '2D77696474682C2031707829293B0D0A20202D2D6A75692D6469616C6F672D7469746C656261722D626F726465722D636F6C6F723A20766172282D2D75742D726567696F6E2D626F726465722D636F6C6F722C20766172282D2D75742D636F6D706F6E65';
wwv_flow_imp.g_varchar2_table(176) := '6E742D626F726465722D636F6C6F7229293B0D0A20202D2D6A75692D6469616C6F672D7469746C652D666F6E742D73697A653A203172656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C652D6C696E652D6865696768743A20312E3572656D3B';
wwv_flow_imp.g_varchar2_table(177) := '0D0A20202D2D6A75692D6469616C6F672D7469746C652D636C6F73652D77696474683A20312E3572656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C652D636C6F73652D6865696768743A20312E3572656D3B0D0A20202D2D6A75692D646961';
wwv_flow_imp.g_varchar2_table(178) := '6C6F672D7469746C652D636C6F73652D70616464696E672D793A20302E3572656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C652D636C6F73652D70616464696E672D783A20302E3572656D3B0D0A20202D2D6A75692D6469616C6F672D7469';
wwv_flow_imp.g_varchar2_table(179) := '746C652D636C6F73652D626F726465722D7261646975733A20766172282D2D612D627574746F6E2D626F726465722D7261646975732C20302E31323572656D293B0D0A20202D2D6A75692D6469616C6F672D7469746C652D636C6F73652D626F72646572';
wwv_flow_imp.g_varchar2_table(180) := '2D636F6C6F723A20766172282D2D612D627574746F6E2D626F726465722D636F6C6F72293B0D0A20202D2D6A75692D6469616C6F672D7469746C652D636C6F73652D69636F6E2D73697A653A203172656D3B0D0A20202D2D6A75692D6469616C6F672D63';
wwv_flow_imp.g_varchar2_table(181) := '6F6E74656E742D70616464696E672D793A203072656D3B0D0A20202D2D6A75692D6469616C6F672D636F6E74656E742D70616464696E672D783A203072656D3B0D0A20202D2D6A75692D6469616C6F672D627574746F6E70616E652D636F6E74656E742D';
wwv_flow_imp.g_varchar2_table(182) := '70616464696E672D793A20302E373572656D3B0D0A20202D2D6A75692D6469616C6F672D627574746F6E70616E652D636F6E74656E742D70616464696E672D783A203172656D3B0D0A20202D2D6A75692D6469616C6F672D627574746F6E70616E652D62';
wwv_flow_imp.g_varchar2_table(183) := '6F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D6A75692D646174657069636B65722D77696474683A2031372E3572656D3B0D0A20202D2D6A75692D646174657069636B';
wwv_flow_imp.g_varchar2_table(184) := '65722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6A75692D646174657069636B65722D626F726465722D636F6C6F723A20766172282D2D75';
wwv_flow_imp.g_varchar2_table(185) := '742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D6A75692D646174657069636B65722D626F726465722D7261646975733A20302E3572656D3B0D0A20202D2D6A75692D646174657069636B65722D70616464696E673A2030';
wwv_flow_imp.g_varchar2_table(186) := '2E3572656D3B0D0A20202D2D6A75692D746F6F6C7469702D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D6A75692D746F6F6C7469702D70616464696E673A20302E3572656D3B0D0A20202D2D6F6A65742D666F6E742D7369';
wwv_flow_imp.g_varchar2_table(187) := '7A653A20302E38373572656D3B0D0A20202D2D6F6A65742D736D616C6C2D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D6F6A65742D6D656469756D2D666F6E742D73697A653A203172656D3B0D0A20202D2D6F6A65742D6C617267652D';
wwv_flow_imp.g_varchar2_table(188) := '666F6E742D73697A653A20312E31323572656D3B0D0A20202D2D6F6A65742D6C61726765722D666F6E742D73697A653A20312E323572656D3B0D0A20202D2D6F6A65742D746F6F6C7469702D7072696D6172792D746578742D636F6C6F723A2023303030';
wwv_flow_imp.g_varchar2_table(189) := '3030303B0D0A20202D2D6F6A65742D746F6F6C7469702D7365636F6E646172792D746578742D636F6C6F723A207267626128302C20302C20302C20302E3635293B0D0A20202D2D6F6A65742D746F6F6C7469702D64697361626C65642D746578742D636F';
wwv_flow_imp.g_varchar2_table(190) := '6C6F723A207267626128302C20302C20302C20302E34293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D636F6C6F722D736368656D653A206461726B3B0D0A20202D2D75742D70616C657474652D67656E657269633A20233064306430643B0D0A';
wwv_flow_imp.g_varchar2_table(191) := '20202D2D75742D70616C657474652D67656E657269632D636F6E74726173743A20236666663B0D0A20202D2D75742D70616C657474652D67656E657269632D73686164653A20233036303630363B0D0A20202D2D75742D70616C657474652D67656E6572';
wwv_flow_imp.g_varchar2_table(192) := '69632D746578743A20236666663B0D0A20202D2D612D67762D6865616465722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D726567696F6E2D6865616465722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D75742D';
wwv_flow_imp.g_varchar2_table(193) := '7265706F72742D63656C6C2D616C742D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A20202D2D75742D7265706F72742D6865616465722D6261636B67726F756E642D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(194) := '72676261283235352C203235352C203235352C20302E303235293B0D0A20202D2D75742D6865616465722D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A20202D2D75742D6865616465722D62';
wwv_flow_imp.g_varchar2_table(195) := '6F782D736861646F773A20766172282D2D75742D736861646F772D736D293B0D0A20202D2D75742D666F6F7465722D6261636B67726F756E642D636F6C6F723A20233064306430643B0D0A20202D2D75742D666F6F7465722D626F726465722D636F6C6F';
wwv_flow_imp.g_varchar2_table(196) := '723A2072676261283235352C203235352C203235352C20302E31293B0D0A20202D2D75742D666F6F7465722D6974656D2D73706163696E673A20302E373572656D3B0D0A20202D2D75742D6E6176746162732D6974656D2D626F726465722D7769647468';
wwv_flow_imp.g_varchar2_table(197) := '3A203170783B0D0A20202D2D75742D6E6176746162732D6974656D2D686967686C696768742D636F6C6F723A207472616E73706172656E743B0D0A20202D2D75742D6E6176746162732D6974656D2D686967686C696768742D77696474683A203072656D';
wwv_flow_imp.g_varchar2_table(198) := '3B0D0A20202D2D75742D6E6176746162732D6974656D2D6163746976652D686967686C696768742D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D75742D6E61766261722D627574746F6E2D62616467';
wwv_flow_imp.g_varchar2_table(199) := '652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E33293B0D0A20202D2D75742D6E61766261722D627574746F6E2D62616467652D626F726465722D7261646975733A20313670783B0D0A20202D2D75742D626F64';
wwv_flow_imp.g_varchar2_table(200) := '792D6E61762D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D75742D626F64792D7469746C652D626F726465722D77696474683A203070783B0D0A20202D2D75742D';
wwv_flow_imp.g_varchar2_table(201) := '626F64792D7469746C652D626F782D736861646F773A203020317078203020302072676261283235352C203235352C203235352C20302E3135293B0D0A20202D2D75742D626F64792D7469746C652D6261636B64726F702D66696C7465723A2073617475';
wwv_flow_imp.g_varchar2_table(202) := '7261746528313830252920626C757228387078293B0D0A20202D2D75742D62726561646372756D622D726567696F6E2D73706163696E673A20302E3572656D3B0D0A20202D2D75742D62726561646372756D622D6974656D2D6163746976652D74657874';
wwv_flow_imp.g_varchar2_table(203) := '2D636F6C6F723A20766172282D2D75742D626F64792D7469746C652D746578742D636F6C6F72293B0D0A20202D2D75742D736D6172742D66696C7465722D6D61782D77696474683A20333072656D3B0D0A20202D2D75742D6865726F2D726567696F6E2D';
wwv_flow_imp.g_varchar2_table(204) := '7469746C652D746578742D636F6C6F723A20766172282D2D75742D626F64792D7469746C652D746578742D636F6C6F72293B0D0A20202D2D75742D726567696F6E2D626F726465722D77696474683A203170783B0D0A20202D2D75742D726567696F6E2D';
wwv_flow_imp.g_varchar2_table(205) := '626F782D736861646F773A20766172282D2D75742D736861646F772D736D293B0D0A20202D2D75742D726567696F6E2D6D617267696E3A203172656D3B0D0A20202D2D75742D726567696F6E2D666F6E742D73697A653A20302E38373572656D3B0D0A20';
wwv_flow_imp.g_varchar2_table(206) := '202D2D75742D726567696F6E2D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D75742D726567696F6E2D6865616465722D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E303735293B0D0A';
wwv_flow_imp.g_varchar2_table(207) := '20202D2D75742D726567696F6E2D626F64792D70616464696E672D793A203172656D3B0D0A20202D2D75742D726567696F6E2D626F64792D70616464696E672D783A203172656D3B0D0A20202D2D75742D726567696F6E2D627574746F6E732D70616464';
wwv_flow_imp.g_varchar2_table(208) := '696E672D793A20302E3572656D3B0D0A20202D2D75742D726567696F6E2D627574746F6E732D70616464696E672D783A20302E373572656D3B0D0A20202D2D75742D627574746F6E2D726567696F6E2D626F782D736861646F773A20766172282D2D7574';
wwv_flow_imp.g_varchar2_table(209) := '2D736861646F772D736D293B0D0A20202D2D75742D636865636B626F782D6974656D2D73706163696E673A203172656D3B0D0A20202D2D75742D78732D6669656C642D696E7075742D666F6E742D73697A653A203172656D3B0D0A20202D2D75742D7873';
wwv_flow_imp.g_varchar2_table(210) := '2D6669656C642D696E7075742D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D75742D6C6F67696E2D706167652D6261636B67726F756E642D636F6C6F723A20233139313931393B0D0A20202D2D75742D6C6F67696E2D726567696F';
wwv_flow_imp.g_varchar2_table(211) := '6E2D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3635293B0D0A20202D2D75742D6C6F67696E2D726567696F6E2D66696C7465723A20626C757228347078293B0D0A20202D2D75742D6C6F67696E2D726567696F';
wwv_flow_imp.g_varchar2_table(212) := '6E2D626F782D736861646F773A20766172282D2D75742D736861646F772D6C67293B0D0A20202D2D612D66732D746F67676C652D626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D626F726465722D636F6C6F72293B0D0A20202D';
wwv_flow_imp.g_varchar2_table(213) := '2D612D66732D746F67676C652D626F726465722D77696474683A20766172282D2D612D627574746F6E2D626F726465722D7769647468293B0D0A20202D2D612D66732D746F67676C652D626F726465722D7261646975733A20766172282D2D612D627574';
wwv_flow_imp.g_varchar2_table(214) := '746F6E2D626F726465722D726164697573293B0D0A20202D2D612D66732D746F67676C652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D66732D746F67676C652D6261636B6772';
wwv_flow_imp.g_varchar2_table(215) := '6F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D66732D7365617263682D636F6E7461696E65722D626F726465722D77696474683A20766172282D2D612D627574746F';
wwv_flow_imp.g_varchar2_table(216) := '6E2D626F726465722D7769647468293B0D0A20202D2D612D66732D7365617263682D636F6E7461696E65722D626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D626F726465722D636F6C6F72293B0D0A20202D2D75742D616C6572';
wwv_flow_imp.g_varchar2_table(217) := '742D7469746C652D666F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D7765696768742D73656D69626F6C642C20353030293B0D0A20202D2D75742D616C6572742D626F782D736861646F773A20766172282D2D75742D736861';
wwv_flow_imp.g_varchar2_table(218) := '646F772D736D293B0D0A20202D2D6D672D6374726C2D67726F75702D627574746F6E2D746578742D636F6C6F723A20233030303B0D0A20202D2D6D672D706F7075702D636F6E74656E742D626F782D736861646F773A20766172282D2D75742D73686164';
wwv_flow_imp.g_varchar2_table(219) := '6F772D6C67293B0D0A20202D2D612D6D61702D6C6567656E642D7469746C652D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D75742D636172646C6973742D62';
wwv_flow_imp.g_varchar2_table(220) := '6F782D736861646F773A20766172282D2D75742D736861646F772D736D293B0D0A20202D2D75742D6C696E6B736C6973742D6172726F772D636F6C6F723A2072676261283235352C203235352C203235352C20302E32293B0D0A20202D2D75742D746162';
wwv_flow_imp.g_varchar2_table(221) := '732D6974656D2D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D75742D746162732D6974656D2D6163746976652D746578742D636F6C6F723A2076617228';
wwv_flow_imp.g_varchar2_table(222) := '2D2D75742D6C696E6B2D746578742D636F6C6F72293B0D0A20202D2D75742D746162732D6974656D2D68696E742D686967686C696768742D636F6C6F723A2072676261283235352C203235352C203235352C20302E32293B0D0A20202D2D75742D746162';
wwv_flow_imp.g_varchar2_table(223) := '732D6974656D2D6163746976652D666F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D7765696768742D626F6C642C20373030293B0D0A20202D2D75742D636F6D6D656E742D636861742D6261636B67726F756E642D636F6C6F';
wwv_flow_imp.g_varchar2_table(224) := '723A2072676261283235352C203235352C203235352C20302E31293B0D0A20202D2D75742D636F6D6D656E742D636861742D6163746976652D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E313529';
wwv_flow_imp.g_varchar2_table(225) := '3B0D0A20202D2D75742D726573756C7473726567696F6E2D6261636B67726F756E642D636F6C6F723A20233030303B0D0A20202D2D75742D726573756C7473726567696F6E2D626F726465722D636F6C6F723A20766172282D2D75742D726567696F6E2D';
wwv_flow_imp.g_varchar2_table(226) := '626F726465722D636F6C6F72293B0D0A20202D2D75742D726573756C7473726567696F6E2D7365617263682D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A20202D2D75742D726573756C7473';
wwv_flow_imp.g_varchar2_table(227) := '726567696F6E2D7365617263682D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E303235293B0D0A20202D2D75742D77702D6D61726B65722D636F6C6F723A20233236323632363B0D0A20202D2D75';
wwv_flow_imp.g_varchar2_table(228) := '742D77702D747261636B2D636F6C6F723A20233236323632363B0D0A20202D2D612D7172636F64652D73697A653A203872656D3B0D0A20202D2D612D7172636F64652D73697A652D736D3A203872656D3B0D0A20202D2D612D7172636F64652D73697A65';
wwv_flow_imp.g_varchar2_table(229) := '2D6D643A20313672656D3B0D0A20202D2D612D7172636F64652D73697A652D6C673A20333272656D3B0D0A20202D2D612D636861742D6261636B67726F756E643A20766172282D2D75742D626F64792D6261636B67726F756E642D636F6C6F72293B0D0A';
wwv_flow_imp.g_varchar2_table(230) := '20202D2D612D636861742D7469746C652D6261636B67726F756E643A20766172282D2D75742D626F64792D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D636861742D7469746C652D636F6C6F723A20766172282D2D75742D636F6D70';
wwv_flow_imp.g_varchar2_table(231) := '6F6E656E742D746578742D7469746C652D636F6C6F72293B0D0A20202D2D612D636861742D626F64792D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D626F64792D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(232) := '636861742D757365722D7072696D6172792D69636F6E2D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D612D636861742D757365722D7072696D6172792D69636F6E2D7465';
wwv_flow_imp.g_varchar2_table(233) := '78742D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D636F6E7472617374293B0D0A20202D2D612D636861742D757365722D7072696D6172792D6D6573736167652D6261636B67726F756E642D636F6C6F723A20726762';
wwv_flow_imp.g_varchar2_table(234) := '6128302C20302C20302C20302E3135293B0D0A20202D2D612D636861742D757365722D7072696D6172792D746578742D636F6C6F723A20766172282D2D75742D626F64792D746578742D636F6C6F72293B0D0A20202D2D612D636861742D757365722D73';
wwv_flow_imp.g_varchar2_table(235) := '65636F6E646172792D69636F6E2D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D70616C657474652D64616E676572293B0D0A20202D2D612D636861742D757365722D7365636F6E646172792D69636F6E2D746578742D636F6C6F72';
wwv_flow_imp.g_varchar2_table(236) := '3A20766172282D2D75742D70616C657474652D64616E6765722D636F6E7472617374293B0D0A20202D2D612D636861742D757365722D7365636F6E646172792D6D6573736167652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C';
wwv_flow_imp.g_varchar2_table(237) := '20302C20302E3035293B0D0A20202D2D612D636861742D757365722D7365636F6E646172792D746578742D636F6C6F723A20766172282D2D75742D626F64792D746578742D636F6C6F72293B0D0A20202D2D612D636861742D6D6573736167652D626F72';
wwv_flow_imp.g_varchar2_table(238) := '6465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D636861742D73656E642D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D61';
wwv_flow_imp.g_varchar2_table(239) := '2D627574746F6E2D73746174652D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D636861742D6D6573736167652D616374696F6E2D627574746F6E2D6261636B67726F756E642D636F6C6F723A20236666663B0D0A20202D2D612D6368';
wwv_flow_imp.g_varchar2_table(240) := '61742D6D6573736167652D616374696F6E2D627574746F6E2D73746174652D6261636B67726F756E642D636F6C6F723A20236638663866383B0D0A20202D2D612D636861742D6D6573736167652D6572726F722D69636F6E2D636F6C6F723A2076617228';
wwv_flow_imp.g_varchar2_table(241) := '2D2D75742D70616C657474652D64616E676572293B0D0A20202D2D612D636861742D7472616E7363726970742D6F75746C696E652D636F6C6F723A20766172282D2D75742D666F6375732D6F75746C696E652D636F6C6F722C202D7765626B69742D666F';
wwv_flow_imp.g_varchar2_table(242) := '6375732D72696E672D636F6C6F72293B0D0A20202D2D66632D6E65757472616C2D62672D636F6C6F723A2072676261283235352C203235352C203235352C20302E32293B0D0A20202D2D66632D6E65757472616C2D746578742D636F6C6F723A20236666';
wwv_flow_imp.g_varchar2_table(243) := '663B0D0A20202D2D66632D6576656E742D73656C65637465642D6F7665726C61792D636F6C6F723A2072676261283235352C203235352C203235352C20302E32293B0D0A20202D2D66632D6E6F6E2D627573696E6573732D636F6C6F723A207267626128';
wwv_flow_imp.g_varchar2_table(244) := '3235352C203235352C203235352C20302E32293B0D0A20202D2D612D6469616772616D2D6261636B67726F756E643A20766172282D2D75742D726567696F6E2D6261636B67726F756E642D636F6C6F722C20766172282D2D75742D636F6D706F6E656E74';
wwv_flow_imp.g_varchar2_table(245) := '2D6261636B67726F756E642D636F6C6F7229293B0D0A20202D2D612D6469616772616D2D656C656D656E742D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D626F64792D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(246) := '612D6469616772616D2D656C656D656E742D746578742D636F6C6F723A20766172282D2D75742D626F64792D746578742D636F6C6F72293B0D0A20202D2D612D6469616772616D2D656C656D656E742D736861646F773A207267626128302C20302C2030';
wwv_flow_imp.g_varchar2_table(247) := '2C20302E332920302036707820313270783B0D0A20202D2D612D6469616772616D2D656C656D656E742D69636F6E2D636F6C6F723A20233030303B0D0A20202D2D612D6469616772616D2D656C656D656E742D69636F6E2D6261636B67726F756E642D63';
wwv_flow_imp.g_varchar2_table(248) := '6F6C6F723A20233333333333333B0D0A20202D2D612D6469616772616D2D656C656D656E742D6469616D6F6E642D746578742D636F6C6F723A20766172282D2D752D636F6C6F722D33382D636F6E7472617374293B0D0A20202D2D612D6469616772616D';
wwv_flow_imp.g_varchar2_table(249) := '2D656C656D656E742D6469616D6F6E642D6261636B67726F756E642D636F6C6F723A20766172282D2D752D636F6C6F722D3338293B0D0A20202D2D612D6469616772616D2D656C656D656E742D726563742D6261636B67726F756E642D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(250) := '766172282D2D752D636F6C6F722D3331293B0D0A20202D2D612D6469616772616D2D656C656D656E742D726563742D746578742D636F6C6F723A20766172282D2D752D636F6C6F722D33312D636F6E7472617374293B0D0A20202D2D612D646961677261';
wwv_flow_imp.g_varchar2_table(251) := '6D2D656C656D656E742D7465726D696E61746F722D746578742D636F6C6F723A20233030303B0D0A20202D2D612D6469616772616D2D656C656D656E742D7465726D696E61746F722D6261636B67726F756E642D636F6C6F723A2072676261283235352C';
wwv_flow_imp.g_varchar2_table(252) := '203235352C203235352C20302E3935293B0D0A20202D2D612D6469616772616D2D6C6162656C2D6261636B67726F756E642D636F6C6F723A20766172282D2D752D636F6C6F722D3435293B0D0A20202D2D612D6469616772616D2D6C6162656C2D746578';
wwv_flow_imp.g_varchar2_table(253) := '742D636F6C6F723A20766172282D2D752D636F6C6F722D34352D636F6E7472617374293B0D0A20202D2D612D6469616772616D2D6C696E6B2D626F726465722D636F6C6F723A20766172282D2D752D636F6C6F722D3434293B0D0A20202D2D612D646961';
wwv_flow_imp.g_varchar2_table(254) := '6772616D2D6E6176696761746F722D626F726465722D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D612D6469616772616D2D6E6176696761746F722D6261636B67726F756E642D636F6C6F723A2076';
wwv_flow_imp.g_varchar2_table(255) := '6172282D2D612D6469616772616D2D6261636B67726F756E64293B0D0A20202D2D612D6469616772616D2D63656C6C2D686967686C696768743A20766172282D2D75742D70616C657474652D73756363657373293B0D0A20202D2D612D6469616772616D';
wwv_flow_imp.g_varchar2_table(256) := '2D726F7574652D7465726D696E617465643A20766172282D2D75742D70616C657474652D7761726E696E67293B0D0A20202D2D612D6469616772616D2D726F7574652D6661756C7465643A20766172282D2D75742D70616C657474652D64616E67657229';
wwv_flow_imp.g_varchar2_table(257) := '3B0D0A20202D2D612D6469616772616D2D726F7574652D6163746976653A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D612D6469616772616D2D726F7574652D636F6D706C657465643A20766172282D2D75742D70';
wwv_flow_imp.g_varchar2_table(258) := '616C657474652D73756363657373293B0D0A20202D2D612D6469616772616D2D726F7574652D64656661756C743A20766172282D2D612D6469616772616D2D726F7574652D636F6D706C65746564293B0D0A20202D2D612D6469616772616D2D726F7574';
wwv_flow_imp.g_varchar2_table(259) := '652D77616974696E673A20766172282D2D75742D70616C657474652D696E666F293B0D0A20202D2D612D6469616772616D2D726F7574652D73757370656E6465643A20766172282D2D75742D70616C657474652D7761726E696E672D7368616465293B0D';
wwv_flow_imp.g_varchar2_table(260) := '0A20202D2D612D63722D636865636B626F782D6261636B67726F756E642D636F6C6F723A20236639663966393B0D0A20202D2D612D63722D636865636B626F782D746578742D636F6C6F723A20766172282D2D612D70616C657474652D7072696D617279';
wwv_flow_imp.g_varchar2_table(261) := '2D636F6E7472617374293B0D0A20202D2D75742D616C7465726E6174652D68656164696E672D666F6E742D66616D696C793A20766172282D2D612D626173652D666F6E742D66616D696C792D7365726966293B0D0A20202D2D75742D616C7465726E6174';
wwv_flow_imp.g_varchar2_table(262) := '652D68656164696E672D666F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D7765696768742D6E6F726D616C293B0D0A20202D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F723A2072676261283235352C2032';
wwv_flow_imp.g_varchar2_table(263) := '35352C203235352C20302E3135293B0D0A20202D2D75742D636F6D706F6E656E742D626F726465722D77696474683A203170783B0D0A20202D2D75742D636F6D706F6E656E742D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(264) := '75742D636F6D706F6E656E742D626F782D736861646F773A20766172282D2D75742D736861646F772D6C67293B0D0A20202D2D75742D636F6D706F6E656E742D686967686C696768742D6261636B67726F756E642D636F6C6F723A207267626128323535';
wwv_flow_imp.g_varchar2_table(265) := '2C203235352C203235352C20302E303235293B0D0A20202D2D75742D636F6D706F6E656E742D746F6F6C6261722D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E303235293B0D0A20202D2D75742D';
wwv_flow_imp.g_varchar2_table(266) := '636F6D706F6E656E742D696E6E65722D626F726465722D77696474683A20766172282D2D75742D636F6D706F6E656E742D626F726465722D7769647468293B0D0A20202D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72';
wwv_flow_imp.g_varchar2_table(267) := '3A2072676261283235352C203235352C203235352C20302E31293B0D0A20202D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F723A20236666663B0D0A20202D2D75742D636F6D706F6E656E742D746578742D7469746C65';
wwv_flow_imp.g_varchar2_table(268) := '2D636F6C6F723A20236666663B0D0A20202D2D75742D636F6D706F6E656E742D746578742D7375627469746C652D636F6C6F723A2072676261283235352C203235352C203235352C20302E3835293B0D0A20202D2D75742D636F6D706F6E656E742D7465';
wwv_flow_imp.g_varchar2_table(269) := '78742D6D757465642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3635293B0D0A20202D2D75742D636F6D706F6E656E742D69636F6E2D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D70616C65747465';
wwv_flow_imp.g_varchar2_table(270) := '2D7072696D617279293B0D0A20202D2D75742D636F6D706F6E656E742D69636F6E2D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D636F6E7472617374293B0D0A20202D2D75742D636F6D706F6E656E742D6261646765';
wwv_flow_imp.g_varchar2_table(271) := '2D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A20202D2D75742D636F6D706F6E656E742D62616467652D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D';
wwv_flow_imp.g_varchar2_table(272) := '746578742D64656661756C742D636F6C6F72293B0D0A20202D2D75742D636F6D706F6E656E742D62616467652D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D75742D736861646F772D736D3A203020302E31323572656D2030';
wwv_flow_imp.g_varchar2_table(273) := '2E323572656D202D302E31323572656D207267626128302C20302C20302C20302E31293B0D0A20202D2D75742D736861646F772D6D643A203020302E373572656D20312E3572656D202D302E373572656D207267626128302C20302C20302C20302E3329';
wwv_flow_imp.g_varchar2_table(274) := '3B0D0A20202D2D75742D736861646F772D6C673A203020312E3572656D203372656D202D312E3572656D207267626128302C20302C20302C20302E33293B0D0A20202D2D75742D626F726465722D7261646975732D736D3A20302E31323572656D3B0D0A';
wwv_flow_imp.g_varchar2_table(275) := '20202D2D75742D626F726465722D7261646975732D6D643A20302E323572656D3B0D0A20202D2D75742D626F726465722D7261646975732D6C673A20302E3572656D3B0D0A20202D2D75742D626F726465722D7261646975733A20766172282D2D75742D';
wwv_flow_imp.g_varchar2_table(276) := '626F726465722D7261646975732D6D64293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D7072696D6172793A20233234343835353B0D0A20202D2D75742D70616C657474652D7072696D6172792D636F6E74726173743A2023';
wwv_flow_imp.g_varchar2_table(277) := '6661666366643B0D0A20202D2D75742D70616C657474652D7072696D6172792D73686164653A20233034303730383B0D0A20202D2D75742D70616C657474652D7072696D6172792D746578743A20766172282D2D612D70616C657474652D7072696D6172';
wwv_flow_imp.g_varchar2_table(278) := '79293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D6C696E6B2D746578742D636F6C6F723A20233431383239393B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D666F6375732D6F75746C696E652D636F6C6F723A20233234343835353B0D';
wwv_flow_imp.g_varchar2_table(279) := '0A7D0D0A3A726F6F74207B0D0A20202D2D75742D636F6D706F6E656E742D626F726465722D7261646975733A203270783B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D6865616465722D6261636B67726F756E642D636F6C6F723A202332343438';
wwv_flow_imp.g_varchar2_table(280) := '35353B0D0A20202D2D75742D6865616465722D746578742D636F6C6F723A20236661666366643B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D6261636B67726F756E642D636F6C6F723A20233062306431313B0D0A20202D2D75742D';
wwv_flow_imp.g_varchar2_table(281) := '626F64792D746578742D636F6C6F723A20236537653765373B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D616374696F6E732D6261636B67726F756E642D636F6C6F723A20233065313131363B0D0A20202D2D75742D626F64792D61';
wwv_flow_imp.g_varchar2_table(282) := '6374696F6E732D746578742D636F6C6F723A20236562656265623B0D0A20202D2D75742D626F64792D616374696F6E73746F67676C652D6261636B67726F756E642D636F6C6F723A20233065313131363B0D0A20202D2D75742D626F64792D616374696F';
wwv_flow_imp.g_varchar2_table(283) := '6E73746F67676C652D686F7665722D6261636B67726F756E642D636F6C6F723A20233232323833353B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D7469746C652D6261636B67726F756E642D636F6C6F723A20233131313431613B0D';
wwv_flow_imp.g_varchar2_table(284) := '0A20202D2D75742D626F64792D7469746C652D746578742D636F6C6F723A20236565656565653B0D0A20202D2D75742D62726561646372756D622D6974656D2D746578742D636F6C6F723A2072676261283233382C203233382C203233382C20302E3635';
wwv_flow_imp.g_varchar2_table(285) := '293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D736964656261722D6261636B67726F756E642D636F6C6F723A20233135313932303B0D0A20202D2D75742D626F64792D736964656261722D746578742D636F6C6F723A2023653765';
wwv_flow_imp.g_varchar2_table(286) := '3765373B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D6E61762D6261636B67726F756E642D636F6C6F723A20233039303930393B0D0A20202D2D75742D626F64792D6E61762D746578742D636F6C6F723A20236436643664363B0D0A';
wwv_flow_imp.g_varchar2_table(287) := '20202D2D75742D626F64792D6E61762D7363726F6C6C6261722D7468756D622D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E32293B0D0A20202D2D75742D626F64792D6E61762D7363726F6C6C62';
wwv_flow_imp.g_varchar2_table(288) := '61722D747261636B2D6261636B67726F756E642D636F6C6F723A20233039303930393B0D0A20202D2D75742D6E6176746162732D6261636B67726F756E642D636F6C6F723A20233039303930393B0D0A20202D2D75742D6E6176746162732D746578742D';
wwv_flow_imp.g_varchar2_table(289) := '636F6C6F723A20236436643664363B0D0A20202D2D75742D6E6176746162732D6974656D2D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20202D2D75742D6E6176746162732D6974656D2D6163746976652D62';
wwv_flow_imp.g_varchar2_table(290) := '61636B67726F756E642D636F6C6F723A20233030303030303B0D0A20202D2D75742D6E6176746162732D6974656D2D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D6E6176746162732D6974656D2D6163746976652D';
wwv_flow_imp.g_varchar2_table(291) := '6261636B67726F756E642D636F6C6F72293B0D0A20202D2D75742D6865616465722D6D656E756261722D6261636B67726F756E642D636F6C6F723A20233039303930393B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D746578';
wwv_flow_imp.g_varchar2_table(292) := '742D636F6C6F723A20236436643664363B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D63757272656E742D6261636B67726F756E642D636F6C6F723A20233030303030303B0D0A20202D2D75742D6865616465722D6D656E75';
wwv_flow_imp.g_varchar2_table(293) := '6261722D6974656D2D63757272656E742D746578742D636F6C6F723A20236436643664363B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D68';
wwv_flow_imp.g_varchar2_table(294) := '65616465722D6D656E756261722D6974656D2D63757272656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D686F7665722D746578742D636F6C6F723A20766172282D2D7574';
wwv_flow_imp.g_varchar2_table(295) := '2D6865616465722D6D656E756261722D6974656D2D63757272656E742D746578742D636F6C6F72293B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E';
wwv_flow_imp.g_varchar2_table(296) := '31293B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D73706C69742D69636F6E2D636F6C6F723A20236436643664363B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D73706C69742D626F726465722D';
wwv_flow_imp.g_varchar2_table(297) := '636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D74726565766965772D6E6F64652D73656C65637465642D6261636B67726F756E642D636F6C6F723A20233030303030303B0D0A20202D';
wwv_flow_imp.g_varchar2_table(298) := '2D612D74726565766965772D6E6F64652D73656C65637465642D746578742D636F6C6F723A20236632663266323B0D0A20202D2D612D74726565766965772D6E6F64652D666F63757365642D6261636B67726F756E642D636F6C6F723A20233030303030';
wwv_flow_imp.g_varchar2_table(299) := '303B0D0A20202D2D612D74726565766965772D6E6F64652D666F63757365642D746578742D636F6C6F723A20236632663266323B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D74726565766965772D6E6F64652D73656C65637465642D69636F6E2D';
wwv_flow_imp.g_varchar2_table(300) := '636F6C6F723A20236632663266323B0D0A20202D2D612D74726565766965772D6E6F64652D69636F6E2D636F6C6F723A20696E68657269743B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D74726565766965772D62616467652D6261636B67726F';
wwv_flow_imp.g_varchar2_table(301) := '756E642D636F6C6F723A20233234343835353B0D0A20202D2D75742D74726565766965772D62616467652D746578742D636F6C6F723A20236661666366643B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D6D656E752D6261636B67726F756E642D63';
wwv_flow_imp.g_varchar2_table(302) := '6F6C6F723A20233033303430353B0D0A20202D2D612D6D656E752D746578742D636F6C6F723A20236464646464643B0D0A20202D2D612D6D656E752D64656661756C742D746578742D636F6C6F723A20766172282D2D612D6D656E752D746578742D636F';
wwv_flow_imp.g_varchar2_table(303) := '6C6F72293B0D0A20202D2D612D6D656E752D616363656C2D746578742D636F6C6F723A20766172282D2D612D6D656E752D746578742D636F6C6F72293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D6D656E752D666F63757365642D6261636B6772';
wwv_flow_imp.g_varchar2_table(304) := '6F756E642D636F6C6F723A20233234343835353B0D0A20202D2D612D6D656E752D666F63757365642D746578742D636F6C6F723A20236661666366643B0D0A20202D2D612D6D656E752D666F63757365642D616363656C2D746578742D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(305) := '766172282D2D612D6D656E752D666F63757365642D746578742D636F6C6F72293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D726567696F6E2D6865616465722D6261636B67726F756E642D636F6C6F723A20233030303030303B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(306) := '75742D726567696F6E2D6865616465722D746578742D636F6C6F723A20236439643964393B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D726567696F6E2D6261636B67726F756E642D636F6C6F723A20233033303430353B0D0A20202D2D75742D';
wwv_flow_imp.g_varchar2_table(307) := '726567696F6E2D746578742D636F6C6F723A20236464646464643B0D0A20202D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F723A20233033303430353B0D0A20202D2D75742D77697A6172642D6865616465722D6261636B67';
wwv_flow_imp.g_varchar2_table(308) := '726F756E642D636F6C6F723A20233037303830623B0D0A20202D2D75742D7265706F72742D63656C6C2D626F726465722D636F6C6F723A20233137316232343B0D0A20202D2D75742D7265706F72742D63656C6C2D686F7665722D6261636B67726F756E';
wwv_flow_imp.g_varchar2_table(309) := '642D636F6C6F723A20233037303830623B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D7072696D6172792D616C743A20233764623463383B0D0A20202D2D75742D70616C657474652D7072696D6172792D616C742D636F6E74';
wwv_flow_imp.g_varchar2_table(310) := '726173743A20236666666666663B0D0A20202D2D75742D70616C657474652D7072696D6172792D616C742D73686164653A20233036303930613B0D0A20202D2D75742D70616C657474652D7072696D6172792D616C742D746578743A2023623864336464';
wwv_flow_imp.g_varchar2_table(311) := '3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D737563636573733A20233338383732393B0D0A20202D2D75742D70616C657474652D737563636573732D636F6E74726173743A20234646463B0D0A20202D2D75742D70616C65';
wwv_flow_imp.g_varchar2_table(312) := '7474652D737563636573732D73686164653A20233063316530393B0D0A20202D2D75742D70616C657474652D737563636573732D746578743A20233535376434653B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D696E666F3A';
wwv_flow_imp.g_varchar2_table(313) := '20233030364244383B0D0A20202D2D75742D70616C657474652D696E666F2D636F6E74726173743A20234646463B0D0A20202D2D75742D70616C657474652D696E666F2D73686164653A20233030313833303B0D0A20202D2D75742D70616C657474652D';
wwv_flow_imp.g_varchar2_table(314) := '696E666F2D746578743A20233430373561633B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D7761726E696E673A20234642434534413B0D0A20202D2D75742D70616C657474652D7761726E696E672D636F6E74726173743A20';
wwv_flow_imp.g_varchar2_table(315) := '233030303B0D0A20202D2D75742D70616C657474652D7761726E696E672D73686164653A20233337326431303B0D0A20202D2D75742D70616C657474652D7761726E696E672D746578743A20233861373433323B0D0A7D0D0A3A726F6F74207B0D0A2020';
wwv_flow_imp.g_varchar2_table(316) := '2D2D75742D70616C657474652D64616E6765723A20234545303730313B0D0A20202D2D75742D70616C657474652D64616E6765722D636F6E74726173743A20234646463B0D0A20202D2D75742D70616C657474652D64616E6765722D73686164653A2023';
wwv_flow_imp.g_varchar2_table(317) := '3334303230303B0D0A20202D2D75742D70616C657474652D64616E6765722D746578743A20236237343334303B0D0A7D0D0A3A726F6F74207B0D0A20202D2D752D636F6C6F722D313A20233330346364623B0D0A20202D2D752D636F6C6F722D312D636F';
wwv_flow_imp.g_varchar2_table(318) := '6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D323A20233832363730353B0D0A20202D2D752D636F6C6F722D322D636F6E74726173743A20236534663966643B0D0A20202D2D752D636F6C6F722D333A20233365383831343B';
wwv_flow_imp.g_varchar2_table(319) := '0D0A20202D2D752D636F6C6F722D332D636F6E74726173743A20236630666366623B0D0A20202D2D752D636F6C6F722D343A20233343414638353B0D0A20202D2D752D636F6C6F722D342D636F6E74726173743A20236630666166363B0D0A20202D2D75';
wwv_flow_imp.g_varchar2_table(320) := '2D636F6C6F722D353A20233831424235463B0D0A20202D2D752D636F6C6F722D352D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D363A20234444444535333B0D0A20202D2D752D636F6C6F722D362D636F6E74726173';
wwv_flow_imp.g_varchar2_table(321) := '743A20233261326130383B0D0A20202D2D752D636F6C6F722D373A20234642434534413B0D0A20202D2D752D636F6C6F722D372D636F6E74726173743A20233434333330323B0D0A20202D2D752D636F6C6F722D383A20234544383133453B0D0A20202D';
wwv_flow_imp.g_varchar2_table(322) := '2D752D636F6C6F722D382D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D393A20234539354235343B0D0A20202D2D752D636F6C6F722D392D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F';
wwv_flow_imp.g_varchar2_table(323) := '722D31303A20234538354438383B0D0A20202D2D752D636F6C6F722D31302D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D31313A20234341353839443B0D0A20202D2D752D636F6C6F722D31312D636F6E7472617374';
wwv_flow_imp.g_varchar2_table(324) := '3A20236666666666663B0D0A20202D2D752D636F6C6F722D31323A20233835344539423B0D0A20202D2D752D636F6C6F722D31322D636F6E74726173743A20236636663066383B0D0A20202D2D752D636F6C6F722D31333A20233541363841443B0D0A20';
wwv_flow_imp.g_varchar2_table(325) := '202D2D752D636F6C6F722D31332D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D31343A20234146424143353B0D0A20202D2D752D636F6C6F722D31342D636F6E74726173743A20233331336134343B0D0A20202D2D75';
wwv_flow_imp.g_varchar2_table(326) := '2D636F6C6F722D31353A20233645383539383B0D0A20202D2D752D636F6C6F722D31352D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D31363A20233539373065323B0D0A20202D2D752D636F6C6F722D31362D636F6E';
wwv_flow_imp.g_varchar2_table(327) := '74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D31373A20233962383533373B0D0A20202D2D752D636F6C6F722D31372D636F6E74726173743A20236633656664653B0D0A20202D2D752D636F6C6F722D31383A20233635613034';
wwv_flow_imp.g_varchar2_table(328) := '333B0D0A20202D2D752D636F6C6F722D31382D636F6E74726173743A20236566663765623B0D0A20202D2D752D636F6C6F722D31393A20233633626639643B0D0A20202D2D752D636F6C6F722D31392D636F6E74726173743A20236666666666663B0D0A';
wwv_flow_imp.g_varchar2_table(329) := '20202D2D752D636F6C6F722D32303A20233961633937663B0D0A20202D2D752D636F6C6F722D32302D636F6E74726173743A20233230333331363B0D0A20202D2D752D636F6C6F722D32313A20236534653537353B0D0A20202D2D752D636F6C6F722D32';
wwv_flow_imp.g_varchar2_table(330) := '312D636F6E74726173743A20233463346330663B0D0A20202D2D752D636F6C6F722D32323A20236663643836653B0D0A20202D2D752D636F6C6F722D32322D636F6E74726173743A20233639346630323B0D0A20202D2D752D636F6C6F722D32333A2023';
wwv_flow_imp.g_varchar2_table(331) := '6631396136353B0D0A20202D2D752D636F6C6F722D32332D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D32343A20236564376337363B0D0A20202D2D752D636F6C6F722D32342D636F6E74726173743A202366666666';
wwv_flow_imp.g_varchar2_table(332) := '66663B0D0A20202D2D752D636F6C6F722D32353A20236564376461303B0D0A20202D2D752D636F6C6F722D32352D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D32363A20236435373962313B0D0A20202D2D752D636F';
wwv_flow_imp.g_varchar2_table(333) := '6C6F722D32362D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D32373A20233964373161663B0D0A20202D2D752D636F6C6F722D32372D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D';
wwv_flow_imp.g_varchar2_table(334) := '32383A20233762383662643B0D0A20202D2D752D636F6C6F722D32382D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D32393A20236266633864313B0D0A20202D2D752D636F6C6F722D32392D636F6E74726173743A20';
wwv_flow_imp.g_varchar2_table(335) := '233364343835343B0D0A20202D2D752D636F6C6F722D33303A20233862396461643B0D0A20202D2D752D636F6C6F722D33302D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D33313A20233139333663613B0D0A20202D';
wwv_flow_imp.g_varchar2_table(336) := '2D752D636F6C6F722D33312D636F6E74726173743A20236536656166633B0D0A20202D2D752D636F6C6F722D33323A20233733356130303B0D0A20202D2D752D636F6C6F722D33322D636F6E74726173743A20236666653137333B0D0A20202D2D752D63';
wwv_flow_imp.g_varchar2_table(337) := '6F6C6F722D33333A20233332376530373B0D0A20202D2D752D636F6C6F722D33332D636F6E74726173743A20236233663838623B0D0A20202D2D752D636F6C6F722D33343A20233234613437353B0D0A20202D2D752D636F6C6F722D33342D636F6E7472';
wwv_flow_imp.g_varchar2_table(338) := '6173743A20236432663565383B0D0A20202D2D752D636F6C6F722D33353A20233661616434323B0D0A20202D2D752D636F6C6F722D33352D636F6E74726173743A20236636666266343B0D0A20202D2D752D636F6C6F722D33363A20236339636133393B';
wwv_flow_imp.g_varchar2_table(339) := '0D0A20202D2D752D636F6C6F722D33362D636F6E74726173743A20233033303330313B0D0A20202D2D752D636F6C6F722D33373A20236439623133623B0D0A20202D2D752D636F6C6F722D33372D636F6E74726173743A20233132306530333B0D0A2020';
wwv_flow_imp.g_varchar2_table(340) := '2D2D752D636F6C6F722D33383A20236437366132373B0D0A20202D2D752D636F6C6F722D33382D636F6E74726173743A20236666666666653B0D0A20202D2D752D636F6C6F722D33393A20236432343233623B0D0A20202D2D752D636F6C6F722D33392D';
wwv_flow_imp.g_varchar2_table(341) := '636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D34303A20236431343336663B0D0A20202D2D752D636F6C6F722D34302D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D34313A20236261';
wwv_flow_imp.g_varchar2_table(342) := '336438383B0D0A20202D2D752D636F6C6F722D34312D636F6E74726173743A20236664663966623B0D0A20202D2D752D636F6C6F722D34323A20233737333339333B0D0A20202D2D752D636F6C6F722D34322D636F6E74726173743A2023653864356630';
wwv_flow_imp.g_varchar2_table(343) := '3B0D0A20202D2D752D636F6C6F722D34333A20233364346561333B0D0A20202D2D752D636F6C6F722D34332D636F6E74726173743A20236538656266363B0D0A20202D2D752D636F6C6F722D34343A20233863396562303B0D0A20202D2D752D636F6C6F';
wwv_flow_imp.g_varchar2_table(344) := '722D34342D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D34353A20233465373339313B0D0A20202D2D752D636F6C6F722D34352D636F6E74726173743A20236561656666343B0D0A7D0D0A3A726F6F74207B0D0A2020';
wwv_flow_imp.g_varchar2_table(345) := '2D2D612D627574746F6E2D626F726465722D7261646975733A20302E31323572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20233364336433653B0D0A20202D2D612D62757474';
wwv_flow_imp.g_varchar2_table(346) := '6F6E2D746578742D636F6C6F723A20236664666466643B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D6669656C642D6C6162656C2D746578742D636F6C6F723A20236464646464643B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D6669656C';
wwv_flow_imp.g_varchar2_table(347) := '642D696E7075742D626F726465722D7261646975733A203270783B0D0A20202D2D612D66696C6564726F702D626F726465722D7261646975733A203270783B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D6669656C642D696E7075742D6261636B67';
wwv_flow_imp.g_varchar2_table(348) := '726F756E642D636F6C6F723A20233038303930633B0D0A20202D2D612D6669656C642D696E7075742D746578742D636F6C6F723A20236533653365333B0D0A20202D2D612D6669656C642D696E7075742D626F726465722D636F6C6F723A202331633231';
wwv_flow_imp.g_varchar2_table(349) := '32623B0D0A20202D2D612D6669656C642D696E7075742D686F7665722D6261636B67726F756E642D636F6C6F723A20233030303030303B0D0A20202D2D612D6669656C642D696E7075742D666F6375732D6261636B67726F756E642D636F6C6F723A2023';
wwv_flow_imp.g_varchar2_table(350) := '3030303030303B0D0A20202D2D612D6669656C642D696E7075742D666F6375732D626F726465722D636F6C6F723A20233234343835353B0D0A20202D2D75742D6669656C642D696E7075742D666F6375732D69636F6E2D636F6C6F723A20233234343835';
wwv_flow_imp.g_varchar2_table(351) := '353B0D0A20202D2D75742D6669656C642D666C2D696E7075742D666F6375732D69636F6E2D6261636B67726F756E642D636F6C6F723A20233234343835353B0D0A20202D2D75742D6669656C642D666C2D696E7075742D666F6375732D69636F6E2D636F';
wwv_flow_imp.g_varchar2_table(352) := '6C6F723A20236666666666663B0D0A20202D2D612D636865636B626F782D6261636B67726F756E642D636F6C6F723A20233038303930633B0D0A20202D2D612D636865636B626F782D626F726465722D636F6C6F723A2072676261283235352C20323535';
wwv_flow_imp.g_varchar2_table(353) := '2C203235352C20302E3135293B0D0A20202D2D612D636865636B626F782D746578742D636F6C6F723A20236666666666663B0D0A20202D2D612D636865636B626F782D636865636B65642D6261636B67726F756E642D636F6C6F723A2023323434383535';
wwv_flow_imp.g_varchar2_table(354) := '3B0D0A20202D2D612D636865636B626F782D636865636B65642D746578742D636F6C6F723A20236666666666663B0D0A20202D2D612D636865636B626F782D686F7665722D6261636B67726F756E642D636F6C6F723A2072676261283235352C20323535';
wwv_flow_imp.g_varchar2_table(355) := '2C203235352C20302E31293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D67762D6261636B67726F756E642D636F6C6F723A20233033303430353B0D0A20202D2D612D67762D63656C6C2D626F726465722D636F6C6F723A20233163316431653B0D';
wwv_flow_imp.g_varchar2_table(356) := '0A20202D2D612D67762D6865616465722D63656C6C2D626F726465722D636F6C6F723A20233137316232343B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D746578742D636F6C6F723A20236464646464643B0D';
wwv_flow_imp.g_varchar2_table(357) := '0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D6261636B67726F756E642D636F6C6F723A20233033303430353B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D6865616465722D6865696768743A203372656D';
wwv_flow_imp.g_varchar2_table(358) := '3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D6E61762D77696474683A20313572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D616374696F6E732D77696474683A2031322E3572656D3B0D0A7D0D0A3A726F6F74207B';
wwv_flow_imp.g_varchar2_table(359) := '0D0A20202D2D75742D626F64792D736964656261722D77696474683A20313572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D636F6E74656E742D6D61782D77696474683A20313030253B0D0A7D0D0A2E742D427574746F6E2D';
wwv_flow_imp.g_varchar2_table(360) := '2D686561646572207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20696E697469616C3B0D0A20202D2D612D627574';
wwv_flow_imp.g_varchar2_table(361) := '746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20726762';
wwv_flow_imp.g_varchar2_table(362) := '6128302C20302C20302C20302E31293B0D0A20202D2D612D627574746F6E2D686F7665722D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F';
wwv_flow_imp.g_varchar2_table(363) := '723A207267626128302C20302C20302C20302E3135293B0D0A20202D2D612D627574746F6E2D6163746976652D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D6163746976652D736861646F773A';
wwv_flow_imp.g_varchar2_table(364) := '206E6F6E653B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2D2D686561646572';
wwv_flow_imp.g_varchar2_table(365) := '2E69732D616374697665207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3235293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D627574746F6E2D626F726465722D63';
wwv_flow_imp.g_varchar2_table(366) := '6F6C6F723A2072676261283235352C203235352C203235352C20302E303735293B0D0A20202D2D612D627574746F6E2D736861646F773A20302032707820347078202D337078207267626128302C20302C20302C20302E31293B0D0A20202D2D612D6275';
wwv_flow_imp.g_varchar2_table(367) := '74746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20233536353735373B0D0A20202D2D612D627574746F6E2D686F7665722D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E303735293B0D';
wwv_flow_imp.g_varchar2_table(368) := '0A20202D2D612D627574746F6E2D686F7665722D736861646F773A20302032707820347078202D327078207267626128302C20302C20302C20302E31293B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F72';
wwv_flow_imp.g_varchar2_table(369) := '3A20233139313931393B0D0A20202D2D612D627574746F6E2D6163746976652D736861646F773A20302032707820327078202D317078207267626128302C20302C20302C20302E31352920696E7365743B0D0A20202D2D612D627574746F6E2D666F6375';
wwv_flow_imp.g_varchar2_table(370) := '732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D626F726465722D636F6C6F723A20766172282D2D';
wwv_flow_imp.g_varchar2_table(371) := '75742D70616C657474652D7072696D617279293B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D627574746F6E2D747970652D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(372) := '612D627574746F6E2D747970652D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2D2D6C696E6B207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(373) := '207472616E73706172656E743B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D6E6F55493A686F7665722C0D0A2E742D427574746F6E2D2D6E6F55493A616374';
wwv_flow_imp.g_varchar2_table(374) := '6976652C0D0A2E612D427574746F6E2D2D6E6F55492C0D0A2E612D427574746F6E2D2D6E6F55493A686F7665722C0D0A2E612D427574746F6E2D2D6E6F55493A616374697665207B0D0A20202D2D612D627574746F6E2D747970652D736861646F773A20';
wwv_flow_imp.g_varchar2_table(375) := '6E6F6E653B0D0A20202D2D612D627574746F6E2D747970652D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D747970652D626F726465722D636F6C6F723A207472616E73706172656E74';
wwv_flow_imp.g_varchar2_table(376) := '3B0D0A20202D2D612D627574746F6E2D747970652D746578742D636F6C6F723A20696E68657269743B0D0A2020636F6C6F723A20696E68657269743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20207465';
wwv_flow_imp.g_varchar2_table(377) := '78742D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2D2D686F742C0D0A2E612D427574746F6E2D2D686F742C0D0A2E75692D627574746F6E2D2D686F742C0D0A2E612D43617264566965772D627574746F6E2D2D686F742C0D0A2E';
wwv_flow_imp.g_varchar2_table(378) := '617065782D627574746F6E2D67726F757020696E7075743A636865636B6564202B206C6162656C2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D';
wwv_flow_imp.g_varchar2_table(379) := '2D726320696E7075743A636865636B6564202B206C6162656C207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20233234343835353B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A202366666666';
wwv_flow_imp.g_varchar2_table(380) := '66663B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20233333363637393B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D7465';
wwv_flow_imp.g_varchar2_table(381) := '78742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A20233163333934333B0D0A20202D2D612D627574746F6E2D6163746976652D746578742D636F6C6F723A20766172282D2D612D';
wwv_flow_imp.g_varchar2_table(382) := '627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F';
wwv_flow_imp.g_varchar2_table(383) := '72293B0D0A20202D2D612D627574746F6E2D666F6375732D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73';
wwv_flow_imp.g_varchar2_table(384) := '696D706C652C0D0A2E612D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C0D0A2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C0D0A2E612D43617264566965772D627574746F6E2D2D686F74';
wwv_flow_imp.g_varchar2_table(385) := '2E742D427574746F6E2D2D73696D706C652C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B6564202B206C6162656C2E742D427574746F6E2D2D73696D706C652C0D0A2E742D466F726D2D6669656C64436F6E7461696E';
wwv_flow_imp.g_varchar2_table(386) := '65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B6564202B206C6162656C2E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D627574746F6E2D626F72';
wwv_flow_imp.g_varchar2_table(387) := '6465722D636F6C6F723A20233234343835353B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233532363436613B0D';
wwv_flow_imp.g_varchar2_table(388) := '0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D6C696E6B2C0D0A2E612D427574746F6E2D2D686F742E742D427574746F6E';
wwv_flow_imp.g_varchar2_table(389) := '2D2D6C696E6B2C0D0A2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D6C696E6B2C0D0A2E612D43617264566965772D627574746F6E2D2D686F742E742D427574746F6E2D2D6C696E6B2C0D0A2E617065782D627574746F6E2D67726F75';
wwv_flow_imp.g_varchar2_table(390) := '7020696E7075743A636865636B6564202B206C6162656C2E742D427574746F6E2D2D6C696E6B2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D';
wwv_flow_imp.g_varchar2_table(391) := '726320696E7075743A636865636B6564202B206C6162656C2E742D427574746F6E2D2D6C696E6B207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D626163';
wwv_flow_imp.g_varchar2_table(392) := '6B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233532363436613B0D0A7D0D0A2E';
wwv_flow_imp.g_varchar2_table(393) := '742D427574746F6E2D2D686F742E742D427574746F6E2D2D6E6F55492C0D0A2E612D427574746F6E2D2D686F742E742D427574746F6E2D2D6E6F55492C0D0A2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D6E6F55492C0D0A2E612D43';
wwv_flow_imp.g_varchar2_table(394) := '617264566965772D627574746F6E2D2D686F742E742D427574746F6E2D2D6E6F55492C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B6564202B206C6162656C2E742D427574746F6E2D2D6E6F55492C0D0A2E742D466F';
wwv_flow_imp.g_varchar2_table(395) := '726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B6564202B206C6162656C2E742D427574746F6E2D2D6E6F55492C0D0A2E742D42';
wwv_flow_imp.g_varchar2_table(396) := '7574746F6E2D2D686F742E612D427574746F6E2D2D6E6F55492C0D0A2E612D427574746F6E2D2D686F742E612D427574746F6E2D2D6E6F55492C0D0A2E75692D627574746F6E2D2D686F742E612D427574746F6E2D2D6E6F55492C0D0A2E612D43617264';
wwv_flow_imp.g_varchar2_table(397) := '566965772D627574746F6E2D2D686F742E612D427574746F6E2D2D6E6F55492C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B6564202B206C6162656C2E612D427574746F6E2D2D6E6F55492C0D0A2E742D466F726D2D';
wwv_flow_imp.g_varchar2_table(398) := '6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B6564202B206C6162656C2E612D427574746F6E2D2D6E6F5549207B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(399) := '627574746F6E2D746578742D636F6C6F723A20233532363436613B0D0A2020636F6C6F723A20233532363436613B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E67207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C';
wwv_flow_imp.g_varchar2_table(400) := '6F723A20234642434534413B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233030303B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20236663646337633B0D0A20202D2D612D62';
wwv_flow_imp.g_varchar2_table(401) := '7574746F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A20236661633733313B0D';
wwv_flow_imp.g_varchar2_table(402) := '0A20202D2D612D627574746F6E2D6163746976652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F';
wwv_flow_imp.g_varchar2_table(403) := '6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D7465';
wwv_flow_imp.g_varchar2_table(404) := '78742D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A20234642434534413B0D0A20202D2D612D627574';
wwv_flow_imp.g_varchar2_table(405) := '746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233861373433323B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72';
wwv_flow_imp.g_varchar2_table(406) := '3A20233030303B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D6C696E6B207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D62757474';
wwv_flow_imp.g_varchar2_table(407) := '6F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233861373433323B';
wwv_flow_imp.g_varchar2_table(408) := '0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D7761726E696E672E612D427574746F6E2D2D6E6F5549207B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F';
wwv_flow_imp.g_varchar2_table(409) := '723A20233861373433323B0D0A2020636F6C6F723A20233861373433323B0D0A7D0D0A2E742D427574746F6E2D2D73756363657373207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20233338383732393B0D0A2020';
wwv_flow_imp.g_varchar2_table(410) := '2D2D612D627574746F6E2D746578742D636F6C6F723A20234646463B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20233438616533353B0D0A20202D2D612D627574746F6E2D686F7665722D74657874';
wwv_flow_imp.g_varchar2_table(411) := '2D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A20233330373332333B0D0A20202D2D612D627574746F6E2D6163';
wwv_flow_imp.g_varchar2_table(412) := '746976652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574';
wwv_flow_imp.g_varchar2_table(413) := '746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A7D0D0A2E';
wwv_flow_imp.g_varchar2_table(414) := '742D427574746F6E2D2D737563636573732E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A20233338383732393B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D63';
wwv_flow_imp.g_varchar2_table(415) := '6F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233535376434653B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20234646463B0D0A7D0D0A2E742D42';
wwv_flow_imp.g_varchar2_table(416) := '7574746F6E2D2D737563636573732E742D427574746F6E2D2D6C696E6B207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F';
wwv_flow_imp.g_varchar2_table(417) := '6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233535376434653B0D0A7D0D0A2E742D427574746F6E2D2D';
wwv_flow_imp.g_varchar2_table(418) := '737563636573732E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D737563636573732E612D427574746F6E2D2D6E6F5549207B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233535376434653B0D0A202063';
wwv_flow_imp.g_varchar2_table(419) := '6F6C6F723A20233535376434653B0D0A7D0D0A2E75692D627574746F6E2D2D64616E6765722C0D0A2E742D427574746F6E2D2D64616E676572207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20234545303730313B';
wwv_flow_imp.g_varchar2_table(420) := '0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20234646463B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20236665323932343B0D0A20202D2D612D627574746F6E2D686F7665722D';
wwv_flow_imp.g_varchar2_table(421) := '746578742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A20236435303630313B0D0A20202D2D612D627574746F';
wwv_flow_imp.g_varchar2_table(422) := '6E2D6163746976652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D61';
wwv_flow_imp.g_varchar2_table(423) := '2D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A';
wwv_flow_imp.g_varchar2_table(424) := '7D0D0A2E75692D627574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C652C0D0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D627574746F6E2D626F726465722D63';
wwv_flow_imp.g_varchar2_table(425) := '6F6C6F723A20234545303730313B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20236237343334303B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(426) := '612D627574746F6E2D686F7665722D746578742D636F6C6F723A20234646463B0D0A7D0D0A2E75692D627574746F6E2D2D64616E6765722E742D427574746F6E2D2D6C696E6B2C0D0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D';
wwv_flow_imp.g_varchar2_table(427) := '2D6C696E6B207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(428) := '2D627574746F6E2D626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20236237343334303B0D0A7D0D0A2E75692D627574746F6E2D2D64616E6765722E742D427574746F6E2D2D6E6F55492C0D';
wwv_flow_imp.g_varchar2_table(429) := '0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D6E6F55492C0D0A2E75692D627574746F6E2D2D64616E6765722E612D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D64616E6765722E612D427574746F6E2D2D';
wwv_flow_imp.g_varchar2_table(430) := '6E6F5549207B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20236237343334303B0D0A2020636F6C6F723A20236237343334303B0D0A7D0D0A2E742D427574746F6E2D2D7072696D617279207B0D0A20202D2D612D627574746F6E2D';
wwv_flow_imp.g_varchar2_table(431) := '6261636B67726F756E642D636F6C6F723A20233764623463383B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20236666666666663B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(432) := '233866626564303B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E64';
wwv_flow_imp.g_varchar2_table(433) := '2D636F6C6F723A20233662616163303B0D0A20202D2D612D627574746F6E2D6163746976652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F';
wwv_flow_imp.g_varchar2_table(434) := '6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D746578742D636F6C6F723A20766172282D2D';
wwv_flow_imp.g_varchar2_table(435) := '612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207661';
wwv_flow_imp.g_varchar2_table(436) := '72282D2D75742D70616C657474652D7072696D6172792D616C74293B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(437) := '766172282D2D75742D70616C657474652D7072696D6172792D616C742D74657874293B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172792E';
wwv_flow_imp.g_varchar2_table(438) := '742D427574746F6E2D2D6C696E6B207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E';
wwv_flow_imp.g_varchar2_table(439) := '743B0D0A20202D2D612D627574746F6E2D626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D616C742D74657874293B0D0A7D0D';
wwv_flow_imp.g_varchar2_table(440) := '0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D7072696D6172792E612D427574746F6E2D2D6E6F5549207B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A2076';
wwv_flow_imp.g_varchar2_table(441) := '6172282D2D75742D70616C657474652D7072696D6172792D616C742D74657874293B0D0A2020636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D616C742D74657874293B0D0A7D0D0A2E742D466F726D2D68656C70427574';
wwv_flow_imp.g_varchar2_table(442) := '746F6E207B0D0A20202D2D612D627574746F6E2D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D627574746F6E2D70616464696E672D783A20302E323572656D3B0D0A20202D2D612D627574746F6E2D747970652D6261636B67726F';
wwv_flow_imp.g_varchar2_table(443) := '756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D747970652D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D747970652D736861646F773A206E6F6E';
wwv_flow_imp.g_varchar2_table(444) := '653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A2076';
wwv_flow_imp.g_varchar2_table(445) := '6172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6E6F5549202E66613A61667465722C0D0A2E742D427574746F6E2E742D427574746F6E2D2D';
wwv_flow_imp.g_varchar2_table(446) := '6C696E6B202E66613A61667465722C0D0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C65202E66613A61667465722C0D0A2E612D427574746F6E2E612D427574746F6E2D2D6E6F5549202E66613A6166746572207B0D0A20206261636B';
wwv_flow_imp.g_varchar2_table(447) := '67726F756E642D636F6C6F723A20236661666366643B0D0A7D0D0A2E742D427574746F6E2D2D64616E676572202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A686F766572202E66';
wwv_flow_imp.g_varchar2_table(448) := '613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20234545303730313B0D0A7D0D0A2E742D427574746F6E2D2D73756363657373202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F';
wwv_flow_imp.g_varchar2_table(449) := '6E2D2D737563636573733A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20233338383732393B0D0A7D0D0A2E742D427574746F6E2D2D7072696D617279202E66613A61667465722C0D0A2E742D427574';
wwv_flow_imp.g_varchar2_table(450) := '746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20233764623463383B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E67';
wwv_flow_imp.g_varchar2_table(451) := '202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20234642434534413B0D0A7D0D';
wwv_flow_imp.g_varchar2_table(452) := '0A2E742D427574746F6E2D2D686F74202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_imp.g_varchar2_table(453) := '3234343835353B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D63762D6974656D2D77696474683A20313972656D3B0D0A20202D2D612D63762D666F6375732D6F75746C696E653A206E6F6E653B0D0A20202D2D612D63762D626F726465722D776964';
wwv_flow_imp.g_varchar2_table(454) := '74683A203170783B0D0A20202D2D612D63762D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A20202D2D612D63762D626F726465722D7261646975733A20302E3138373572656D3B0D0A20202D';
wwv_flow_imp.g_varchar2_table(455) := '2D612D63762D6261636B67726F756E642D636F6C6F723A20233033303430353B0D0A20202D2D612D63762D736861646F773A20302032707820347078202D327078207267626128302C20302C20302C20302E303735293B0D0A20202D2D612D63762D686F';
wwv_flow_imp.g_varchar2_table(456) := '7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D63762D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D63762D686F7665722D746578742D636F6C6F723A20766172282D2D612D63762D746578742D636F6C6F';
wwv_flow_imp.g_varchar2_table(457) := '72293B0D0A20202D2D612D63762D686F7665722D626F726465722D636F6C6F723A20766172282D2D612D63762D626F726465722D636F6C6F72293B0D0A20202D2D612D63762D686F7665722D736861646F773A20302034707820302E3572656D20302072';
wwv_flow_imp.g_varchar2_table(458) := '67626128302C20302C20302C20302E31293B0D0A20202D2D612D63762D6163746976652D6261636B67726F756E642D636F6C6F723A20766172282D2D612D63762D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D63762D616374697665';
wwv_flow_imp.g_varchar2_table(459) := '2D746578742D636F6C6F723A20766172282D2D612D63762D746578742D636F6C6F72293B0D0A20202D2D612D63762D6163746976652D626F726465722D636F6C6F723A20766172282D2D612D63762D626F726465722D636F6C6F72293B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(460) := '2D63762D6163746976652D736861646F773A20766172282D2D612D63762D736861646F77293B0D0A20202D2D612D63762D666F6375732D626F726465722D636F6C6F723A20233234343835353B0D0A20202D2D612D63762D6D656469612D70616464696E';
wwv_flow_imp.g_varchar2_table(461) := '672D793A203172656D3B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A203172656D3B0D0A20202D2D612D63762D6865616465722D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D6865616465722D7061646469';
wwv_flow_imp.g_varchar2_table(462) := '6E672D783A203172656D3B0D0A20202D2D612D63762D6865616465722D626F726465722D77696474683A203170783B0D0A20202D2D612D63762D6865616465722D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C2030';
wwv_flow_imp.g_varchar2_table(463) := '2E31293B0D0A20202D2D612D63762D69636F6E2D6261636B67726F756E642D636F6C6F723A20233234343835353B0D0A20202D2D612D63762D69636F6E2D746578742D636F6C6F723A20236661666366643B0D0A20202D2D612D63762D69636F6E2D626F';
wwv_flow_imp.g_varchar2_table(464) := '726465722D7261646975733A20313030253B0D0A20202D2D612D63762D69636F6E2D73697A653A203172656D3B0D0A20202D2D612D63762D69636F6E2D636F6E7461696E65722D73697A653A203272656D3B0D0A20202D2D612D63762D69636F6E2D7061';
wwv_flow_imp.g_varchar2_table(465) := '6464696E673A20302E3572656D3B0D0A20202D2D612D63762D696E697469616C732D666F6E742D7765696768743A203730303B0D0A20202D2D612D63762D696E697469616C732D746578742D636F6C6F723A20236661666366643B0D0A20202D2D612D63';
wwv_flow_imp.g_varchar2_table(466) := '762D696E697469616C732D6261636B67726F756E642D636F6C6F723A20233234343835353B0D0A20202D2D612D63762D7375627469746C652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D63762D7375627469746C652D666F6E74';
wwv_flow_imp.g_varchar2_table(467) := '2D7765696768743A203430303B0D0A20202D2D612D63762D7375627469746C652D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D63762D7375627469746C652D746578742D636F6C6F723A20233964396439643B0D0A20202D2D612D63';
wwv_flow_imp.g_varchar2_table(468) := '762D626F64792D70616464696E672D783A203172656D3B0D0A20202D2D612D63762D626F64792D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D6D61696E636F6E74656E742D666F6E742D73697A653A20302E38373572656D3B0D0A';
wwv_flow_imp.g_varchar2_table(469) := '20202D2D612D63762D6D61696E636F6E74656E742D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D63762D737562636F6E74656E742D666F6E742D73697A653A20302E3638373572656D3B0D0A20202D2D612D63762D73756263';
wwv_flow_imp.g_varchar2_table(470) := '6F6E74656E742D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D63762D737562636F6E74656E742D746578742D636F6C6F723A20233964396439643B0D0A20202D2D612D63762D616374696F6E732D626F726465722D77696474683A20';
wwv_flow_imp.g_varchar2_table(471) := '3170783B0D0A20202D2D612D63762D616374696F6E732D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A20202D2D612D63762D616374696F6E732D70616464696E672D793A203172656D3B0D0A20';
wwv_flow_imp.g_varchar2_table(472) := '202D2D612D63762D616374696F6E732D70616464696E672D783A203172656D3B0D0A7D0D0A2E612D544D562D2D6361726473202E612D47562D666F6F746572207B0D0A20206D696E2D6865696768743A20756E7365743B0D0A202070616464696E672D62';
wwv_flow_imp.g_varchar2_table(473) := '6C6F636B2D73746172743A20303B0D0A202070616464696E672D626C6F636B2D656E643A20303B0D0A7D0D0A2E612D544D562D2D6361726473202E612D47562D666F6F746572202E6A732D72616E6765446973706C6179207B0D0A20206D617267696E2D';
wwv_flow_imp.g_varchar2_table(474) := '626C6F636B2D73746172743A20766172282D2D612D67762D666F6F7465722D70616464696E672D79293B0D0A20206D617267696E2D626C6F636B2D656E643A20766172282D2D612D67762D666F6F7465722D70616464696E672D79293B0D0A7D0D0A2E61';
wwv_flow_imp.g_varchar2_table(475) := '2D43617264566965772D66756C6C4C696E6B3A666F637573207B0D0A2020626F782D736861646F773A20696E73657420302030203020766172282D2D612D63762D626F726465722D77696474682C20302920766172282D2D612D63762D666F6375732D62';
wwv_flow_imp.g_varchar2_table(476) := '6F726465722D636F6C6F72293B0D0A7D0D0A2E612D43617264566965772D6D65646961207B0D0A2020616C69676E2D6974656D733A2063656E7465723B0D0A20206A7573746966792D636F6E74656E743A2063656E7465723B0D0A7D0D0A2E612D436172';
wwv_flow_imp.g_varchar2_table(477) := '64566965772D6D656469612061207B0D0A20207472616E736974696F6E3A206F70616369747920302E327320656173653B0D0A7D0D0A2E612D43617264566965772D6D6564696120613A666F637573207B0D0A20206F7061636974793A20302E353B0D0A';
wwv_flow_imp.g_varchar2_table(478) := '7D0D0A2E612D43617264566965772D6865616465723A6C6173742D6368696C64207B0D0A20202D2D612D63762D6865616465722D626F726465722D77696474683A203070783B0D0A7D0D0A2E6861732D6D656469612D2D6669727374207B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(479) := '612D63762D6D656469612D70616464696E672D793A20303B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A20303B0D0A7D0D0A2E6861732D6D656469612D2D6261636B67726F756E64207B0D0A20202D2D612D63762D6D656469612D';
wwv_flow_imp.g_varchar2_table(480) := '70616464696E672D793A203072656D3B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A203072656D3B0D0A20202D2D612D63762D746578742D636F6C6F723A20236666663B0D0A20202D2D612D63762D7375627469746C652D746578';
wwv_flow_imp.g_varchar2_table(481) := '742D636F6C6F723A2072676261283235352C203235352C203235352C20302E3635293B0D0A20202D2D612D63762D737562636F6E74656E742D746578742D636F6C6F723A2072676261283235352C203235352C203235352C20302E3635293B0D0A20202D';
wwv_flow_imp.g_varchar2_table(482) := '2D612D63762D62616467652D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3235293B0D0A7D0D0A2E6861732D6D656469612D2D6261636B67726F756E6420613A6E6F74285B636C6173735D29207B';
wwv_flow_imp.g_varchar2_table(483) := '0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E6861732D6D656469612D2D6261636B67726F756E6420613A6E6F74285B636C6173735D293A686F7665722C0D0A2E6861732D6D656469612D2D6261636B67726F756E6420613A6E6F74285B';
wwv_flow_imp.g_varchar2_table(484) := '636C6173735D293A666F637573207B0D0A2020746578742D6465636F726174696F6E3A20756E6465726C696E653B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541207B0D0A20202D2D612D63762D6F766572666C6F773A2068696464';
wwv_flow_imp.g_varchar2_table(485) := '656E3B0D0A20202D2D612D63762D6D656469612D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E303235293B0D0A20202D2D612D63762D6D656469612D6F7665726C61792D636F6C6F723A20726762';
wwv_flow_imp.g_varchar2_table(486) := '6128302C20302C20302C20302E3735293B0D0A20202D2D612D63762D6865616465722D626F726465722D77696474683A203070783B0D0A20202D2D612D63762D6865616465722D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A20202D';
wwv_flow_imp.g_varchar2_table(487) := '2D612D63762D616374696F6E732D626F726465722D77696474683A203070783B0D0A20202D2D612D63762D616374696F6E732D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A20202D2D612D63762D69636F6E2D636F6E7461696E6572';
wwv_flow_imp.g_varchar2_table(488) := '2D73697A653A20322E3572656D3B0D0A20202D2D612D63762D69636F6E2D73697A653A20312E323572656D3B0D0A20202D2D612D63762D69636F6E2D626F726465722D7261646975733A20302E3138373572656D3B0D0A20202D2D612D63762D69636F6E';
wwv_flow_imp.g_varchar2_table(489) := '2D696D6167652D73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D69636F6E2D696D6167652D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F';
wwv_flow_imp.g_varchar2_table(490) := '726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D73';
wwv_flow_imp.g_varchar2_table(491) := '697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D696E697469616C732D666F6E742D73697A653A20312E323572656D3B0D0A20202D2D612D63762D696E697469616C732D666F6E74';
wwv_flow_imp.g_varchar2_table(492) := '2D7765696768743A203430303B0D0A20202D2D612D63762D62616467652D70616464696E673A20302E323572656D20302E3572656D3B0D0A20202D2D612D63762D62616467652D626F726465722D7261646975733A20312E323572656D3B0D0A7D0D0A2E';
wwv_flow_imp.g_varchar2_table(493) := '742D4361726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D6669727374207B0D0A20202D2D612D63762D6D656469612D';
wwv_flow_imp.g_varchar2_table(494) := '626F726465722D7261646975733A20302E3138373572656D3B0D0A20202D2D612D63762D6D656469612D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A203172656D3B0D0A7D0D0A2E742D43';
wwv_flow_imp.g_varchar2_table(495) := '61726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D626F6479202E612D43617264566965772D6D656469612C0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D6669727374202E612D';
wwv_flow_imp.g_varchar2_table(496) := '43617264566965772D6D65646961207B0D0A20206D617267696E2D696E6C696E652D73746172743A20766172282D2D612D63762D6D656469612D70616464696E672D78293B0D0A20206D617267696E2D696E6C696E652D656E643A20766172282D2D612D';
wwv_flow_imp.g_varchar2_table(497) := '63762D6D656469612D70616464696E672D78293B0D0A202070616464696E673A20303B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D6669727374202E612D43617264566965772D6D65646961207B';
wwv_flow_imp.g_varchar2_table(498) := '0D0A20206D617267696E2D626C6F636B2D73746172743A20766172282D2D612D63762D6D656469612D70616464696E672D79293B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D69636F6E2D2D746F70207B0D0A2020';
wwv_flow_imp.g_varchar2_table(499) := '2D2D612D63762D69636F6E2D636F6E7461696E65722D73697A653A203672656D3B0D0A20202D2D612D63762D69636F6E2D73697A653A203372656D3B0D0A20202D2D612D63762D69636F6E2D626F726465722D7261646975733A20302E3572656D3B0D0A';
wwv_flow_imp.g_varchar2_table(500) := '20202D2D612D63762D69636F6E2D696D6167652D73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D69636F6E2D696D6167652D626F726465722D7261646975733A20766172282D';
wwv_flow_imp.g_varchar2_table(501) := '2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(502) := '63762D696E697469616C732D73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D696E697469616C732D666F6E742D73697A653A20312E3572656D3B0D0A7D0D0A2E742D43617264';
wwv_flow_imp.g_varchar2_table(503) := '73526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D6669727374202E612D43617264566965772D686561646572202B202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861';
wwv_flow_imp.g_varchar2_table(504) := '732D6D656469612D2D6261636B67726F756E64202E612D43617264566965772D686561646572202B202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E612D43617264566965772D626F647920';
wwv_flow_imp.g_varchar2_table(505) := '2B202E612D43617264566965772D616374696F6E73207B0D0A202070616464696E672D626C6F636B2D73746172743A20303B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E612D43617264566965772D6974656D732D2D726F77';
wwv_flow_imp.g_varchar2_table(506) := '202E742D4361726473526567696F6E2D2D7374796C6541202E612D43617264566965772D616374696F6E73207B0D0A2020666C65782D646972656374696F6E3A20636F6C756D6E3B0D0A2020616C69676E2D6974656D733A20666C65782D656E643B0D0A';
wwv_flow_imp.g_varchar2_table(507) := '2020677269642D636F6C756D6E3A20343B0D0A2020677269642D726F772D73746172743A20313B0D0A2020677269642D726F772D656E643A20343B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E612D43617264566965772D69';
wwv_flow_imp.g_varchar2_table(508) := '74656D732D2D726F77202E612D43617264566965772D6D65646961207B0D0A20206D617267696E2D626C6F636B2D73746172743A20766172282D2D612D63762D6D656469612D70616464696E672D79293B0D0A20206D617267696E2D626C6F636B2D656E';
wwv_flow_imp.g_varchar2_table(509) := '643A20766172282D2D612D63762D6D656469612D70616464696E672D79293B0D0A20206D617267696E2D696E6C696E652D656E643A20303B0D0A7D0D0A2E752D52544C202E742D4361726473526567696F6E2D2D7374796C6541202E612D436172645669';
wwv_flow_imp.g_varchar2_table(510) := '65772D6974656D732D2D726F77202E612D43617264566965772D6D65646961207B0D0A20206D617267696E2D696E6C696E652D656E643A20766172282D2D612D63762D6D656469612D70616464696E672D78293B0D0A20206D617267696E2D696E6C696E';
wwv_flow_imp.g_varchar2_table(511) := '652D73746172743A20303B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542207B0D0A20202D2D612D63762D6F766572666C6F773A2068696464656E3B0D0A20202D2D612D63762D6D656469612D6261636B67726F756E642D636F6C6F';
wwv_flow_imp.g_varchar2_table(512) := '723A2072676261283235352C203235352C203235352C20302E303235293B0D0A20202D2D612D63762D6D656469612D6F7665726C61792D636F6C6F723A207267626128302C20302C20302C20302E3735293B0D0A20202D2D612D63762D69636F6E2D636F';
wwv_flow_imp.g_varchar2_table(513) := '6E7461696E65722D73697A653A203472656D3B0D0A20202D2D612D63762D69636F6E2D73697A653A203272656D3B0D0A20202D2D612D63762D69636F6E2D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D612D63762D69636F6E';
wwv_flow_imp.g_varchar2_table(514) := '2D696D6167652D73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D69636F6E2D696D6167652D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F';
wwv_flow_imp.g_varchar2_table(515) := '726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D73';
wwv_flow_imp.g_varchar2_table(516) := '697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D696E697469616C732D666F6E742D73697A653A203272656D3B0D0A20202D2D612D63762D696E697469616C732D666F6E742D7765';
wwv_flow_imp.g_varchar2_table(517) := '696768743A203430303B0D0A20202D2D612D63762D6D656469612D70616464696E672D793A203072656D3B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A203072656D3B0D0A20202D2D612D63762D6865616465722D626F72646572';
wwv_flow_imp.g_varchar2_table(518) := '2D77696474683A203070783B0D0A20202D2D612D63762D6865616465722D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A20202D2D612D63762D616374696F6E732D626F726465722D77696474683A203070783B0D0A20202D2D612D63';
wwv_flow_imp.g_varchar2_table(519) := '762D616374696F6E732D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A20202D2D612D63762D7469746C652D666F6E742D73697A653A20312E323572656D3B0D0A20202D2D612D63762D7469746C652D6C696E652D6865696768743A20';
wwv_flow_imp.g_varchar2_table(520) := '312E373572656D3B0D0A20202D2D612D63762D62616467652D70616464696E673A20302E323572656D20302E373572656D3B0D0A20202D2D612D63762D62616467652D626F726465722D7261646975733A20312E323572656D3B0D0A7D0D0A2E742D4361';
wwv_flow_imp.g_varchar2_table(521) := '726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D746F70207B0D0A20202D2D612D63762D69636F6E2D636F6E7461696E65722D73697A653A203772656D3B0D0A20202D2D612D63762D69636F6E2D73697A653A203272656D3B0D0A';
wwv_flow_imp.g_varchar2_table(522) := '20202D2D612D63762D69636F6E2D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D612D63762D69636F6E2D696D6167652D73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20';
wwv_flow_imp.g_varchar2_table(523) := '202D2D612D63762D69636F6E2D696D6167652D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D626F726465722D7261646975733A20';
wwv_flow_imp.g_varchar2_table(524) := '766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D';
wwv_flow_imp.g_varchar2_table(525) := '696E697469616C732D666F6E742D73697A653A203272656D3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D746F70202E612D43617264566965772D69636F6E57726170207B0D0A20206D617267696E';
wwv_flow_imp.g_varchar2_table(526) := '2D696E6C696E652D73746172743A2063616C6328766172282D2D612D63762D6865616465722D70616464696E672D7829202A202D31293B0D0A20206D617267696E2D696E6C696E652D656E643A2063616C6328766172282D2D612D63762D686561646572';
wwv_flow_imp.g_varchar2_table(527) := '2D70616464696E672D7829202A202D31293B0D0A20206D617267696E2D626C6F636B2D73746172743A2063616C6328766172282D2D612D63762D6865616465722D70616464696E672D7929202A202D31293B0D0A7D0D0A2E742D4361726473526567696F';
wwv_flow_imp.g_varchar2_table(528) := '6E2D2D7374796C6542202E6861732D69636F6E2D2D746F70202E612D43617264566965772D69636F6E57726170202E612D43617264566965772D696E697469616C732C0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F';
wwv_flow_imp.g_varchar2_table(529) := '6E2D2D746F70202E612D43617264566965772D69636F6E57726170202E612D43617264566965772D69636F6E2C0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D746F70202E612D43617264566965772D69636F';
wwv_flow_imp.g_varchar2_table(530) := '6E57726170202E612D43617264566965772D69636F6E496D67207B0D0A202077696474683A20313030253B0D0A2020626F726465722D7261646975733A20303B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F';
wwv_flow_imp.g_varchar2_table(531) := '6E2D2D746F70202E612D43617264566965772D69636F6E3A6265666F7265207B0D0A2020626F726465722D7261646975733A20313030253B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20';
wwv_flow_imp.g_varchar2_table(532) := '20746578742D736861646F773A20302031707820317078207267626128302C20302C20302C20302E31293B0D0A20206D617267696E3A206175746F3B0D0A202070616464696E673A2063616C6328766172282D2D612D63762D69636F6E2D73697A652920';
wwv_flow_imp.g_varchar2_table(533) := '2F2032293B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D7374617274202E612D43617264566965772D69636F6E57726170207B0D0A20206D617267696E2D626C6F636B2D656E643A20766172282D2D';
wwv_flow_imp.g_varchar2_table(534) := '612D63762D6865616465722D6974656D2D73706163696E672D782C20302E373572656D293B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D656E64202E612D43617264566965772D69636F6E57726170';
wwv_flow_imp.g_varchar2_table(535) := '207B0D0A20206D617267696E2D626C6F636B2D73746172743A20766172282D2D612D63762D6865616465722D6974656D2D73706163696E672D782C20302E373572656D293B0D0A2020677269642D617265613A2062616467652D626F74746F6D3B0D0A7D';
wwv_flow_imp.g_varchar2_table(536) := '0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D656E64202E612D43617264566965772D686561646572426F6479207B0D0A2020677269642D617265613A2069636F6E2D746F703B0D0A7D0D0A2E742D43617264';
wwv_flow_imp.g_varchar2_table(537) := '73526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D656E64202E612D43617264566965772D6261646765207B0D0A2020677269642D617265613A20626F64793B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E61';
wwv_flow_imp.g_varchar2_table(538) := '2D43617264566965772D69636F6E57726170207B0D0A2020677269642D617265613A2069636F6E2D746F703B0D0A20206D617267696E2D696E6C696E652D656E643A20756E7365743B0D0A20206D617267696E2D696E6C696E652D73746172743A20756E';
wwv_flow_imp.g_varchar2_table(539) := '7365743B0D0A2020646973706C61793A20666C65783B0D0A20206A7573746966792D636F6E74656E743A2063656E7465723B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D686561646572426F6479';
wwv_flow_imp.g_varchar2_table(540) := '207B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D6261646765207B0D0A20206D617267696E2D696E6C696E652D73746172743A20617574';
wwv_flow_imp.g_varchar2_table(541) := '6F3B0D0A20206D617267696E2D696E6C696E652D656E643A206175746F3B0D0A2020677269642D617265613A2062616467652D626F74746F6D3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D6261';
wwv_flow_imp.g_varchar2_table(542) := '6467653A6E6F74283A66697273742D6368696C6429207B0D0A20206D617267696E2D626C6F636B2D73746172743A20766172282D2D612D63762D6865616465722D6974656D2D73706163696E672D782C20302E373572656D293B0D0A7D0D0A2E742D4361';
wwv_flow_imp.g_varchar2_table(543) := '726473526567696F6E2D2D7374796C6542202E612D43617264566965772D62616467654C6162656C207B0D0A2020626F726465723A20756E7365743B0D0A2020636C69703A20756E7365743B0D0A2020636C69702D706174683A20756E7365743B0D0A20';
wwv_flow_imp.g_varchar2_table(544) := '206865696768743A20756E7365743B0D0A20206D617267696E3A20756E7365743B0D0A20206F766572666C6F773A20756E7365743B0D0A202070616464696E673A20756E7365743B0D0A2020706F736974696F6E3A20756E7365743B0D0A202077696474';
wwv_flow_imp.g_varchar2_table(545) := '683A20756E7365743B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D616374696F6E73207B0D0A2020666C65782D646972656374696F6E3A20636F6C756D6E3B0D0A7D0D0A2E742D43617264735265';
wwv_flow_imp.g_varchar2_table(546) := '67696F6E2D2D7374796C6542202E612D43617264566965772D616374696F6E735072696D617279202E612D43617264566965772D627574746F6E207B0D0A202077696474683A20313030253B0D0A7D0D0A2E742D4361726473526567696F6E2D2D737479';
wwv_flow_imp.g_varchar2_table(547) := '6C6542202E612D43617264566965772D616374696F6E735072696D617279202E612D43617264566965772D627574746F6E202B202E612D43617264566965772D627574746F6E207B0D0A20206D617267696E2D626C6F636B2D73746172743A20302E3235';
wwv_flow_imp.g_varchar2_table(548) := '72656D3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D616374696F6E735365636F6E64617279207B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A7D0D0A2E742D43617264735265';
wwv_flow_imp.g_varchar2_table(549) := '67696F6E2D2D7374796C6542202E612D43617264566965772D616374696F6E735365636F6E646172793A6E6F74283A6F6E6C792D6368696C6429207B0D0A20206D617267696E2D626C6F636B2D73746172743A20302E3572656D3B0D0A7D0D0A2E742D43';
wwv_flow_imp.g_varchar2_table(550) := '61726473526567696F6E2D2D7374796C6543207B0D0A20202D2D612D63762D6F766572666C6F773A2068696464656E3B0D0A20202D2D612D63762D6D656469612D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235';
wwv_flow_imp.g_varchar2_table(551) := '352C20302E303235293B0D0A20202D2D612D63762D6D656469612D6F7665726C61792D636F6C6F723A207267626128302C20302C20302C20302E3735293B0D0A20202D2D612D63762D6D656469612D70616464696E672D793A203072656D3B0D0A20202D';
wwv_flow_imp.g_varchar2_table(552) := '2D612D63762D6D656469612D70616464696E672D783A203072656D3B0D0A20202D2D612D63762D6865616465722D626F726465722D77696474683A203070783B0D0A20202D2D612D63762D6865616465722D6261636B67726F756E642D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(553) := '756E7365743B0D0A20202D2D612D63762D616374696F6E732D626F726465722D77696474683A203070783B0D0A20202D2D612D63762D616374696F6E732D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A7D0D0A2E742D436172647352';
wwv_flow_imp.g_varchar2_table(554) := '6567696F6E2D2D7374796C6543202E6861732D7469746C652E6861732D626F64793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E68';
wwv_flow_imp.g_varchar2_table(555) := '61732D7469746C652E6861732D7365636F6E646172793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D7375627469746C65';
wwv_flow_imp.g_varchar2_table(556) := '2E6861732D626F64793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D7375627469746C652E6861732D7365636F6E646172';
wwv_flow_imp.g_varchar2_table(557) := '793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D69636F6E2E6861732D626F64793A6E6F74282E6861732D6D656469612D';
wwv_flow_imp.g_varchar2_table(558) := '2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D69636F6E2E6861732D7365636F6E646172793A6E6F74282E6861732D6D656469612D2D626F647929202E612D4361';
wwv_flow_imp.g_varchar2_table(559) := '7264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D62616467652E6861732D626F64793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E74';
wwv_flow_imp.g_varchar2_table(560) := '2D4361726473526567696F6E2D2D7374796C6543202E6861732D62616467652E6861732D7365636F6E646172793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F6479207B0D0A202070616464696E672D626C';
wwv_flow_imp.g_varchar2_table(561) := '6F636B2D73746172743A20303B0D0A7D0D0A406D6564696120286D61782D77696474683A20373637707829207B0D0A20202E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E612D4361';
wwv_flow_imp.g_varchar2_table(562) := '726456696577207B0D0A20202020646973706C61793A20666C65783B0D0A20207D0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D69636F6E2D2D7374617274';
wwv_flow_imp.g_varchar2_table(563) := '202E612D43617264566965772D626F6479207B0D0A2020677269642D636F6C756D6E2D73746172743A20323B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D';
wwv_flow_imp.g_varchar2_table(564) := '6D656469612D2D6669727374202E612D43617264566965772D626F6479207B0D0A2020677269642D636F6C756D6E2D73746172743A20323B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D';
wwv_flow_imp.g_varchar2_table(565) := '732D2D726F77202E6861732D6D656469612D2D66697273742E6861732D69636F6E2D2D7374617274202E612D43617264566965772D626F6479207B0D0A2020677269642D636F6C756D6E2D73746172743A20333B0D0A7D0D0A2E742D4361726473526567';
wwv_flow_imp.g_varchar2_table(566) := '696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E612D43617264566965772D616374696F6E73207B0D0A2020666C65782D646972656374696F6E3A20636F6C756D6E3B0D0A2020616C69676E2D6974656D733A20';
wwv_flow_imp.g_varchar2_table(567) := '63656E7465723B0D0A2020677269642D636F6C756D6E3A20343B0D0A2020677269642D726F772D73746172743A20313B0D0A2020677269642D726F772D656E643A20323B0D0A2020616C69676E2D73656C663A2063656E7465723B0D0A7D0D0A2E742D43';
wwv_flow_imp.g_varchar2_table(568) := '61726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D626F6479202E612D43617264566965772D616374696F6E73207B0D0A2020616C69676E2D6974656D733A20666C65782D656E643B0D';
wwv_flow_imp.g_varchar2_table(569) := '0A2020677269642D726F772D656E643A20343B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E612D43617264566965773A6E6F74282E6861732D69636F6E292C0D0A2E';
wwv_flow_imp.g_varchar2_table(570) := '742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D69636F6E2D2D746F702C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D697465';
wwv_flow_imp.g_varchar2_table(571) := '6D732D2D726F77202E6861732D69636F6E2D2D656E64207B0D0A20202D2D612D63762D69636F6E2D7370616365723A203072656D3B0D0A7D0D0A406D6564696120286D61782D77696474683A20373637707829207B0D0A20202E742D4361726473526567';
wwv_flow_imp.g_varchar2_table(572) := '696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D6D65646961207B0D0A20202020677269642D74656D706C6174652D636F6C756D6E733A206D696E6D617828312E323572656D2C203572656D29206D69';
wwv_flow_imp.g_varchar2_table(573) := '6E6D617828302C20766172282D2D612D63762D69636F6E2D7370616365722C20322E373572656D292920316672206D696E6D617828302C206175746F293B0D0A20207D0D0A7D0D0A612D636F6D626F626F78207B0D0A20202D2D612D636869702D72656D';
wwv_flow_imp.g_varchar2_table(574) := '6F76652D70616464696E673A20302E3036323572656D3B0D0A7D0D0A2E742D466F726D2D2D6C617267652C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765207B0D0A20202D2D75742D6669656C642D6C6162656C2D666F6E';
wwv_flow_imp.g_varchar2_table(575) := '742D73697A653A20302E38373572656D3B0D0A20202D2D75742D6669656C642D6C6162656C2D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D6669656C642D696E7075742D666F6E742D73697A653A20302E38373572656D3B0D0A2020';
wwv_flow_imp.g_varchar2_table(576) := '2D2D612D6669656C642D696E7075742D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D783A20302E3572656D3B0D0A20202D2D75742D6669656C642D696E7075742D69636F6E2D7061';
wwv_flow_imp.g_varchar2_table(577) := '6464696E672D783A20302E3572656D3B0D0A20202D2D75742D6669656C642D696E7075742D69636F6E2D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D636865636B626F782D73697A653A20312E323572656D3B0D0A20202D2D612D63';
wwv_flow_imp.g_varchar2_table(578) := '6865636B626F782D69636F6E2D73697A653A20312E31323572656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D6C696E652D68';
wwv_flow_imp.g_varchar2_table(579) := '65696768743A20312E323572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D70616464696E672D793A20302E3572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D70616464696E672D783A20302E373572656D3B0D0A20202D2D7574';
wwv_flow_imp.g_varchar2_table(580) := '2D70696C6C627574746F6E2D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D6C696E652D6865696768743A203172656D3B0D0A20202D2D75742D70696C6C627574746F6E2D636865636B626F782D6F66';
wwv_flow_imp.g_varchar2_table(581) := '667365743A20302E33373572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D636865636B626F782D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6D617267696E2D783A20302E31323572';
wwv_flow_imp.g_varchar2_table(582) := '656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6D617267696E2D793A20302E31323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D706F7075706C';
wwv_flow_imp.g_varchar2_table(583) := '6F762D636869702D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D70616464696E672D793A20302E31323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D70616464696E67';
wwv_flow_imp.g_varchar2_table(584) := '2D783A20302E33373572656D3B0D0A20202D2D612D7377697463682D77696474683A20332E373572656D3B0D0A20202D2D612D7377697463682D70616464696E672D793A20302E3138373572656D3B0D0A20202D2D612D7377697463682D70616464696E';
wwv_flow_imp.g_varchar2_table(585) := '672D783A20302E3138373572656D3B0D0A20202D2D612D7377697463682D746F67676C652D77696474683A20312E36323572656D3B0D0A20202D2D612D7377697463682D746F67676C652D6865696768743A20312E36323572656D3B0D0A7D0D0A2E742D';
wwv_flow_imp.g_varchar2_table(586) := '466F726D2D2D6C61726765202E742D466F726D2D6974656D546578742C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E742D466F726D2D6974656D54657874207B0D0A20206C696E652D6865696768743A203272656D';
wwv_flow_imp.g_varchar2_table(587) := '3B0D0A2020666F6E742D73697A653A20302E38373572656D3B0D0A7D0D0A2E742D466F726D2D2D6C61726765202E617065782D6974656D2D69636F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E617065782D69';
wwv_flow_imp.g_varchar2_table(588) := '74656D2D69636F6E2C0D0A2E742D466F726D2D2D6C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B65722C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C617267652E617065782D6974656D2D';
wwv_flow_imp.g_varchar2_table(589) := '777261707065722D2D636F6C6F722D7069636B6572207B0D0A20202D2D612D69636F6E2D70616464696E673A20302E3572656D3B0D0A7D0D0A2E742D466F726D2D2D6C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D706963';
wwv_flow_imp.g_varchar2_table(590) := '6B65722C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B6572207B0D0A20202D2D612D69636F6E2D73697A653A20312E323572656D3B0D0A2020';
wwv_flow_imp.g_varchar2_table(591) := '2D2D612D6974656D2D69636F6E2D6F66667365743A2063616C6328766172282D2D612D69636F6E2D73697A652C203172656D29202B20766172282D2D612D69636F6E2D70616464696E6729293B0D0A7D0D0A2E742D466F726D2D2D6C61726765202E6170';
wwv_flow_imp.g_varchar2_table(592) := '65782D6974656D2D67726F75702D2D636F6C6F722D7069636B6572202E612D427574746F6E2D2D636F6C6F725069636B65724F6E6C792C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E617065782D6974656D2D6772';
wwv_flow_imp.g_varchar2_table(593) := '6F75702D2D636F6C6F722D7069636B6572202E612D427574746F6E2D2D636F6C6F725069636B65724F6E6C79207B0D0A20202D2D612D636F6C6F722D7069636B65722D636F6C6F722D6F6E6C792D6865696768743A203172656D3B0D0A20202D2D612D63';
wwv_flow_imp.g_varchar2_table(594) := '6F6C6F722D7069636B65722D636F6C6F722D6F6E6C792D77696474683A203272656D3B0D0A20202D2D612D627574746F6E2D70616464696E673A20302E3572656D3B0D0A7D0D0A2E742D466F726D2D2D6C617267652E617065782D6974656D2D77726170';
wwv_flow_imp.g_varchar2_table(595) := '7065722D2D6861732D69636F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C617267652E617065782D6974656D2D777261707065722D2D6861732D69636F6E207B0D0A20202D2D612D69636F6E2D70616464696E673A20302E35';
wwv_flow_imp.g_varchar2_table(596) := '72656D3B0D0A20202D2D612D6974656D2D69636F6E2D6F66667365743A2063616C6328766172282D2D612D69636F6E2D73697A652C203172656D29202B20766172282D2D612D69636F6E2D70616464696E6729293B0D0A7D0D0A2E742D466F726D2D2D6C';
wwv_flow_imp.g_varchar2_table(597) := '61726765202E742D466F726D2D6974656D57726170706572202E612D427574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E742D466F726D2D6974656D57726170706572202E612D427574746F6E2C0D0A2E';
wwv_flow_imp.g_varchar2_table(598) := '742D466F726D2D2D6C61726765202E742D466F726D2D6974656D57726170706572202E742D466F726D2D68656C70427574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E742D466F726D2D6974656D577261';
wwv_flow_imp.g_varchar2_table(599) := '70706572202E742D466F726D2D68656C70427574746F6E2C0D0A2E742D466F726D2D2D6C61726765202E617065782D6974656D2D66696C652D2D6E61746976653A3A2D7765626B69742D66696C652D75706C6F61642D627574746F6E2C0D0A2E742D466F';
wwv_flow_imp.g_varchar2_table(600) := '726D2D6669656C64436F6E7461696E65722D2D6C61726765202E617065782D6974656D2D66696C652D2D6E61746976653A3A2D7765626B69742D66696C652D75706C6F61642D627574746F6E207B0D0A20202D2D612D627574746F6E2D70616464696E67';
wwv_flow_imp.g_varchar2_table(601) := '2D793A20302E3572656D3B0D0A20202D2D612D627574746F6E2D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D69636F6E2D73697A653A203172656D3B0D0A7D0D0A2E742D466F726D2D2D6C61726765202E617065782D6974656D2D';
wwv_flow_imp.g_varchar2_table(602) := '67726F75702D2D73687574746C652073656C6563742E73687574746C655F6C6566742C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E617065782D6974656D2D67726F75702D2D73687574746C652073656C6563742E';
wwv_flow_imp.g_varchar2_table(603) := '73687574746C655F6C6566742C0D0A2E742D466F726D2D2D6C61726765202E617065782D6974656D2D67726F75702D2D73687574746C652073656C6563742E73687574746C655F72696768742C0D0A2E742D466F726D2D6669656C64436F6E7461696E65';
wwv_flow_imp.g_varchar2_table(604) := '722D2D6C61726765202E617065782D6974656D2D67726F75702D2D73687574746C652073656C6563742E73687574746C655F7269676874207B0D0A20206D696E2D6865696768743A2031312E323572656D3B0D0A7D0D0A2E742D466F726D2D2D786C6172';
wwv_flow_imp.g_varchar2_table(605) := '67652C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765207B0D0A20202D2D75742D6669656C642D6C6162656C2D666F6E742D73697A653A203172656D3B0D0A20202D2D75742D6669656C642D6C6162656C2D7061646469';
wwv_flow_imp.g_varchar2_table(606) := '6E672D793A20302E373572656D3B0D0A20202D2D612D6669656C642D696E7075742D666F6E742D73697A653A203172656D3B0D0A20202D2D612D6669656C642D696E7075742D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D66';
wwv_flow_imp.g_varchar2_table(607) := '69656C642D696E7075742D70616464696E672D793A20302E36323572656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D783A20302E36323572656D3B0D0A20202D2D75742D6669656C642D696E7075742D69636F6E2D706164';
wwv_flow_imp.g_varchar2_table(608) := '64696E672D783A20302E3572656D3B0D0A20202D2D75742D6669656C642D696E7075742D69636F6E2D70616464696E672D793A20302E373572656D3B0D0A20202D2D612D636865636B626F782D73697A653A20312E3572656D3B0D0A20202D2D612D6368';
wwv_flow_imp.g_varchar2_table(609) := '65636B626F782D69636F6E2D73697A653A20312E31323572656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D666F6E742D73697A653A203172656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D6C696E652D686569676874';
wwv_flow_imp.g_varchar2_table(610) := '3A20312E3572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D70616464696E672D793A20302E373572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D70616464696E672D783A20302E373572656D3B0D0A20202D2D75742D70696C6C';
wwv_flow_imp.g_varchar2_table(611) := '627574746F6E2D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D6C696E652D6865696768743A203172656D3B0D0A20202D2D75742D70696C6C627574746F6E2D636865636B626F782D6F6666736574';
wwv_flow_imp.g_varchar2_table(612) := '3A20302E3572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D636865636B626F782D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6D617267696E2D783A20302E31323572656D3B0D0A20';
wwv_flow_imp.g_varchar2_table(613) := '202D2D612D706F7075706C6F762D636869702D6D617267696E2D793A20302E31323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D666F6E742D73697A653A203172656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6C69';
wwv_flow_imp.g_varchar2_table(614) := '6E652D6865696768743A20312E3572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D70616464696E672D783A20302E3572656D3B0D';
wwv_flow_imp.g_varchar2_table(615) := '0A20202D2D612D7377697463682D77696474683A20342E373572656D3B0D0A20202D2D612D7377697463682D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D7377697463682D70616464696E672D783A20302E323572656D3B0D0A20';
wwv_flow_imp.g_varchar2_table(616) := '202D2D612D7377697463682D746F67676C652D77696474683A203272656D3B0D0A20202D2D612D7377697463682D746F67676C652D6865696768743A203272656D3B0D0A7D0D0A2E742D466F726D2D2D786C61726765202E742D466F726D2D6974656D54';
wwv_flow_imp.g_varchar2_table(617) := '6578742C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E742D466F726D2D6974656D54657874207B0D0A20206C696E652D6865696768743A20322E3572656D3B0D0A2020666F6E742D73697A653A203172656D3B0D';
wwv_flow_imp.g_varchar2_table(618) := '0A7D0D0A2E742D466F726D2D2D786C61726765202E617065782D6974656D2D69636F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E617065782D6974656D2D69636F6E2C0D0A2E742D466F726D2D2D786C6172';
wwv_flow_imp.g_varchar2_table(619) := '67652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B65722C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B657220';
wwv_flow_imp.g_varchar2_table(620) := '7B0D0A20202D2D612D69636F6E2D70616464696E673A20302E3572656D3B0D0A7D0D0A2E742D466F726D2D2D786C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B65722C0D0A2E742D466F726D2D6669656C64436F';
wwv_flow_imp.g_varchar2_table(621) := '6E7461696E65722D2D786C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B6572207B0D0A20202D2D612D69636F6E2D73697A653A20312E323572656D3B0D0A20202D2D612D6974656D2D69636F6E2D6F6666736574';
wwv_flow_imp.g_varchar2_table(622) := '3A2063616C6328766172282D2D612D69636F6E2D73697A652C203172656D29202B20766172282D2D612D69636F6E2D70616464696E6729293B0D0A7D0D0A2E742D466F726D2D2D786C61726765202E617065782D6974656D2D67726F75702D2D636F6C6F';
wwv_flow_imp.g_varchar2_table(623) := '722D7069636B6572202E612D427574746F6E2D2D636F6C6F725069636B65724F6E6C792C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E617065782D6974656D2D67726F75702D2D636F6C6F722D7069636B657220';
wwv_flow_imp.g_varchar2_table(624) := '2E612D427574746F6E2D2D636F6C6F725069636B65724F6E6C79207B0D0A20202D2D612D636F6C6F722D7069636B65722D636F6C6F722D6F6E6C792D6865696768743A20312E3572656D3B0D0A20202D2D612D636F6C6F722D7069636B65722D636F6C6F';
wwv_flow_imp.g_varchar2_table(625) := '722D6F6E6C792D77696474683A203272656D3B0D0A20202D2D612D627574746F6E2D70616464696E673A20302E3572656D3B0D0A7D0D0A2E742D466F726D2D2D786C61726765202E742D466F726D2D6974656D57726170706572202E612D427574746F6E';
wwv_flow_imp.g_varchar2_table(626) := '2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E742D466F726D2D6974656D57726170706572202E612D427574746F6E2C0D0A2E742D466F726D2D2D786C61726765202E742D466F726D2D6974656D577261707065';
wwv_flow_imp.g_varchar2_table(627) := '72202E742D466F726D2D68656C70427574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E742D466F726D2D6974656D57726170706572202E742D466F726D2D68656C70427574746F6E2C0D0A2E742D466F';
wwv_flow_imp.g_varchar2_table(628) := '726D2D2D786C61726765202E617065782D6974656D2D66696C652D2D6E61746976653A3A2D7765626B69742D66696C652D75706C6F61642D627574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E617065';
wwv_flow_imp.g_varchar2_table(629) := '782D6974656D2D66696C652D2D6E61746976653A3A2D7765626B69742D66696C652D75706C6F61642D627574746F6E207B0D0A20202D2D612D627574746F6E2D70616464696E672D793A20302E3638373572656D3B0D0A20202D2D612D627574746F6E2D';
wwv_flow_imp.g_varchar2_table(630) := '70616464696E672D783A20302E373572656D3B0D0A20202D2D612D69636F6E2D73697A653A203172656D3B0D0A7D0D0A2E742D466F726D2D2D786C617267652E617065782D6974656D2D777261707065722D2D6861732D69636F6E2C0D0A2E742D466F72';
wwv_flow_imp.g_varchar2_table(631) := '6D2D6669656C64436F6E7461696E65722D2D786C617267652E617065782D6974656D2D777261707065722D2D6861732D69636F6E207B0D0A20202D2D612D69636F6E2D70616464696E673A20302E3572656D3B0D0A20202D2D612D6974656D2D69636F6E';
wwv_flow_imp.g_varchar2_table(632) := '2D6F66667365743A2063616C6328766172282D2D612D69636F6E2D73697A652C203172656D29202B20766172282D2D612D69636F6E2D70616464696E6729293B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E';
wwv_flow_imp.g_varchar2_table(633) := '674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C617267652C0D0A2E742D466F726D2D2D6C61726765202E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C207B0D0A20202D2D7574';
wwv_flow_imp.g_varchar2_table(634) := '2D6669656C642D6C6162656C2D666F6E742D73697A653A203172656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D793A2030';
wwv_flow_imp.g_varchar2_table(635) := '2E36323572656D3B0D0A20202D2D612D6669656C642D696E7075742D666F6E742D73697A653A203172656D3B0D0A20202D2D75742D6669656C642D666C2D6C6162656C2D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D75742D6669';
wwv_flow_imp.g_varchar2_table(636) := '656C642D666C2D6C6162656C2D666F6E742D73697A653A20302E373572656D3B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C';
wwv_flow_imp.g_varchar2_table(637) := '617267652C0D0A2E742D466F726D2D2D786C61726765202E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C207B0D0A20202D2D75742D6669656C642D6C6162656C2D666F6E742D73697A653A203172656D3B0D';
wwv_flow_imp.g_varchar2_table(638) := '0A20202D2D612D6669656C642D696E7075742D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D793A20302E373572656D3B0D0A20202D2D612D6669656C642D696E7075742D666F6E';
wwv_flow_imp.g_varchar2_table(639) := '742D73697A653A203172656D3B0D0A20202D2D75742D6669656C642D666C2D6C6162656C2D6C696E652D6865696768743A20312E33373572656D3B0D0A20202D2D75742D6669656C642D666C2D6C6162656C2D666F6E742D73697A653A20302E38373572';
wwv_flow_imp.g_varchar2_table(640) := '656D3B0D0A20202D2D75742D6669656C642D696E7075742D69636F6E2D70616464696E672D783A20302E36323572656D3B0D0A7D0D0A2E726F2D636865636B626F782C0D0A2E752D636865636B626F783A6265666F72652C0D0A2E752D726164696F3A62';
wwv_flow_imp.g_varchar2_table(641) := '65666F7265207B0D0A20207472616E73666F726D2D6F726967696E3A2063656E7465722063656E7465723B0D0A20207472616E736974696F6E3A207472616E73666F726D20302E3132357320656173652C206261636B67726F756E642D636F6C6F722030';
wwv_flow_imp.g_varchar2_table(642) := '2E31357320656173652C20626F782D736861646F7720302E31357320656173652C20626F726465722D636F6C6F7220302E31357320656173653B0D0A7D0D0A2E726F2D636865636B626F783A6265666F72652C0D0A2E752D636865636B626F783A616674';
wwv_flow_imp.g_varchar2_table(643) := '65722C0D0A2E752D726164696F3A6166746572207B0D0A20207472616E73666F726D2D6F726967696E3A2063656E7465722063656E7465723B0D0A20207472616E73666F726D3A207363616C652830293B0D0A20207472616E736974696F6E3A206F7061';
wwv_flow_imp.g_varchar2_table(644) := '6369747920302E31357320656173652C207472616E73666F726D20302E327320656173653B0D0A7D0D0A2E726F2D636865636B626F783A6163746976652C0D0A2E726F2D636865636B626F783A6163746976653A6265666F72652C0D0A2E752D63686563';
wwv_flow_imp.g_varchar2_table(645) := '6B626F783A6163746976653A6265666F72652C0D0A2E752D636865636B626F783A6163746976653A61667465722C0D0A696E7075743A636865636B6564202B202E752D636865636B626F783A6163746976653A61667465722C0D0A2E752D726164696F3A';
wwv_flow_imp.g_varchar2_table(646) := '6163746976653A6265666F72652C0D0A2E752D726164696F3A6163746976653A61667465722C0D0A696E7075743A636865636B6564202B202E752D726164696F3A6163746976653A6166746572207B0D0A20207472616E73666F726D3A207363616C6528';
wwv_flow_imp.g_varchar2_table(647) := '302E3735293B0D0A7D0D0A2E726F2D636865636B626F782E69732D636865636B65643A6265666F72652C0D0A2E752D636865636B626F782E69732D636865636B65643A61667465722C0D0A696E7075743A636865636B6564202B202E752D636865636B62';
wwv_flow_imp.g_varchar2_table(648) := '6F783A61667465722C0D0A696E7075743A636865636B6564202B202E752D726164696F3A6166746572207B0D0A20207472616E73666F726D3A207363616C652831293B0D0A7D0D0A2E612D446174655069636B65722D2D6D756C7469706C65202E612D44';
wwv_flow_imp.g_varchar2_table(649) := '6174655069636B65722D63616C656E6461725469746C65207B0D0A2020626F726465722D626C6F636B2D73746172742D77696474683A20766172282D2D612D646174657069636B65722D63616C656E6461722D6865616465722D626F726465722D776964';
wwv_flow_imp.g_varchar2_table(650) := '74682C20317078293B0D0A2020626F726465722D626C6F636B2D73746172742D7374796C653A20736F6C69643B0D0A2020626F726465722D626C6F636B2D73746172742D636F6C6F723A20766172282D2D612D646174657069636B65722D63616C656E64';
wwv_flow_imp.g_varchar2_table(651) := '61722D6865616465722D626F726465722D636F6C6F722C20766172282D2D612D67762D6865616465722D63656C6C2D626F726465722D636F6C6F7229293B0D0A7D0D0A2E612D446174655069636B65722D63616C656E646172207464203E207370616E20';
wwv_flow_imp.g_varchar2_table(652) := '7B0D0A2020646973706C61793A20666C65783B0D0A2020616C69676E2D6974656D733A2063656E7465723B0D0A20206A7573746966792D636F6E74656E743A2063656E7465723B0D0A2020626C6F636B2D73697A653A2063616C6328766172282D2D612D';
wwv_flow_imp.g_varchar2_table(653) := '646174657069636B65722D63616C656E6461722D6461792D666F6E742D73697A652C203172656D29202A2032293B0D0A2020696E6C696E652D73697A653A2063616C6328766172282D2D612D646174657069636B65722D63616C656E6461722D6461792D';
wwv_flow_imp.g_varchar2_table(654) := '666F6E742D73697A652C203172656D29202A2032293B0D0A7D0D0A2E612D446174655069636B65722D6D6F6E74682C0D0A2E612D446174655069636B65722D796561722C0D0A2E612D446174655069636B65722D74696D65486F7572732C0D0A2E612D44';
wwv_flow_imp.g_varchar2_table(655) := '6174655069636B65722D74696D654D696E757465732C0D0A2E612D446174655069636B65722D74696D65416D506D207B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A2020646973706C61793A20677269643B0D0A2020677269642D7465';
wwv_flow_imp.g_varchar2_table(656) := '6D706C6174652D61726561733A202273656C656374223B0D0A2020616C69676E2D6974656D733A2063656E7465723B0D0A7D0D0A2E612D446174655069636B65722D6D6F6E74682073656C6563742C0D0A2E612D446174655069636B65722D7965617220';
wwv_flow_imp.g_varchar2_table(657) := '73656C6563742C0D0A2E612D446174655069636B65722D74696D65486F7572732073656C6563742C0D0A2E612D446174655069636B65722D74696D654D696E757465732073656C6563742C0D0A2E612D446174655069636B65722D74696D65416D506D20';
wwv_flow_imp.g_varchar2_table(658) := '73656C656374207B0D0A20206F726465723A206E6F6E653B0D0A2020617070656172616E63653A206E6F6E653B0D0A202070616464696E672D696E6C696E652D656E643A20312E323572656D3B0D0A2020677269642D617265613A2073656C6563743B0D';
wwv_flow_imp.g_varchar2_table(659) := '0A7D0D0A2E612D446174655069636B65722D6D6F6E74683A61667465722C0D0A2E612D446174655069636B65722D796561723A61667465722C0D0A2E612D446174655069636B65722D74696D65486F7572733A61667465722C0D0A2E612D446174655069';
wwv_flow_imp.g_varchar2_table(660) := '636B65722D74696D654D696E757465733A61667465722C0D0A2E612D446174655069636B65722D74696D65416D506D3A6166746572207B0D0A2020636F6E74656E743A20225C66306463223B0D0A2020666F6E742D66616D696C793A2022466F6E742041';
wwv_flow_imp.g_varchar2_table(661) := '50455820536D616C6C223B0D0A2020677269642D617265613A2073656C6563743B0D0A2020646973706C61793A20666C65783B0D0A20206A7573746966792D636F6E74656E743A20666C65782D656E643B0D0A202072696768743A20766172282D2D612D';
wwv_flow_imp.g_varchar2_table(662) := '646174657069636B65722D6D6F6E74687069636B65722D73656C6563742D70616464696E672D782C20302E323572656D293B0D0A2020706F696E7465722D6576656E74733A206E6F6E653B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A';
wwv_flow_imp.g_varchar2_table(663) := '7D0D0A2E612D446174655069636B65722D6D6F6E74682073656C6563742C0D0A2E612D446174655069636B65722D796561722073656C656374207B0D0A20206C696E652D6865696768743A2063616C6328766172282D2D612D646174657069636B65722D';
wwv_flow_imp.g_varchar2_table(664) := '6D6F6E74687069636B65722D73656C6563742D666F6E742D73697A652C20302E373572656D29202A20312E313235293B0D0A7D0D0A2E612D446174655069636B65722D74696D65486F7572732073656C6563742C0D0A2E612D446174655069636B65722D';
wwv_flow_imp.g_varchar2_table(665) := '74696D654D696E757465732073656C6563742C0D0A2E612D446174655069636B65722D74696D65416D506D2073656C656374207B0D0A20206C696E652D6865696768743A2063616C6328766172282D2D612D646174657069636B65722D74696D65706963';
wwv_flow_imp.g_varchar2_table(666) := '6B65722D73656C6563742D666F6E742D73697A652C20302E373572656D29202A20312E313235293B0D0A7D0D0A2E612D446174655069636B65722D6E6176207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20747261';
wwv_flow_imp.g_varchar2_table(667) := '6E73706172656E743B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C';
wwv_flow_imp.g_varchar2_table(668) := '6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D736861646F773A206E6F6E653B0D0A20202D2D612D69636F6E2D73697A653A20312E323572656D3B0D0A7D0D0A2E612D446174655069636B65722D6E61763A686F76657220';
wwv_flow_imp.g_varchar2_table(669) := '7B0D0A20202D2D612D627574746F6E2D73746174652D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D73746174652D';
wwv_flow_imp.g_varchar2_table(670) := '746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D73746174652D626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D686F766572';
wwv_flow_imp.g_varchar2_table(671) := '2D626F726465722D636F6C6F72293B0D0A20202D2D612D627574746F6E2D73746174652D736861646F773A20766172282D2D612D627574746F6E2D686F7665722D736861646F77293B0D0A7D0D0A2E612D446174655069636B65722D6E61763A61637469';
wwv_flow_imp.g_varchar2_table(672) := '7665207B0D0A20202D2D612D627574746F6E2D73746174652D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F722C20766172282D2D612D627574746F6E2D686F';
wwv_flow_imp.g_varchar2_table(673) := '7665722D6261636B67726F756E642D636F6C6F7229293B0D0A20202D2D612D627574746F6E2D73746174652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D6163746976652D746578742D636F6C6F722C20766172282D2D612D6275';
wwv_flow_imp.g_varchar2_table(674) := '74746F6E2D686F7665722D746578742D636F6C6F7229293B0D0A20202D2D612D627574746F6E2D73746174652D626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D6163746976652D626F726465722D636F6C6F722C20766172282D';
wwv_flow_imp.g_varchar2_table(675) := '2D612D627574746F6E2D686F7665722D626F726465722D636F6C6F7229293B0D0A20202D2D612D627574746F6E2D73746174652D736861646F773A20766172282D2D612D627574746F6E2D6163746976652D736861646F772C20766172282D2D612D6275';
wwv_flow_imp.g_varchar2_table(676) := '74746F6E2D686F7665722D736861646F7729293B0D0A7D0D0A2E612D446174655069636B65722D2D746F646179207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20206261636B67726F756E642D636F6C6F723A2074';
wwv_flow_imp.g_varchar2_table(677) := '72616E73706172656E743B0D0A2020626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233532363436613B0D0A7D0D0A2E742D4D6567614D656E75207B0D0A20202D2D612D6D656E752D666F';
wwv_flow_imp.g_varchar2_table(678) := '63757365642D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D6D656E752D666F63757365642D746578742D636F6C6F723A20696E697469616C3B0D0A7D0D0A2E742D4D6567614D656E752D6974656D426F';
wwv_flow_imp.g_varchar2_table(679) := '64792E69732D666F6375736564202E742D4D6567614D656E752D6C6162656C2C0D0A2E742D4D6567614D656E752D6974656D426F64793A686F766572202E742D4D6567614D656E752D6C6162656C207B0D0A2020636F6C6F723A20766172282D2D75742D';
wwv_flow_imp.g_varchar2_table(680) := '6C696E6B2D746578742D636F6C6F72293B0D0A7D0D0A2E742D4865616465722D6E6176202E742D4865616465722D6E61762D6C697374207B0D0A20206261636B67726F756E642D636F6C6F723A20766172282D2D612D6D656E756261722D6261636B6772';
wwv_flow_imp.g_varchar2_table(681) := '6F756E642D636F6C6F72293B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E75426172207B0D0A2020626F782D736861646F773A20696E73657420302063616C6328766172282D2D612D6D656E756261722D6974656D2D626F726465722D';
wwv_flow_imp.g_varchar2_table(682) := '77696474682C2031707829202A202D3129203020766172282D2D612D6D656E756261722D6974656D2D626F726465722D636F6C6F72293B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D207B0D0A2020626F726465';
wwv_flow_imp.g_varchar2_table(683) := '722D746F702D77696474683A20303B0D0A2020626F726465722D626F74746F6D2D77696474683A20303B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D3A666F6375732D77697468696E207B0D0A20206F75746C69';
wwv_flow_imp.g_varchar2_table(684) := '6E653A20766172282D2D75742D666F6375732D6F75746C696E652C206175746F2031707820766172282D2D75742D666F6375732D6F75746C696E652D636F6C6F722C202D7765626B69742D666F6375732D72696E672D636F6C6F7229293B0D0A20206F75';
wwv_flow_imp.g_varchar2_table(685) := '746C696E652D6F66667365743A202D3170783B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D202E612D4D656E754261722D6C6162656C207B0D0A20206F75746C696E653A206E6F6E653B0D0A202077686974652D';
wwv_flow_imp.g_varchar2_table(686) := '73706163653A206E6F777261703B0D0A20206D696E2D6865696768743A2063616C632863616C6328766172282D2D612D6D656E756261722D6974656D2D70616464696E672D792C2038707829202A203229202B20766172282D2D612D6D656E756261722D';
wwv_flow_imp.g_varchar2_table(687) := '6974656D2D6C696E652D6865696768742C203136707829293B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E752D2D73706C6974202E612D4D656E754261722D6C6162656C207B0D0A202070616464696E672D696E6C696E652D656E643A';
wwv_flow_imp.g_varchar2_table(688) := '20303B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E752D2D73706C6974202E612D4D656E752D7375624D656E75436F6C207B0D0A20202D2D612D6D656E752D69636F6E2D73697A653A203172656D3B0D0A7D0D0A2E742D486561646572';
wwv_flow_imp.g_varchar2_table(689) := '2D6E6176202E612D4D656E752D2D63757272656E74207B0D0A20202D2D612D6D656E756261722D6974656D2D666F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D7765696768742D626F6C642C20373030293B0D0A7D0D0A2E74';
wwv_flow_imp.g_varchar2_table(690) := '2D4865616465722D6E6176202E612D4D656E754261722D6974656D2E69732D666F6375736564207B0D0A20202D2D612D6D656E756261722D6974656D2D6261636B67726F756E642D636F6C6F723A20766172282D2D612D6D656E756261722D6974656D2D';
wwv_flow_imp.g_varchar2_table(691) := '666F63757365642D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D6D656E756261722D6974656D2D746578742D636F6C6F723A20766172282D2D612D6D656E756261722D6974656D2D666F63757365642D746578742D636F6C6F72293B';
wwv_flow_imp.g_varchar2_table(692) := '0D0A7D0D0A612D73656C656374207B0D0A20202D2D612D636869702D72656D6F76652D70616464696E673A20302E3036323572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D746D2D636F6C6F722D627574746F6E2D64656661756C742D686F7665';
wwv_flow_imp.g_varchar2_table(693) := '722D6261636B67726F756E643A20233064306430643B0D0A20202D2D746D2D636F6C6F722D627574746F6E2D6F6E2D6261636B67726F756E643A20233064306430643B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D';
wwv_flow_imp.g_varchar2_table(694) := '2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D73656C65';
wwv_flow_imp.g_varchar2_table(695) := '637465642C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564207B0D0A20206261636B6772';
wwv_flow_imp.g_varchar2_table(696) := '6F756E642D636F6C6F723A20233038303830383B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D';
wwv_flow_imp.g_varchar2_table(697) := '547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D74';
wwv_flow_imp.g_varchar2_table(698) := '6F704C6576656C20756C207B0D0A20206261636B67726F756E642D636F6C6F723A20233030303030303B0D0A2020636F6C6F723A20236436643664363B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C65';
wwv_flow_imp.g_varchar2_table(699) := '76656C202E612D54726565566965772D726F772E69732D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233066306630662021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E';
wwv_flow_imp.g_varchar2_table(700) := '6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C652C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C20';
wwv_flow_imp.g_varchar2_table(701) := '2E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D636F6E74656E742C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D72';
wwv_flow_imp.g_varchar2_table(702) := '6F772E69732D686F766572202B202E612D54726565566965772D746F67676C65202B202E612D54726565566965772D636F6E74656E74207B0D0A2020636F6C6F723A20766172282D2D612D74726565766965772D6E6F64652D73656C65637465642D7465';
wwv_flow_imp.g_varchar2_table(703) := '78742D636F6C6F72293B0D0A7D0D0A2E612D54726565566965772D636F6E74656E742E69732D73656C6563746564203E202E6661207B0D0A20202D2D75742D74726565766965772D69636F6E2D6F7061636974793A20313B0D0A7D0D0A2E742D54726565';
wwv_flow_imp.g_varchar2_table(704) := '4E61762D2D7374796C65412C0D0A2E742D547265654E61762D2D7374796C6542207B0D0A20202D2D75742D74726565766965772D62616467652D626F726465722D7261646975733A20312E323572656D3B0D0A20202D2D75742D74726565766965772D62';
wwv_flow_imp.g_varchar2_table(705) := '616467652D666F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D7765696768742D73656D69626F6C642C20353030293B0D0A20202D2D75742D74726565766965772D69636F6E2D73697A653A20312E323572656D3B0D0A20202D';
wwv_flow_imp.g_varchar2_table(706) := '2D75742D74726565766965772D746F706C6576656C2D69636F6E2D636F6E7461696E65722D77696474683A20312E373572656D3B0D0A20202D2D75742D74726565766965772D6E6F64652D69636F6E2D73697A653A203172656D3B0D0A20202D2D75742D';
wwv_flow_imp.g_varchar2_table(707) := '74726565766965772D6E6F64652D69636F6E2D636F6E7461696E65722D77696474683A20766172282D2D75742D74726565766965772D746F706C6576656C2D69636F6E2D636F6E7461696E65722D77696474682C20312E373572656D293B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(708) := '75742D74726565766965772D6E6F64652D696E64656E743A203072656D3B0D0A20202D2D75742D74726565766965772D6C6561662D6E6F64652D696E64656E743A20302E36323572656D3B0D0A20202D2D75742D74726565766965772D746F706C657665';
wwv_flow_imp.g_varchar2_table(709) := '6C2D6C6561662D70616464696E672D793A203072656D3B0D0A20202D2D612D74726565766965772D6E6F64652D70616464696E672D793A20302E36323572656D3B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D5472656556696577';
wwv_flow_imp.g_varchar2_table(710) := '2D6E6F64652D2D746F704C6576656C20756C2C0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0D0A20202D2D612D74726565766965772D6E6F64652D70616464696E67';
wwv_flow_imp.g_varchar2_table(711) := '2D793A20302E373572656D3B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C207B0D0A2020626F726465722D626F74746F6D3A2031707820736F6C69642072676261283235';
wwv_flow_imp.g_varchar2_table(712) := '352C203235352C203235352C20302E31293B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65207B0D0A2020636F6C6F723A2076617228';
wwv_flow_imp.g_varchar2_table(713) := '2D2D612D74726565766965772D6E6F64652D73656C65637465642D746578742D636F6C6F72293B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965';
wwv_flow_imp.g_varchar2_table(714) := '772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0D0A20206261636B67726F756E642D636F6C6F723A2076617228';
wwv_flow_imp.g_varchar2_table(715) := '2D2D612D74726565766965772D6E6F64652D73656C65637465642D6261636B67726F756E642D636F6C6F72293B0D0A2020636F6C6F723A20766172282D2D612D74726565766965772D6E6F64652D73656C65637465642D746578742D636F6C6F72293B0D';
wwv_flow_imp.g_varchar2_table(716) := '0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70202E612D54726565566965772D726F772E6973';
wwv_flow_imp.g_varchar2_table(717) := '2D73656C65637465642C0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C202E612D54726565566965772D726F772E69732D73656C6563746564207B0D0A20206261636B6772';
wwv_flow_imp.g_varchar2_table(718) := '6F756E642D636F6C6F723A20766172282D2D75742D626F64792D6E61762D6261636B67726F756E642D636F6C6F72293B0D0A2020636F6C6F723A20766172282D2D612D74726565766965772D6E6F64652D73656C65637465642D746578742D636F6C6F72';
wwv_flow_imp.g_varchar2_table(719) := '293B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D547265654E61762D2D73';
wwv_flow_imp.g_varchar2_table(720) := '74796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70207E20756C202E612D54726565566965772D726F77207B0D0A2020626F782D736861646F';
wwv_flow_imp.g_varchar2_table(721) := '773A20696E73657420766172282D2D75742D70616C657474652D7072696D6172792920347078203020303B0D0A7D0D0A2E752D52544C202E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C';
wwv_flow_imp.g_varchar2_table(722) := '202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E752D52544C202E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D';
wwv_flow_imp.g_varchar2_table(723) := '726F772E69732D63757272656E742D2D746F70207E20756C202E612D54726565566965772D726F77207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D70616C657474652D7072696D61727929202D347078203020303B0D';
wwv_flow_imp.g_varchar2_table(724) := '0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D666F63757365642C0D0A2E742D5472';
wwv_flow_imp.g_varchar2_table(725) := '65654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70207E20756C202E612D54726565566965772D726F772E69732D666F63';
wwv_flow_imp.g_varchar2_table(726) := '75736564207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D70616C657474652D7072696D6172792920347078203020302C2030203020302031707820766172282D2D75742D70616C657474652D7072696D617279292069';
wwv_flow_imp.g_varchar2_table(727) := '6E7365743B0D0A7D0D0A2E752D52544C202E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D666F';
wwv_flow_imp.g_varchar2_table(728) := '63757365642C0D0A2E752D52544C202E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70207E20756C202E61';
wwv_flow_imp.g_varchar2_table(729) := '2D54726565566965772D726F772E69732D666F6375736564207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D70616C657474652D7072696D61727929202D347078203020302C2030203020302031707820766172282D2D';
wwv_flow_imp.g_varchar2_table(730) := '75742D70616C657474652D7072696D6172792920696E7365743B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542203E20756C207B0D0A20207472616E736974696F6E3A206D617267696E20766172282D2D75742D6C61796F75742D7472616E73';
wwv_flow_imp.g_varchar2_table(731) := '6974696F6E2C20302E31732920656173653B0D0A20206D617267696E3A20302E323572656D3B0D0A7D0D0A4061742D726F6F74202E6A732D6E6176436F6C6C61707365642026207B0D0A20202D2D612D74726565766965772D6E6F64652D70616464696E';
wwv_flow_imp.g_varchar2_table(732) := '672D793A20302E3572656D3B0D0A2020203E20756C207B0D0A202020206D617267696E3A20303B0D0A20207D0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F6465207B0D0A20206D617267696E2D626C6F';
wwv_flow_imp.g_varchar2_table(733) := '636B2D73746172743A20302E323572656D3B0D0A20206D617267696E2D626C6F636B2D656E643A20302E323572656D3B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C207B';
wwv_flow_imp.g_varchar2_table(734) := '0D0A20206D617267696E2D696E6C696E652D73746172743A20302E323572656D3B0D0A20206D617267696E2D696E6C696E652D656E643A20302E323572656D3B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D';
wwv_flow_imp.g_varchar2_table(735) := '6E6F64652D2D746F704C6576656C20756C207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C65';
wwv_flow_imp.g_varchar2_table(736) := '76656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E';
wwv_flow_imp.g_varchar2_table(737) := '69732D63757272656E742D2D746F702E69732D73656C6563746564207B0D0A20206261636B67726F756E642D636F6C6F723A20233234343835353B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D';
wwv_flow_imp.g_varchar2_table(738) := '2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564202B202E612D54726565566965772D746F67676C652C0D0A2E742D547265654E61762D2D7374796C6542202E612D54';
wwv_flow_imp.g_varchar2_table(739) := '726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70207B0D0A2020636F6C6F723A20236661666366643B0D0A7D0D0A2E742D547265654E61762D2D7374796C';
wwv_flow_imp.g_varchar2_table(740) := '6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F702E69732D686F766572207B0D0A2020636F6C6F723A20236661666366642021696D706F';
wwv_flow_imp.g_varchar2_table(741) := '7274616E743B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D686F766572207B0D';
wwv_flow_imp.g_varchar2_table(742) := '0A20206261636B67726F756E642D636F6C6F723A20233236346235392021696D706F7274616E743B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D547265655669';
wwv_flow_imp.g_varchar2_table(743) := '65772D726F77207B0D0A2020626F726465722D7261646975733A20302E323572656D3B0D0A7D0D0A2E612D4952522D6469616C6F672D2D646F776E6C6F61642C0D0A2E612D4952522D6469616C6F672D2D737562736372697074696F6E207B0D0A20202D';
wwv_flow_imp.g_varchar2_table(744) := '2D612D69636F6E6C6973742D6974656D2D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746F6F6C6261722D6261636B67726F756E642D636F6C6F722C207267626128302C20302C20302C20302E30323529';
wwv_flow_imp.g_varchar2_table(745) := '293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D686F76';
wwv_flow_imp.g_varchar2_table(746) := '65722D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D686F7665722D6261636B67726F756E642D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(747) := '766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D73656C65637465642D746578742D636F6C6F723A20766172282D2D612D69636F6E6C6973742D697465';
wwv_flow_imp.g_varchar2_table(748) := '6D2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D73656C65637465642D6261636B67726F756E642D636F6C6F723A20766172282D2D612D69636F6E6C6973742D6974656D2D686F7665722D626163';
wwv_flow_imp.g_varchar2_table(749) := '6B67726F756E642D636F6C6F72293B0D0A7D0D0A2E612D4952522D6469616C6F672D2D646F776E6C6F6164202E612D49636F6E4C6973742D6974656D2C0D0A2E612D4952522D6469616C6F672D2D737562736372697074696F6E202E612D49636F6E4C69';
wwv_flow_imp.g_varchar2_table(750) := '73742D6974656D207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72292030202D317078203020303B0D0A7D0D0A2E612D4952522D6469616C6F672D';
wwv_flow_imp.g_varchar2_table(751) := '2D646F776E6C6F6164202E612D49636F6E4C6973742D6974656D2E69732D73656C65637465642C0D0A2E612D4952522D6469616C6F672D2D737562736372697074696F6E202E612D49636F6E4C6973742D6974656D2E69732D73656C6563746564207B0D';
wwv_flow_imp.g_varchar2_table(752) := '0A2020626F782D736861646F773A20696E73657420766172282D2D75742D70616C657474652D7072696D61727929203020327078203020303B0D0A7D0D0A2E612D4952522D69636F6E4C6973742D6974656D202B202E612D4952522D69636F6E4C697374';
wwv_flow_imp.g_varchar2_table(753) := '2D6974656D207B0D0A2020626F726465722D6C6566742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72293B0D0A7D0D0A2E752D52544C202E612D4952522D69636F6E4C6973742D697465';
wwv_flow_imp.g_varchar2_table(754) := '6D202B202E612D4952522D69636F6E4C6973742D6974656D207B0D0A2020626F726465722D72696768742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72293B0D0A7D0D0A2E612D495252';
wwv_flow_imp.g_varchar2_table(755) := '2D726164696F49636F6E4C697374207B0D0A20202D2D612D69636F6E6C6973742D6974656D2D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746F6F6C6261722D6261636B67726F756E642D636F6C6F722C';
wwv_flow_imp.g_varchar2_table(756) := '207267626128302C20302C20302C20302E30323529293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A2020';
wwv_flow_imp.g_varchar2_table(757) := '2D2D612D69636F6E6C6973742D6974656D2D686F7665722D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D686F76';
wwv_flow_imp.g_varchar2_table(758) := '65722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D73656C65637465642D746578742D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(759) := '20766172282D2D612D69636F6E6C6973742D6974656D2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D73656C65637465642D6261636B67726F756E642D636F6C6F723A20766172282D2D612D6963';
wwv_flow_imp.g_varchar2_table(760) := '6F6E6C6973742D6974656D2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A7D0D0A2E612D4952522D726164696F49636F6E4C6973742D6974656D202B202E612D4952522D726164696F49636F6E4C6973742D6974656D207B0D0A2020';
wwv_flow_imp.g_varchar2_table(761) := '626F726465722D6C6566742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72293B0D0A7D0D0A2E752D52544C202E612D4952522D726164696F49636F6E4C6973742D6974656D202B202E61';
wwv_flow_imp.g_varchar2_table(762) := '2D4952522D726164696F49636F6E4C6973742D6974656D207B0D0A2020626F726465722D72696768742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72293B0D0A7D0D0A2E612D4952522D';
wwv_flow_imp.g_varchar2_table(763) := '726164696F49636F6E4C6973742D6974656D20696E7075745B747970653D726164696F5D202B206C6162656C207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D';
wwv_flow_imp.g_varchar2_table(764) := '636F6C6F72292030202D317078203020303B0D0A7D0D0A2E612D4952522D726164696F49636F6E4C6973742D6974656D20696E7075745B747970653D726164696F5D3A636865636B6564202B206C6162656C207B0D0A2020626F782D736861646F773A20';
wwv_flow_imp.g_varchar2_table(765) := '696E73657420766172282D2D75742D70616C657474652D7072696D61727929203020327078203020303B0D0A7D0D0A2E612D4952522D6469616C6F67496E666F3A66697273742D6368696C64207B0D0A2020626F726465722D626F74746F6D2D636F6C6F';
wwv_flow_imp.g_varchar2_table(766) := '723A20766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72293B0D0A7D0D0A2E612D49472D627574746F6E2E612D49472D627574746F6E2D2D636F6E74726F6C732C0D0A2E612D4952522D627574746F6E2E612D';
wwv_flow_imp.g_varchar2_table(767) := '4952522D627574746F6E2D2D636F6E74726F6C73207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20233364336433653B0D0A7D0D0A2E612D4952522D6469616C6F67526F772D2D6865616465722C0D0A2E612D4952';
wwv_flow_imp.g_varchar2_table(768) := '522D6469616C6F674C6973742061207B0D0A2020636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A7D0D0A2E612D4952522D6469616C6F674C697374207B0D0A2020626F72646572';
wwv_flow_imp.g_varchar2_table(769) := '2D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A7D0D0A2E612D4952522D686967686C6967687450726576696577207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75';
wwv_flow_imp.g_varchar2_table(770) := '742D636F6D706F6E656E742D626F726465722D636F6C6F7229203020302030203170783B0D0A7D0D0A2E612D4952522D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233037303830623B0D0A7D0D0A2E612D4952522D6865';
wwv_flow_imp.g_varchar2_table(771) := '616465723A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233064306631343B0D0A7D0D0A2E612D4952522D6865616465722E69732D6163746976652C0D0A2E612D47562D6865616465722E69732D616374697665207B0D0A20';
wwv_flow_imp.g_varchar2_table(772) := '206261636B67726F756E642D636F6C6F723A20766172282D2D612D6D656E752D6261636B67726F756E642D636F6C6F72293B0D0A2020636F6C6F723A20766172282D2D612D6D656E752D746578742D636F6C6F72293B0D0A7D0D0A2E612D4952522D6865';
wwv_flow_imp.g_varchar2_table(773) := '616465722D2D67726F7570207B0D0A20206261636B67726F756E642D636F6C6F723A20233062306431313B0D0A7D0D0A2E612D4952522D736F72745769646765742D7365617263684C6162656C3A6265666F7265207B0D0A2020636F6C6F723A20766172';
wwv_flow_imp.g_varchar2_table(774) := '282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A7D0D0A2E612D4952522D736F72745769646765742D736561726368203E202E612D4952522D736F72745769646765742D7365617263684669656C645B74797065';
wwv_flow_imp.g_varchar2_table(775) := '3D2274657874225D207B0D0A2020636F6C6F723A20766172282D2D612D6669656C642D696E7075742D73746174652D746578742D636F6C6F722C20766172282D2D612D6669656C642D696E7075742D746578742D636F6C6F7229293B0D0A20206261636B';
wwv_flow_imp.g_varchar2_table(776) := '67726F756E642D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D73746174652D6261636B67726F756E642D636F6C6F722C20766172282D2D612D6669656C642D696E7075742D6261636B67726F756E642D636F6C6F7229293B0D0A7D';
wwv_flow_imp.g_varchar2_table(777) := '0D0A2E612D47562D7461626C652074682E612D47562D636F6E74726F6C427265616B486561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233062306431313B0D0A2020626F726465722D636F6C6F723A20766172282D2D75742D63';
wwv_flow_imp.g_varchar2_table(778) := '6F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A2020636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D';
wwv_flow_imp.g_varchar2_table(779) := '2D2D73617665645265706F72742C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D73617665645265706F72742C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D73617665645265706F72742C0D0A2E612D4952522D63';
wwv_flow_imp.g_varchar2_table(780) := '6F6E74726F6C732D6974656D2D2D73617665645265706F7274207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233441413445433B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(781) := '2D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20233066353638653B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D7365617263682C0D0A';
wwv_flow_imp.g_varchar2_table(782) := '2E612D49472D636F6E74726F6C732D6974656D2D2D7365617263682C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D7365617263682C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D736561726368207B0D0A2020';
wwv_flow_imp.g_varchar2_table(783) := '2D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233441413445433B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F76';
wwv_flow_imp.g_varchar2_table(784) := '65722D6261636B67726F756E642D636F6C6F723A20233066353638653B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D66696C7465722C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D66696C7465722C0D0A2E';
wwv_flow_imp.g_varchar2_table(785) := '612D4952522D7265706F727453756D6D6172792D6974656D2D2D66696C7465722C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D66696C746572207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D';
wwv_flow_imp.g_varchar2_table(786) := '69636F6E2D6261636B67726F756E642D636F6C6F723A20233234434237463B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20233064343932653B0D0A';
wwv_flow_imp.g_varchar2_table(787) := '7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D636F6E74726F6C427265616B2C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D636F6E74726F6C427265616B2C0D0A2E612D4952522D7265706F727453756D6D617279';
wwv_flow_imp.g_varchar2_table(788) := '2D6974656D2D2D636F6E74726F6C427265616B2C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D636F6E74726F6C427265616B207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261';
wwv_flow_imp.g_varchar2_table(789) := '636B67726F756E642D636F6C6F723A20233342383342443B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20233134326434313B0D0A7D0D0A2E612D49';
wwv_flow_imp.g_varchar2_table(790) := '472D7265706F727453756D6D6172792D6974656D2D2D67726F757042792C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D67726F757042792C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D67726F757042792C0D0A';
wwv_flow_imp.g_varchar2_table(791) := '2E612D4952522D636F6E74726F6C732D6974656D2D2D67726F75704279207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233342383342443B0D0A20';
wwv_flow_imp.g_varchar2_table(792) := '202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20233134326434313B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D6167677265';
wwv_flow_imp.g_varchar2_table(793) := '676174652C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D6167677265676174652C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D6167677265676174652C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D';
wwv_flow_imp.g_varchar2_table(794) := '2D616767726567617465207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233342383342443B0D0A20202D2D612D7265706F72742D636F6E74726F6C';
wwv_flow_imp.g_varchar2_table(795) := '732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20233134326434313B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D686967686C696768742C0D0A2E612D49472D636F6E74726F';
wwv_flow_imp.g_varchar2_table(796) := '6C732D6974656D2D2D686967686C696768742C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D686967686C696768742C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D686967686C69676874207B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(797) := '2D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20234646424532413B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D';
wwv_flow_imp.g_varchar2_table(798) := '6261636B67726F756E642D636F6C6F723A20233836356430303B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D666C6173686261636B2C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D666C6173686261636B2C';
wwv_flow_imp.g_varchar2_table(799) := '0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D666C6173686261636B2C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D666C6173686261636B207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D6365';
wwv_flow_imp.g_varchar2_table(800) := '6C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233945413741443B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A2023';
wwv_flow_imp.g_varchar2_table(801) := '3265333433373B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D63686172742C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D63686172742C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D';
wwv_flow_imp.g_varchar2_table(802) := '2D2D63686172742C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D6368617274207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233342';
wwv_flow_imp.g_varchar2_table(803) := '383342443B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20233034306130653B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D697465';
wwv_flow_imp.g_varchar2_table(804) := '6D2D2D7069766F742C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D7069766F742C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D7069766F742C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D706976';
wwv_flow_imp.g_varchar2_table(805) := '6F74207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233945413741443B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C';
wwv_flow_imp.g_varchar2_table(806) := '6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20233265333433373B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D696E76616C696453657474696E67732C0D0A2E612D49472D636F6E74726F6C73';
wwv_flow_imp.g_varchar2_table(807) := '2D6974656D2D2D696E76616C696453657474696E67732C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D696E76616C696453657474696E67732C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D696E76616C696453';
wwv_flow_imp.g_varchar2_table(808) := '657474696E6773207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20234244433343373B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63';
wwv_flow_imp.g_varchar2_table(809) := '656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20233439353135363B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D696E61637469766553657474696E67732C0D0A2E612D49472D636F';
wwv_flow_imp.g_varchar2_table(810) := '6E74726F6C732D6974656D2D2D696E61637469766553657474696E67732C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D696E61637469766553657474696E67732C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D';
wwv_flow_imp.g_varchar2_table(811) := '696E61637469766553657474696E6773207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20234244433343373B0D0A20202D2D612D7265706F72742D63';
wwv_flow_imp.g_varchar2_table(812) := '6F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20233439353135363B0D0A7D0D0A2E612D47562D7461626C65202E612D47562D63656C6C2E69732D616374697665207B0D0A20206261636B6772';
wwv_flow_imp.g_varchar2_table(813) := '6F756E642D636F6C6F723A20233139313931393B0D0A7D0D0A2E612D47562D2D656469744D6F6465202E612D47562D726F772E69732D726561646F6E6C79202E612D47562D63656C6C2C0D0A2E612D47562D2D656469744D6F6465202E612D47562D6365';
wwv_flow_imp.g_varchar2_table(814) := '6C6C2E69732D726561646F6E6C79207B0D0A20206261636B67726F756E642D636F6C6F723A20233064306430643B0D0A2020636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A7D0D0A2E';
wwv_flow_imp.g_varchar2_table(815) := '612D47562D63656C6C202E612D47562D636F6C756D6E4974656D20696E7075743A6E6F74285B747970653D22726164696F225D293A6E6F74285B747970653D22636865636B626F78225D293A666F6375732C0D0A2E612D47562D63656C6C202E612D4756';
wwv_flow_imp.g_varchar2_table(816) := '2D636F6C756D6E4974656D2073656C6563745B73697A653D2731275D3A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20233030303B0D0A7D0D0A2E612D436869702D72656D6F7665207B0D0A20206D617267696E2D696E6C696E';
wwv_flow_imp.g_varchar2_table(817) := '652D656E643A2063616C6328766172282D2D612D636869702D6C6162656C2D73706163696E672C2034707829202F2032293B0D0A7D0D0A612D776F726B666C6F772D6469616772616D202E612D546F6F6C626172207B0D0A2020626C6F636B2D73697A65';
wwv_flow_imp.g_varchar2_table(818) := '3A20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D293B0D0A7D0D0A612D776F726B666C6F772D6469616772616D20746578745B6A6F696E742D73656C6563746F723D22676C797068225D207B0D';
wwv_flow_imp.g_varchar2_table(819) := '0A2020666F6E742D7765696768743A20766172282D2D75742D6469616772616D2D69636F6E2D666F6E742D7765696768742C20363030293B0D0A7D0D0A612D776F726B666C6F772D6469616772616D202E612D546F6F6C6261722D2D73696D706C65202E';
wwv_flow_imp.g_varchar2_table(820) := '612D546F6F6C6261722D67726F7570202E612D427574746F6E207B0D0A20202D2D612D627574746F6E2D626F726465722D77696474683A20756E7365743B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E7370617265';
wwv_flow_imp.g_varchar2_table(821) := '6E743B0D0A20202D2D612D627574746F6E2D73746174652D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A612D776F726B666C6F772D6469616772616D202E612D546F6F6C6261722D2D73696D706C65202E612D';
wwv_flow_imp.g_varchar2_table(822) := '546F6F6C6261722D67726F7570202E612D427574746F6E3A686F766572207B0D0A2020626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D73746174652D626F726465722D636F6C6F722C20766172282D2D612D627574746F6E2D74';
wwv_flow_imp.g_varchar2_table(823) := '7970652D626F726465722D636F6C6F722C20766172282D2D612D627574746F6E2D626F726465722D636F6C6F722929293B0D0A7D0D0A2E742D526567696F6E2D2D6E6F50616464696E67202E612D546F6F6C6261722D67726F7570207B0D0A20206D6172';
wwv_flow_imp.g_varchar2_table(824) := '67696E2D626C6F636B2D73746172743A20766172282D2D612D746F6F6C6261722D6974656D2D73706163696E672C20302E3572656D293B0D0A7D0D0A2E742D526567696F6E2D2D6E6F50616464696E67202E612D546F6F6C6261722D67726F75703A6C61';
wwv_flow_imp.g_varchar2_table(825) := '73742D6368696C64202E612D546F6F6C6261722D6974656D3A6C6173742D6368696C64207B0D0A20206D617267696E2D696E6C696E652D656E643A20766172282D2D612D746F6F6C6261722D6974656D2D73706163696E672C20302E3572656D293B0D0A';
wwv_flow_imp.g_varchar2_table(826) := '7D0D0A2E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A20206D61782D626C6F636B2D73697A653A20343072656D3B0D0A7D0D0A2E692D683234302E742D526567696F6E2D2D6E6F50616464696E67202E742D52656769';
wwv_flow_imp.g_varchar2_table(827) := '6F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283234307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29293B0D0A7D';
wwv_flow_imp.g_varchar2_table(828) := '0D0A2E692D683332302E742D526567696F6E2D2D6E6F50616464696E67202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283332307078202D20766172282D2D75742D64';
wwv_flow_imp.g_varchar2_table(829) := '69616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29293B0D0A7D0D0A2E692D683438302E742D526567696F6E2D2D6E6F50616464696E67202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A';
wwv_flow_imp.g_varchar2_table(830) := '2020626C6F636B2D73697A653A2063616C63283438307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29293B0D0A7D0D0A2E692D683634302E742D526567696F6E2D2D6E6F50616464';
wwv_flow_imp.g_varchar2_table(831) := '696E67202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283634307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C';
wwv_flow_imp.g_varchar2_table(832) := '203372656D29293B0D0A7D0D0A2E692D68323430202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283234307078202D20766172282D2D75742D6469616772616D2D746F';
wwv_flow_imp.g_varchar2_table(833) := '6F6C6261722D626C6F636B2D73697A652C203372656D29202D2028766172282D2D75742D726567696F6E2D626F64792D70616464696E672D792C203172656D29202A203229293B0D0A7D0D0A2E692D68333230202E742D526567696F6E2D626F6479202E';
wwv_flow_imp.g_varchar2_table(834) := '612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283332307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29202D2028766172282D2D75742D72';
wwv_flow_imp.g_varchar2_table(835) := '6567696F6E2D626F64792D70616464696E672D792C203172656D29202A203229293B0D0A7D0D0A2E692D68343830202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C632834';
wwv_flow_imp.g_varchar2_table(836) := '38307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29202D2028766172282D2D75742D726567696F6E2D626F64792D70616464696E672D792C203172656D29202A203229293B0D0A7D';
wwv_flow_imp.g_varchar2_table(837) := '0D0A2E692D68363430202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283634307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B';
wwv_flow_imp.g_varchar2_table(838) := '2D73697A652C203372656D29202D2028766172282D2D75742D726567696F6E2D626F64792D70616464696E672D792C203172656D29202A203229293B0D0A7D0D0A2E742D526567696F6E2D626F6479202E6A6F696E742D70617065722D7363726F6C6C65';
wwv_flow_imp.g_varchar2_table(839) := '72202E6A6F696E742D7061706572207B0D0A2020696E7365742D626C6F636B2D73746172743A20322E3572656D2021696D706F7274616E743B0D0A7D0D0A3A726F6F74207B0D0A20202D2D6F6A2D636F72652D746578742D636F6C6F722D7072696D6172';
wwv_flow_imp.g_varchar2_table(840) := '793A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D6F6A2D636F72652D746578742D636F6C6F722D7365636F6E646172793A20766172282D2D75742D636F6D706F6E656E742D746578';
wwv_flow_imp.g_varchar2_table(841) := '742D6D757465642D636F6C6F72293B0D0A20202D2D6F6A2D636F72652D746578742D636F6C6F722D6272616E643A20766172282D2D75742D70616C657474652D7072696D6172792D74657874293B0D0A20202D2D6F6A2D636F72652D746578742D636F6C';
wwv_flow_imp.g_varchar2_table(842) := '6F722D64616E6765723A20766172282D2D75742D70616C657474652D64616E6765722D74657874293B0D0A20202D2D6F6A2D636F72652D746578742D636F6C6F722D7761726E696E673A20766172282D2D75742D70616C657474652D7761726E696E672D';
wwv_flow_imp.g_varchar2_table(843) := '74657874293B0D0A20202D2D6F6A2D636F72652D746578742D636F6C6F722D737563636573733A20766172282D2D75742D70616C657474652D737563636573732D74657874293B0D0A20202D2D6F6A2D636F72652D69636F6E2D73697A652D6C673A2031';
wwv_flow_imp.g_varchar2_table(844) := '2E3572656D3B0D0A20202D2D6F6A2D636F72652D69636F6E2D73697A652D736D3A203172656D3B0D0A20202D2D6F6A2D636F72652D646976696465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F7229';
wwv_flow_imp.g_varchar2_table(845) := '3B0D0A20202D2D6F6A2D636F72652D646976696465722D6D617267696E3A20302E3572656D3B0D0A20202D2D6F6A2D636F72652D666F6375732D626F726465722D636F6C6F723A20766172282D2D75742D666F6375732D6F75746C696E652D636F6C6F72';
wwv_flow_imp.g_varchar2_table(846) := '293B0D0A20202D2D6F6A2D636F6C6F722D737065637472756D2D626F726465722D636F6C6F723A20233333333333333B0D0A20202D2D6F6A2D706F7075702D62672D636F6C6F723A20766172282D2D612D6D656E752D6261636B67726F756E642D636F6C';
wwv_flow_imp.g_varchar2_table(847) := '6F72293B0D0A20202D2D6F6A2D636F72652D62672D636F6C6F722D686F7665723A20766172282D2D612D6D656E752D666F63757365642D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6F6A2D636F72652D626F782D736861646F773A2076';
wwv_flow_imp.g_varchar2_table(848) := '6172282D2D75742D736861646F772D736D293B0D0A20202D2D6F6A2D6C696E6B2D746578742D636F6C6F723A20766172282D2D75742D6C696E6B2D746578742D636F6C6F72293B0D0A20202D2D6F6A2D746578742D6669656C642D62672D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(849) := '20766172282D2D612D6669656C642D696E7075742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6F6A2D746578742D6669656C642D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D626F726465722D';
wwv_flow_imp.g_varchar2_table(850) := '636F6C6F72293B0D0A20202D2D6F6A2D746578742D6669656C642D746578742D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D746578742D636F6C6F72293B0D0A20202D2D6F6A2D636F6C6C656374696F6E2D667265652D73706163';
wwv_flow_imp.g_varchar2_table(851) := '652D62672D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6F6A2D636F6C6C656374696F6E2D6865616465722D62672D636F6C6F723A20766172282D2D75742D636F6D706F';
wwv_flow_imp.g_varchar2_table(852) := '6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6F6A2D636F6C6C656374696F6E2D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D6F6A2D63';
wwv_flow_imp.g_varchar2_table(853) := '6F6C6C656374696F6E2D62672D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6F6A2D707269766174652D67616E74742D6D696C6573746F6E652D62672D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(854) := '766172282D2D752D636F6C6F722D3135293B0D0A20202D2D6F6A2D707269766174652D67616E74742D7461736B2D62672D636F6C6F723A20766172282D2D752D636F6C6F722D31293B0D0A20202D2D6F6A2D707269766174652D67616E74742D7461736B';
wwv_flow_imp.g_varchar2_table(855) := '2D70726F67726573732D62672D636F6C6F723A20766172282D2D752D636F6C6F722D31293B0D0A20202D2D6F6A2D627574746F6E2D6F75746C696E65642D6368726F6D652D62672D636F6C6F722D686F7665723A20766172282D2D75742D70616C657474';
wwv_flow_imp.g_varchar2_table(856) := '652D7072696D617279293B0D0A20202D2D6F6A2D627574746F6E2D6F75746C696E65642D6368726F6D652D626F726465722D636F6C6F722D686F7665723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D6F6A2D6275';
wwv_flow_imp.g_varchar2_table(857) := '74746F6E2D6F75746C696E65642D6368726F6D652D746578742D636F6C6F722D686F7665723A20766172282D2D75742D70616C657474652D7072696D6172792D636F6E7472617374293B0D0A20202D2D6F6A2D627574746F6E2D626F726465726C657373';
wwv_flow_imp.g_varchar2_table(858) := '2D6368726F6D652D62672D636F6C6F722D686F7665723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D6F6A2D627574746F6E2D626F726465726C6573732D6368726F6D652D746578742D636F6C6F722D686F766572';
wwv_flow_imp.g_varchar2_table(859) := '3A20766172282D2D75742D70616C657474652D7072696D6172792D636F6E7472617374293B0D0A20202D2D6F6A2D68656164696E672D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D7469746C652D636F6C6F';
wwv_flow_imp.g_varchar2_table(860) := '72293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626173652D66696C7465723A20696E766572742831293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D63757272656E742D6261636B67726F756E642D636F';
wwv_flow_imp.g_varchar2_table(861) := '6C6F723A2072676261283235352C203235352C203235352C20302E32293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D63757272656E742D746578742D636F6C6F723A20766172282D2D612D70616C657474652D7072';
wwv_flow_imp.g_varchar2_table(862) := '696D6172792D636F6E7472617374293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D63757272656E742D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E32293B0D0A20202D';
wwv_flow_imp.g_varchar2_table(863) := '2D612D66696C6564726F702D69636F6E2D616374696F6E2D6261636B67726F756E642D636F6C6F723A20233030303030303B0D0A20202D2D612D636861742D757365722D7072696D6172792D6D6573736167652D6261636B67726F756E642D636F6C6F72';
wwv_flow_imp.g_varchar2_table(864) := '3A2072676261283235352C203235352C203235352C20302E3235293B0D0A20202D2D612D636861742D757365722D7365636F6E646172792D6D6573736167652D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C20323535';
wwv_flow_imp.g_varchar2_table(865) := '2C20302E3038293B0D0A20202D2D612D636861742D73656E642D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A2020';
wwv_flow_imp.g_varchar2_table(866) := '2D2D612D636861742D73656E642D627574746F6E2D636F6C6F723A20236666666666663B0D0A20202D2D612D636861742D6D6573736167652D616374696F6E2D627574746F6E2D6261636B67726F756E642D636F6C6F723A20233632363336343B0D0A20';
wwv_flow_imp.g_varchar2_table(867) := '202D2D612D636861742D6D6573736167652D616374696F6E2D627574746F6E2D73746174652D6261636B67726F756E642D636F6C6F723A20233439346134623B0D0A20202D2D612D636861742D6D6573736167652D7072652D626F726465722D636F6C6F';
wwv_flow_imp.g_varchar2_table(868) := '723A2072676261283235352C203235352C203235352C20302E32293B0D0A20202D2D612D636861742D616374696F6E732D73746174652D6261636B67726F756E642D636F6C6F723A20233439346134623B0D0A20202D2D612D6469616772616D2D656C65';
wwv_flow_imp.g_varchar2_table(869) := '6D656E742D69636F6E2D636F6C6F723A20236666663B0D0A20202D2D612D6469616772616D2D656C656D656E742D7465726D696E61746F722D746578742D636F6C6F723A20766172282D2D75742D626F64792D746578742D636F6C6F72293B0D0A20202D';
wwv_flow_imp.g_varchar2_table(870) := '2D612D6469616772616D2D656C656D656E742D7465726D696E61746F722D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E32293B0D0A20202D2D612D6469616772616D2D656C656D656E742D626163';
wwv_flow_imp.g_varchar2_table(871) := '6B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E32293B0D0A20202D2D612D6469616772616D2D6C6162656C2D6261636B67726F756E642D636F6C6F723A20236263623662313B0D0A20202D2D612D64696167';
wwv_flow_imp.g_varchar2_table(872) := '72616D2D6C6162656C2D746578742D636F6C6F723A20233030303B0D0A20202D2D612D6469616772616D2D6E6176696761746F722D626F726465722D636F6C6F723A20236263623662313B0D0A20202D2D612D63722D636865636B626F782D6261636B67';
wwv_flow_imp.g_varchar2_table(873) := '726F756E642D636F6C6F723A20233231323332353B0D0A20202D2D707269736D2D636F6D6D656E743A20233641393935353B0D0A20202D2D707269736D2D737472696E673A20234345393137383B0D0A20202D2D707269736D2D6C69746572616C3A2023';
wwv_flow_imp.g_varchar2_table(874) := '3943444346453B0D0A20202D2D707269736D2D6B6579776F72643A20234335383643303B0D0A20202D2D707269736D2D66756E6374696F6E3A20234443444341413B0D0A20202D2D707269736D2D64656C657465643A20234345393137383B0D0A20202D';
wwv_flow_imp.g_varchar2_table(875) := '2D707269736D2D636C6173733A20233445433942303B0D0A20202D2D707269736D2D6275696C74696E3A20234443444341413B0D0A20202D2D707269736D2D70726F70657274793A20233943444346453B0D0A20202D2D707269736D2D6E616D65737061';
wwv_flow_imp.g_varchar2_table(876) := '63653A20233445433942303B0D0A20202D2D707269736D2D6E756D6265723A20234235434541383B0D0A7D0D0A';
wwv_flow_imp_shared.create_theme_file(
 p_id=>wwv_flow_imp.id(22135863423987262806)
,p_theme_id=>42
,p_file_name=>'22135863068714262804.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2A210D0A20436F707972696768742028632920323032302C20323032342C204F7261636C6520616E642F6F722069747320616666696C69617465732E0D0A202A2F0D0A';
wwv_flow_imp_shared.create_theme_file(
 p_id=>wwv_flow_imp.id(24559255055681350998)
,p_theme_id=>42
,p_file_name=>'24559254608229350994.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2A210D0A20436F707972696768742028632920323032302C20323032342C204F7261636C6520616E642F6F722069747320616666696C69617465732E0D0A202A2F0D0A';
wwv_flow_imp_shared.create_theme_file(
 p_id=>wwv_flow_imp.id(24560732745416428440)
,p_theme_id=>42
,p_file_name=>'24560732328303428438.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2A210D0A20436F707972696768742028632920323032302C20323032342C204F7261636C6520616E642F6F722069747320616666696C69617465732E0D0A202A2F0D0A';
wwv_flow_imp_shared.create_theme_file(
 p_id=>wwv_flow_imp.id(24563318213514275252)
,p_theme_id=>42
,p_file_name=>'24563317887878275250.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(22134088370058213226)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>15551029026224
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(22134381993914213448)
,p_build_option_name=>'Feature: Access Control'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15551029035033
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>'Incorporate role based user authentication within your application and manage username mappings to application roles.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(22134382054080213448)
,p_build_option_name=>'Feature: Activity Reporting'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15551029035036
,p_feature_identifier=>'APPLICATION_ACTIVITY_REPORTING'
,p_build_option_comment=>'Include numerous reports and charts on end user activity.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(22134382167433213448)
,p_build_option_name=>'Feature: Feedback'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15551029035040
,p_feature_identifier=>'APPLICATION_FEEDBACK'
,p_build_option_comment=>'Provide a mechanism for end users to post general comments back to the application administrators and developers.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(22134382303634213448)
,p_build_option_name=>'Feature: Configuration Options'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15551029035025
,p_feature_identifier=>'APPLICATION_CONFIGURATION'
,p_build_option_comment=>'Allow application administrators to enable or disable specific functionality, associated with an Oracle APEX build option, from within the application.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(22134382660403213448)
,p_build_option_name=>'Feature: About Page'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15551029035041
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'About this application page.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(22134382784700213448)
,p_build_option_name=>'Feature: Theme Style Selection'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15551029035043
,p_feature_identifier=>'APPLICATION_THEME_STYLE_SELECTION'
,p_build_option_comment=>'Allow administrators to select a default color scheme (theme style) for the application. Administrators can also choose to allow end users to choose their own theme style. '
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(22134618731002214738)
,p_build_option_name=>'Feature: Push Notifications'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15551029079851
,p_feature_identifier=>'APPLICATION_PUSH_NOTIFICATIONS'
,p_build_option_comment=>'Allow users to subscribe to push notifications on their devices.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(22134619000487214738)
,p_build_option_name=>'Feature: User Settings'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15551029079851
,p_feature_identifier=>'APPLICATION_USER_SETTINGS'
,p_build_option_comment=>'The user settings page is a drawer that links to all user settings pages.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(26390324641716576355)
,p_build_option_name=>'Feature: Email Reporting'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15554713799185
,p_feature_identifier=>'APPLICATION_EMAIL_REPORTING'
,p_build_option_comment=>'Includes a report displaying the mail to be sent joined with the log of emails already sent.'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/email/templates/termin_wizyty
begin
wwv_flow_imp_shared.create_email_template(
 p_id=>wwv_flow_imp.id(37283988358601451902)
,p_name=>'Termin wizyty'
,p_static_id=>'TERMIN_WIZYTY'
,p_version_number=>2
,p_subject=>'Termin wizyty'
,p_html_body=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Witaj, #CONTACT#</p>',
unistr('<p>serwis samochodowy przypomina ci o zbli\017Caj\0105cym sie terminie wizyty, kt\00F3ry jest ustalony na <strong>TERMIN WIZYTY</strong>.</p>'),
'<p>Z pozdrowieniami wasz ulubiony serwis motoryzacyjny.</p>',
''))
,p_html_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<H1>Zbli\017Ca si\0119 termin Twojej wizyty w serwisie samochodowym</H1>'),
''))
,p_version_scn=>15572050480194
);
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(22134088693610213227)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>15551029026225
);
end;
/
prompt --application/shared_components/security/authentications/open_door_credentials
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(35990270247413667837)
,p_name=>'Open Door Credentials'
,p_scheme_type=>'NATIVE_OPEN_DOOR'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>15565577023545
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>unistr('Strona g\0142\00F3wna')
,p_alias=>unistr('STRONA-G\0141\00D3WNA')
,p_step_title=>'Serwis samochodowy'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-HeroRegion {',
'    display: flex;',
'    justify-content: center;',
'    align-items: center;',
'}',
'',
'.t-HeroRegion-col {',
'    display: flex;',
'    align-items: center;',
unistr('    gap: 10px; /* Odst\0119p mi\0119dzy logo a tekstem */'),
'}',
'',
'.t-HeroRegion-col--left img {',
unistr('    max-height: 50px; /* Zmniejsz lub dostosuj wysoko\015B\0107 logo */'),
'}',
'',
'.t-HeroRegion-title {',
'    animation: fadeIn 1.5s ease-in-out;',
'}',
'',
'@keyframes fadeIn {',
'    0% {',
'        opacity: 0;',
'        transform: translateY(-20px);',
'    }',
'    100% {',
'        opacity: 1;',
'        transform: translateY(0);',
'    }',
'}',
'',
'.t-HeroRegion-col--left img {',
'    animation: fadeInImage 1.5s ease-in-out;',
'}',
'',
'@keyframes fadeInImage {',
'    0% {',
'        opacity: 0;',
'        transform: scale(0.9);',
'    }',
'    100% {',
'        opacity: 1;',
'        transform: scale(1);',
'    }',
'}',
'',
'.t-Body-contentInner {',
'    animation: fadeIn 1.5s ease-in-out;',
'}',
'',
'@keyframes fadeIn {',
'    0% {',
'        opacity: 0;',
'        transform: translateY(20px);',
'    }',
'    100% {',
'        opacity: 1;',
'        transform: translateY(0);',
'    }',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134394327227213461)
,p_plug_name=>'Serwis samochodowy'
,p_title=>'Serwis samochodowy'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_plug_required_role=>wwv_flow_imp.id(36003491634580539898)
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22136052308904528623)
,p_plug_name=>'Rejestracja klienta'
,p_title=>'Rejestracja klienta'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured force-fa-lg:t-Cards--displayIcons:t-Cards--cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_location=>null
,p_list_id=>wwv_flow_imp.id(22548309122870982124)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
,p_plug_required_role=>wwv_flow_imp.id(36003491634580539898)
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Dodaj klienta'
,p_alias=>'DODAJ-KLIENTA'
,p_page_mode=>'MODAL'
,p_step_title=>'Dodaj klienta'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22178456328184034352)
,p_plug_name=>'Dodaj klienta'
,p_title=>'Dodaj klienta'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_KLIENTA,',
'       IMIE,',
'       NAZWISKO,',
'       EMAIL,',
'       NUMER_TELEFONU,',
'       PESEL',
'  from KLIENCI'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_required_role=>wwv_flow_imp.id(22134384889557213450)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22136050332668528603)
,p_plug_name=>'Przyciski'
,p_parent_plug_id=>wwv_flow_imp.id(22178456328184034352)
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>80
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22178461563604034356)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22136050332668528603)
,p_button_name=>'Anuluj'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Anuluj'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22178462970897034357)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22136050332668528603)
,p_button_name=>'Dodaj'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj'
,p_button_position=>'CREATE'
,p_button_condition=>'P2_ID_KLIENTA'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-check'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(22178463222166034357)
,p_branch_name=>'Go To Page 1'
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22136052555602528625)
,p_name=>'P2_PESEL'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(22178456328184034352)
,p_item_source_plug_id=>wwv_flow_imp.id(22178456328184034352)
,p_prompt=>'Pesel'
,p_source=>'PESEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEL',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22178457012892034353)
,p_name=>'P2_IMIE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22178456328184034352)
,p_item_source_plug_id=>wwv_flow_imp.id(22178456328184034352)
,p_prompt=>'Imie'
,p_source=>'IMIE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22178457470323034353)
,p_name=>'P2_NAZWISKO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22178456328184034352)
,p_item_source_plug_id=>wwv_flow_imp.id(22178456328184034352)
,p_prompt=>'Nazwisko'
,p_source=>'NAZWISKO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22178457887569034354)
,p_name=>'P2_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(22178456328184034352)
,p_item_source_plug_id=>wwv_flow_imp.id(22178456328184034352)
,p_prompt=>'E-mail'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'EMAIL',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22178458215040034354)
,p_name=>'P2_NUMER_TELEFONU'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(22178456328184034352)
,p_item_source_plug_id=>wwv_flow_imp.id(22178456328184034352)
,p_prompt=>'Numer Telefonu'
,p_source=>'NUMER_TELEFONU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEL',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28417698238978144635)
,p_name=>'P2_ID_KLIENTA'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22178456328184034352)
,p_item_source_plug_id=>wwv_flow_imp.id(22178456328184034352)
,p_source=>'ID_KLIENTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(30820613013469651620)
,p_validation_name=>'IMIE SPACJA'
,p_validation_sequence=>10
,p_validation=>'P2_IMIE'
,p_validation_type=>'ITEM_CONTAINS_NO_SPACES'
,p_error_message=>unistr('U\017Cyto znaku spacji w polu IMIE.')
,p_associated_item=>wwv_flow_imp.id(22178457012892034353)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(30820613479094651624)
,p_validation_name=>'NAZWISKO SPACJA'
,p_validation_sequence=>20
,p_validation=>'P2_NAZWISKO'
,p_validation_type=>'ITEM_CONTAINS_NO_SPACES'
,p_error_message=>unistr('U\017Cyto znaku spacji w polu Nazwisko.')
,p_associated_item=>wwv_flow_imp.id(22178457470323034353)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(30820613600186651626)
,p_validation_name=>'SPACJA NRTEL'
,p_validation_sequence=>30
,p_validation=>'P2_NUMER_TELEFONU'
,p_validation_type=>'ITEM_CONTAINS_NO_SPACES'
,p_error_message=>unistr('U\017Cyto znaku spacji w polu Numer Telefonu.')
,p_associated_item=>wwv_flow_imp.id(22178458215040034354)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(30820613783362651627)
,p_validation_name=>'SPACJA PESEL'
,p_validation_sequence=>40
,p_validation=>'P2_PESEL'
,p_validation_type=>'ITEM_CONTAINS_NO_SPACES'
,p_error_message=>unistr('U\017Cyto znaku spacji w polu PESEL.')
,p_associated_item=>wwv_flow_imp.id(22136052555602528625)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(30820613543517651625)
,p_validation_name=>'E-MAIL SPACJA'
,p_validation_sequence=>50
,p_validation=>'P2_EMAIL'
,p_validation_type=>'ITEM_CONTAINS_NO_SPACES'
,p_error_message=>unistr('U\017Cyto znaku spacji w polu E-mail.')
,p_associated_item=>wwv_flow_imp.id(22178457887569034354)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(30820613966659651629)
,p_validation_name=>'CYFRY PESEL'
,p_validation_sequence=>60
,p_validation=>'P2_PESEL'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>unistr('PESEL powinien sk\0142ada\0107 si\0119 z samych cyfr.')
,p_associated_item=>wwv_flow_imp.id(22136052555602528625)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(30820614135919651631)
,p_validation_name=>'MINMAX PESEL'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CASE',
'    WHEN length(:P2_PESEL) = 11 THEN',
'        true',
'    ELSE',
'        false',
'END'))
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('PESEL powinien sk\0142ada\0107 si\0119 z'),
unistr(' 11 znak\00F3w.')))
,p_associated_item=>wwv_flow_imp.id(22136052555602528625)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(30820614245967651632)
,p_validation_name=>'MINMAX NRTEL'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CASE',
'    WHEN length(:P2_NUMER_TELEFONU) = 9 THEN',
'        true',
'    ELSE',
'        false',
'END'))
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Numer telefonu powinien sk\0142ada\0107 si\0119 z 9 cyfr.')
,p_associated_item=>wwv_flow_imp.id(22178458215040034354)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(30820614872534651638)
,p_validation_name=>'IMIE ZNAKI'
,p_validation_sequence=>90
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CASE ',
'    WHEN REGEXP_LIKE(:P2_IMIE, ''^[A-Za-z]+$'') THEN',
'        true',
'    ELSE',
'        false',
'END'))
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Imi\0119 powinno sk\0142ada\0107 si\0119 z samych liter.')
,p_associated_item=>wwv_flow_imp.id(22178457012892034353)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(30820614906029651639)
,p_validation_name=>'NAZWISKO ZNAKI'
,p_validation_sequence=>100
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CASE ',
'    WHEN REGEXP_LIKE(:P2_NAZWISKO, ''^[A-Za-z]+$'') THEN',
'        true',
'    ELSE',
'        false',
'END'))
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Nazwisko powinno sk\0142ada\0107 si\0119 z samych liter.')
,p_associated_item=>wwv_flow_imp.id(22178457470323034353)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22136050225080528602)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(22178456328184034352)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Podaj swoje dane'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_process_error_message=>unistr('Nie uda\0142o si\0119 doda\0107 klienta !')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Dodano klienta'
,p_internal_uid=>22136050225080528602
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22178463762084034359)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(22178456328184034352)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form Rejestr u\017Cytkownika')
,p_internal_uid=>22178463762084034359
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>unistr('Baza klient\00F3w')
,p_alias=>unistr('US\0141UGA-DLA-KLIENTA')
,p_step_title=>unistr('Baza klient\00F3w')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22626631118985606615)
,p_plug_name=>'Interactive'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select APEX_ITEM.CHECKBOX(1, ID_KLIENTA) CHECKBOX,  ',
'       ID_KLIENTA,',
'       IMIE,',
'       NAZWISKO,',
'       EMAIL,',
'       NUMER_TELEFONU,',
'       PESEL',
'  from KLIENCI'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_required_role=>wwv_flow_imp.id(22134384889557213450)
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(22626631236094606616)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::P5_ID_KLIENTA:#ID_KLIENTA#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'KAHELATA@GMAIL.COM'
,p_internal_uid=>22626631236094606616
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22626631478276606618)
,p_db_column_name=>'IMIE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Imie'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22626631567243606619)
,p_db_column_name=>'NAZWISKO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nazwisko'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22626631694955606620)
,p_db_column_name=>'EMAIL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'E-mail'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22626631784604606621)
,p_db_column_name=>'NUMER_TELEFONU'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Numer Telefonu'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22626631848093606622)
,p_db_column_name=>'PESEL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Pesel'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28417698393175144636)
,p_db_column_name=>'ID_KLIENTA'
,p_display_order=>80
,p_column_identifier=>'J'
,p_column_label=>'Id Klienta'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(22630897406659461165)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'226308975'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IMIE:NAZWISKO:EMAIL:NUMER_TELEFONU:PESEL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(63515443280289398575)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(22134088918933213227)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_required_role=>wwv_flow_imp.id(22134384889557213450)
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22626632103371606625)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(22626631118985606615)
,p_button_name=>'Dodaj_klienta'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--hoverIconPush:t-Button--pillStart'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj Klienta'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-user-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30820615757009651647)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(63515443280289398575)
,p_button_name=>unistr('G\00F3ra')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>unistr('G\00F3ra')
,p_button_position=>'UP'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(41399689686025197024)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(22626631118985606615)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(41399690047739197024)
,p_event_id=>wwv_flow_imp.id(41399689686025197024)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22626631118985606615)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>unistr('Tabela us\0142ug')
,p_alias=>unistr('DODANIE-US\0141UGI')
,p_step_title=>unistr('Tabela us\0142ug')
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31633926154881955683)
,p_plug_name=>unistr('Dodanie us\0142ugi')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select APEX_ITEM.CHECKBOX(1, ID_USLUGI) CHECKBOX,',
'       ID_USLUGI,',
'       USLUGA,',
'       CENA_USLUGI',
'  from USLUGI',
'',
'  '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_required_role=>wwv_flow_imp.id(22134384889557213450)
,p_prn_page_header=>unistr('Dodanie us\0142ugi')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(31633926254890955683)
,p_name=>unistr('Dodanie us\0142ugi')
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8:P8_ID_USLUGI:#ID_USLUGI#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'KAHELATA@GMAIL.COM'
,p_internal_uid=>31633926254890955683
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31633927398153955684)
,p_db_column_name=>'USLUGA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Usluga'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31633927737665955684)
,p_db_column_name=>'CENA_USLUGI'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Cena Uslugi'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30820616089148651650)
,p_db_column_name=>'CHECKBOX'
,p_display_order=>13
,p_column_identifier=>'D'
,p_column_label=>'Checkbox'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33940097525203790601)
,p_db_column_name=>'ID_USLUGI'
,p_display_order=>23
,p_column_identifier=>'E'
,p_column_label=>'Id Uslugi'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(31633939226875955781)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'316339393'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USLUGA:CENA_USLUGI'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31633929875298955686)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(22134088918933213227)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_required_role=>wwv_flow_imp.id(22134384889557213450)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31633928246364955685)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(31633926154881955683)
,p_button_name=>unistr('UTW\00D3RZ')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Utw\00F3rz us\0142uge')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:8::'
,p_icon_css_classes=>'fa-table-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32918025735568968799)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(31633929875298955686)
,p_button_name=>unistr('G\00F3ra')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>unistr('G\00F3ra')
,p_button_position=>'UP'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31633928556887955685)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(31633926154881955683)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31633929008444955685)
,p_event_id=>wwv_flow_imp.id(31633928556887955685)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(31633926154881955683)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Edycja klienta'
,p_alias=>'DODANIE-KLIENTA-DO-BAZY'
,p_page_mode=>'MODAL'
,p_step_title=>'Edycja klienta'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33917505548198598001)
,p_plug_name=>'Dodanie klienta do bazy'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'KLIENCI'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33917510064821598006)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33917510479406598008)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(33917510064821598006)
,p_button_name=>'ANULUJ'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Anuluj'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33917511853921598009)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(33917510064821598006)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>unistr('Usu\0144')
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P5_ID_KLIENTA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33917512286947598009)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(33917510064821598006)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Zapisz zmiany'
,p_button_position=>'NEXT'
,p_button_condition=>'P5_ID_KLIENTA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33917512652089598010)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(33917510064821598006)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Utw\00F3rz')
,p_button_position=>'NEXT'
,p_button_condition=>'P5_ID_KLIENTA'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33917505844114598002)
,p_name=>'P5_ID_KLIENTA'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(33917505548198598001)
,p_item_source_plug_id=>wwv_flow_imp.id(33917505548198598001)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Klienta'
,p_source=>'ID_KLIENTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33917506217955598003)
,p_name=>'P5_IMIE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(33917505548198598001)
,p_item_source_plug_id=>wwv_flow_imp.id(33917505548198598001)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Imie'
,p_source=>'IMIE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33917506699359598003)
,p_name=>'P5_NAZWISKO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(33917505548198598001)
,p_item_source_plug_id=>wwv_flow_imp.id(33917505548198598001)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nazwisko'
,p_source=>'NAZWISKO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33917507015587598003)
,p_name=>'P5_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(33917505548198598001)
,p_item_source_plug_id=>wwv_flow_imp.id(33917505548198598001)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>35
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33917507401410598004)
,p_name=>'P5_NUMER_TELEFONU'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(33917505548198598001)
,p_item_source_plug_id=>wwv_flow_imp.id(33917505548198598001)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Numer Telefonu'
,p_source=>'NUMER_TELEFONU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>15
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33917507801771598004)
,p_name=>'P5_PESEL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(33917505548198598001)
,p_item_source_plug_id=>wwv_flow_imp.id(33917505548198598001)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pesel'
,p_source=>'PESEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33917510531890598008)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(33917510479406598008)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33917511309481598009)
,p_event_id=>wwv_flow_imp.id(33917510531890598008)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33917513437018598011)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(33917505548198598001)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Dodanie klienta do bazy'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>33917513437018598011
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33917513874782598011)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>33917513874782598011
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33917513070849598010)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(33917505548198598001)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Dodanie klienta do bazy'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>33917513070849598010
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>unistr('Wizyty klient\00F3w')
,p_alias=>unistr('WIZYTY-KLIENT\00D3W1')
,p_step_title=>unistr('Wizyty klient\00F3w')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27412172136469550185)
,p_plug_name=>unistr('Wizyty klient\00F3w')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.ID_REZERWACJI,',
'       k.IMIE,',
'       k.NAZWISKO,',
'       u.USLUGA,',
'       r.DATA_WIZYTY,',
'       r.ID_USLUGI,',
'       r.END_DATE,',
'       r.ID_KLIENTA',
'from   REZERWACJE r  ',
'JOIN KLIENCI K ON r.ID_KLIENTA = k.ID_KLIENTA',
'JOIN USLUGI U ON r.ID_USLUGI = r.ID_USLUGI',
'WHERE r.ID_USLUGI = u.ID_USLUGI'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_required_role=>wwv_flow_imp.id(22134384746909213450)
,p_prn_page_header=>unistr('Wizyty klient\00F3w')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(27412172215926550185)
,p_name=>unistr('Wizyty klient\00F3w')
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::P11_ID_REZERWACJI:#ID_REZERWACJI#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'KAHELATA@GMAIL.COM'
,p_internal_uid=>27412172215926550185
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27412172983966550186)
,p_db_column_name=>'ID_REZERWACJI'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Rezerwacji'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27412173310054550187)
,p_db_column_name=>'DATA_WIZYTY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Termin wizyty'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27412174117762550187)
,p_db_column_name=>'END_DATE'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Koniec wizyty'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25048180351343692823)
,p_db_column_name=>'ID_USLUGI'
,p_display_order=>40
,p_column_identifier=>'F'
,p_column_label=>'Id Uslugi'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(28417698521189144638)
,p_db_column_name=>'ID_KLIENTA'
,p_display_order=>50
,p_column_identifier=>'J'
,p_column_label=>'Id Klienta'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30820614505406651635)
,p_db_column_name=>'IMIE'
,p_display_order=>60
,p_column_identifier=>'K'
,p_column_label=>'Imie'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30820614624373651636)
,p_db_column_name=>'NAZWISKO'
,p_display_order=>70
,p_column_identifier=>'L'
,p_column_label=>'Nazwisko'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(30820614701159651637)
,p_db_column_name=>'USLUGA'
,p_display_order=>80
,p_column_identifier=>'M'
,p_column_label=>'Usluga'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(27412181525590551102)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'274121816'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IMIE:NAZWISKO:USLUGA:DATA_WIZYTY:END_DATE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27412176660557550189)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(22134088918933213227)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_required_role=>wwv_flow_imp.id(22134384746909213450)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31882798658640760805)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27412172136469550185)
,p_button_name=>'PrzyciskRaport'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Utw\00F3rz termin w raporcie')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25048180847055692828)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27412172136469550185)
,p_button_name=>'Rozpiska_kalendarza'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Utw\00F3rz termin w kalendarzu')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:12::'
,p_icon_css_classes=>'fa-calendar-user'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32918085491199977539)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(27412176660557550189)
,p_button_name=>unistr('G\00F3ra')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>unistr('G\00F3ra')
,p_button_position=>'UP'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27412175372064550188)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(27412172136469550185)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27412175816739550188)
,p_event_id=>wwv_flow_imp.id(27412175372064550188)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27412172136469550185)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>unistr('Wysy\0142ka e-mail')
,p_alias=>unistr('WYSY\0141KA-E-MAIL')
,p_step_title=>unistr('Wysy\0142ka e-mail')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33940098500909790611)
,p_plug_name=>'Podaj dane e-mail'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_required_role=>wwv_flow_imp.id(22134384889557213450)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64704360313930460156)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(22134088918933213227)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_required_role=>wwv_flow_imp.id(22134384746909213450)
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33940098989670790615)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(33940098500909790611)
,p_button_name=>unistr('Wy\015Blij')
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Wy\015Blij e-mail do klienta')
,p_button_position=>'CHANGE'
,p_icon_css_classes=>'fa-send'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37292183912058909969)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(64704360313930460156)
,p_button_name=>unistr('G\00F3ra')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>unistr('G\00F3ra')
,p_button_position=>'UP'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33940098630040790612)
,p_name=>'P7_TO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(33940098500909790611)
,p_prompt=>'E-mail odbiorcy'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT K.EMAIL D, K.EMAIL R from KLIENCI K',
'join REZERWACJE R ON R.ID_KLIENTA = K.ID_KLIENTA'))
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33940098702534790613)
,p_name=>'P7_CONTACT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(33940098500909790611)
,p_prompt=>'Odbiorca'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33940098842255790614)
,p_name=>'P7_EMAIL_TEMPLATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(33940098500909790611)
,p_prompt=>unistr('Tytu\0142 maila')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EMAIL TEMPLATES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name as display, ',
'       static_id as return ',
'  from APEX_APPL_EMAIL_TEMPLATES',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(33940099214526790618)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P7_TO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(33940099368577790619)
,p_event_id=>wwv_flow_imp.id(33940099214526790618)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P7_CONTACT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT k.imie || '' '' || k.nazwisko FROM klienci k WHERE :P7_TO = EMAIL;'
,p_attribute_07=>'P7_TO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33940099041188790616)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SEND_EMAIL'
,p_process_name=>unistr('Wysy\0142ka e-mail')
,p_attribute_01=>'&APP_EMAIL.'
,p_attribute_02=>'&P7_TO.'
,p_attribute_10=>'Y'
,p_attribute_11=>wwv_flow_imp.id(37283988358601451902)
,p_attribute_12=>'{"CONTACT":"&P7_CONTACT."}'
,p_process_error_message=>unistr('Nie uda\0142o si\0119 wys\0142a\0107 e-maila.')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(33940098989670790615)
,p_process_success_message=>unistr('Pomy\015Blnie wys\0142ano e-mail.')
,p_internal_uid=>33940099041188790616
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>unistr('Utw\00F3rz us\0142ug\0119')
,p_alias=>unistr('FORMULARZ-DODANIA-US\0141UGI')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Utw\00F3rz us\0142ug\0119')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31633918941078955676)
,p_plug_name=>unistr('Formularz dodania us\0142ugi')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'USLUGI'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31633921335858955679)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31633921767276955679)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(31633921335858955679)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Anuluj'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31633923172588955680)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(31633921335858955679)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>unistr('usu\0144')
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P8_ID_USLUGI'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31633923547589955680)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(31633921335858955679)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Zapisz zmiany'
,p_button_position=>'NEXT'
,p_button_condition=>'P8_ID_USLUGI'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31633923913639955681)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(31633921335858955679)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Utw\00F3rz')
,p_button_position=>'NEXT'
,p_button_condition=>'P8_ID_USLUGI'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31633919280076955676)
,p_name=>'P8_ID_USLUGI'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31633918941078955676)
,p_item_source_plug_id=>wwv_flow_imp.id(31633918941078955676)
,p_source=>'ID_USLUGI'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31633919608648955677)
,p_name=>'P8_USLUGA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31633918941078955676)
,p_item_source_plug_id=>wwv_flow_imp.id(31633918941078955676)
,p_prompt=>'Usluga'
,p_source=>'USLUGA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31633920006346955678)
,p_name=>'P8_CENA_USLUGI'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(31633918941078955676)
,p_item_source_plug_id=>wwv_flow_imp.id(31633918941078955676)
,p_prompt=>'Cena Uslugi'
,p_source=>'CENA_USLUGI'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31633921895523955679)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(31633921767276955679)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31633922604222955680)
,p_event_id=>wwv_flow_imp.id(31633921895523955679)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31633924744535955681)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(31633918941078955676)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('Process form Formularz dodania us\0142ugi')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31633924744535955681
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31633925192812955681)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>31633925192812955681
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31633924336687955681)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(31633918941078955676)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form Formularz dodania us\0142ugi')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31633924336687955681
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Formularz'
,p_alias=>'FORMULARZ'
,p_page_mode=>'MODAL'
,p_step_title=>'Edycja terminu'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27412163564472550178)
,p_plug_name=>'Dodanie klienta'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.ID_REZERWACJI,',
'       r.DATA_WIZYTY,',
'       r.ID_USLUGI,',
'       r.END_DATE,',
'       r.ID_KLIENTA',
'  from REZERWACJE r'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27412167372365550182)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27412167787606550182)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27412167372365550182)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Anuluj'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27412169111515550183)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27412167372365550182)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>unistr('Usu\0144')
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P11_ID_REZERWACJI'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27412169555319550184)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(27412167372365550182)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Zapisz zmiany'
,p_button_position=>'NEXT'
,p_button_condition=>'P11_ID_REZERWACJI'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(27412169995768550184)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(27412167372365550182)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Utw\00F3rz')
,p_button_position=>'NEXT'
,p_button_condition=>'P11_ID_REZERWACJI'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27412163808018550179)
,p_name=>'P11_ID_REZERWACJI'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(27412163564472550178)
,p_item_source_plug_id=>wwv_flow_imp.id(27412163564472550178)
,p_source=>'ID_REZERWACJI'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27412164241517550180)
,p_name=>'P11_DATA_WIZYTY'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(27412163564472550178)
,p_item_source_plug_id=>wwv_flow_imp.id(27412163564472550178)
,p_prompt=>'Data Wizyty'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_source=>'DATA_WIZYTY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27412164685914550180)
,p_name=>'P11_ID_USLUGI'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(27412163564472550178)
,p_item_source_plug_id=>wwv_flow_imp.id(27412163564472550178)
,p_prompt=>unistr('Us\0142uga')
,p_source=>'ID_USLUGI'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT usluga, id_uslugi',
'FROM uslugi',
'',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27412165000244550180)
,p_name=>'P11_END_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(27412163564472550178)
,p_item_source_plug_id=>wwv_flow_imp.id(27412163564472550178)
,p_prompt=>'Koniec wizyty'
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_source=>'END_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(27412165443450550181)
,p_name=>'P11_ID_KLIENTA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(27412163564472550178)
,p_item_source_plug_id=>wwv_flow_imp.id(27412163564472550178)
,p_prompt=>'PESEL'
,p_source=>'ID_KLIENTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PESEL d , ID_KLIENTA r FROM KLIENCI',
'',
'',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28417696553496144618)
,p_name=>'P11_IMIE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(27412163564472550178)
,p_prompt=>'Imie'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28417696662068144619)
,p_name=>'P11_NAZWISKO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(27412163564472550178)
,p_prompt=>'Nazwisko'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28417696780761144620)
,p_name=>'P11_NUMER_TELEFONU'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(27412163564472550178)
,p_prompt=>'Numer telefonu'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(30820612769999651617)
,p_validation_name=>'New'
,p_validation_sequence=>10
,p_validation=>'to_date(:p11_Data_wizyty) <= to_date(:p11_end_date)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Data zako\0144czenia wizyty nie mo\017Ce by\0107 wcze\015Bniejsza ni\017C data rozpocz\0119cia wizyty.')
,p_associated_item=>wwv_flow_imp.id(27412164241517550180)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(27412167829863550182)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(27412167787606550182)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(27412168619808550183)
,p_event_id=>wwv_flow_imp.id(27412167829863550182)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30820611305234651603)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P11_ID_KLIENTA'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30820611429117651604)
,p_event_id=>wwv_flow_imp.id(30820611305234651603)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_IMIE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select IMIE from KLIENCI where ID_KLIENTA = :P11_ID_KLIENTA'
,p_attribute_07=>'P11_ID_KLIENTA'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30820611508634651605)
,p_name=>'New_1'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P11_ID_KLIENTA'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30820611678928651606)
,p_event_id=>wwv_flow_imp.id(30820611508634651605)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_NAZWISKO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select NAZWISKO from KLIENCI where ID_KLIENTA = :P11_ID_KLIENTA'
,p_attribute_07=>'P11_ID_KLIENTA'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30820611745616651607)
,p_name=>'New_2'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P11_ID_KLIENTA'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30820611839175651608)
,p_event_id=>wwv_flow_imp.id(30820611745616651607)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_NUMER_TELEFONU'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select NUMER_TELEFONU from KLIENCI where ID_KLIENTA = :P11_ID_KLIENTA'
,p_attribute_07=>'P11_ID_KLIENTA'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27412170728891550184)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(27412163564472550178)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Dodanie klienta'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>27412170728891550184
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27412171162901550184)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>27412171162901550184
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(27412170316876550184)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(27412163564472550178)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Dodanie klienta'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>27412170316876550184
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Kalendarz wizyt'
,p_alias=>'KALENDARZ-WIZYT'
,p_step_title=>'Kalendarz wizyt'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27432634799619794282)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(22134088918933213227)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_required_role=>wwv_flow_imp.id(22134384746909213450)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27432635419624794283)
,p_plug_name=>'Kalendarz wizyt'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--textContent:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
unistr('    k.IMIE || '' '' || k.NAZWISKO || '' - '' || u.USLUGA || '' - '' || TO_CHAR(data_wizyty, ''HH24:MI'') AS "Imi\0119 Nazwisko - Us\0142uga",'),
'    r.ID_klienta,',
'    r.ID_REZERWACJI,',
'    r.DATA_WIZYTY,',
'    r.ID_USLUGI,',
'    r.END_DATE ',
'    from rezerwacje r',
'    /*where r.ID_KLIENTA = k.ID_KLIENTA*/',
'    JOIN ',
'    KLIENCI k ON r.ID_klienta = k.ID_klienta',
'JOIN ',
'    USLUGI u ON r.ID_USLUGI = u.ID_USLUGI;',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_required_role=>wwv_flow_imp.id(22134384746909213450)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'calendar_views_and_navigation', 'month:week:day:list:navigation',
  'create_link', 'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:11:P11_DATA_WIZYTY,P11_END_DATE:&APEX$NEW_START_DATE.,&APEX$NEW_START_DATE.',
  'display_column', unistr('Imi\0119 Nazwisko - Us\0142uga'),
  'drag_and_drop', 'Y',
  'drag_and_drop_plsql_code', wwv_flow_string.join(wwv_flow_t_varchar2(
    'begin',
    'update rezerwacje',
    'set data_wizyty = to_date(:APEX$NEW_START_DATE, ''YYYYMMDDHH24MISS''),',
    'end_date = to_date(:APEX$NEW_END_DATE, ''YYYYMMDDHH24MISS'')',
    'where ID_REZERWACJI = :APEX$PK_VALUE;',
    'end;')),
  'end_date_column', 'END_DATE',
  'event_sorting', 'AUTOMATIC',
  'first_hour', '9',
  'maximum_events_day', '8',
  'multiple_line_event', 'Y',
  'primary_key_column', 'ID_REZERWACJI',
  'show_time', 'Y',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'DATA_WIZYTY',
  'time_format', '00',
  'view_edit_link', 'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:11:P11_ID_REZERWACJI,P11_END_DATE:&ID_REZERWACJI.,&END_DATE.')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32917942628655229507)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27432634799619794282)
,p_button_name=>unistr('G\00F3ra')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>unistr('G\00F3ra')
,p_button_position=>'UP'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(30820612455404651614)
,p_validation_name=>'New'
,p_validation_sequence=>10
,p_validation=>'to_date(:p11_DATA_WIZYTY) <= to_date(:p1_end)'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'UPS'
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'login20020'
,p_alias=>'LOGIN20020'
,p_step_title=>'Stacja diagnostyczna / Serwis samochodowy - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134386897698213452)
,p_plug_name=>'Serwis samochodowy'
,p_title=>'Serwis samochodowy'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_location=>null
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134388945598213457)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(22134386897698213452)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134387398794213455)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22134386897698213452)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134387748638213456)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22134386897698213452)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134388155688213456)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22134386897698213452)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled and not apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134388585412213456)
,p_name=>'P9999_PERSISTENT_AUTH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22134386897698213452)
,p_prompt=>'Remember me'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_auth_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22134391133589213458)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>22134391133589213458
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(22134391622037213458)
,p_page_process_id=>wwv_flow_imp.id(22134391133589213458)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(22134392168610213459)
,p_page_process_id=>wwv_flow_imp.id(22134391133589213458)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22134389281481213457)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>22134389281481213457
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(22134389743148213457)
,p_page_process_id=>wwv_flow_imp.id(22134389281481213457)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(22134390209499213458)
,p_page_process_id=>wwv_flow_imp.id(22134389281481213457)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(22134390746900213458)
,p_page_process_id=>wwv_flow_imp.id(22134389281481213457)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P9999_PERSISTENT_AUTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22134393118760213459)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>22134393118760213459
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22134392639221213459)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>22134392639221213459
);
end;
/
prompt --application/pages/page_10000
begin
wwv_flow_imp_page.create_page(
 p_id=>10000
,p_name=>'Administracja'
,p_alias=>'ADMINISTRACJA'
,p_step_title=>'Adminsitracja'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(22134386240167213451)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(22134384889557213450)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134605789997214300)
,p_plug_name=>'Column 1'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134606908035214302)
,p_plug_name=>'Activity Reports'
,p_parent_plug_id=>wwv_flow_imp.id(22134605789997214300)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_list_id=>wwv_flow_imp.id(22134601277686214298)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(22134382054080213448)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134607362364214302)
,p_plug_name=>'Column 2'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134607784645214302)
,p_plug_name=>'Access Control'
,p_parent_plug_id=>wwv_flow_imp.id(22134607362364214302)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(22134381993914213448)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134608573836214303)
,p_plug_name=>'ACL Information'
,p_parent_plug_id=>wwv_flow_imp.id(22134607784645214302)
,p_region_css_classes=>'margin-sm'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--noIcon:t-Alert--warning:t-Alert--accessibleHeading'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_acl_scope varchar2(45);',
'begin',
'    l_acl_scope := apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' );',
'',
'    if l_acl_scope = ''ALL_USERS'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ALL_USERS'');',
'    elsif l_acl_scope = ''ACL_ONLY'' then',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_ONLY'');',
'    else',
'        return apex_lang.message(''APEX.FEATURE.ACL.INFO.ACL_VALUE_INVALID'', l_acl_scope);',
'    end if;',
'end;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(22134608922450214303)
,p_name=>'User Counts Report'
,p_parent_plug_id=>wwv_flow_imp.id(22134607784645214302)
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.role_name, (select count(*) from apex_appl_acl_user_roles ur where r.role_id = ur.role_id) user_count, r.role_id',
'from apex_appl_acl_roles r',
'where r.application_id = :APP_ID',
'group by r.role_name, r.role_id',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515124465797522
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22134609668378214305)
,p_query_column_id=>1
,p_column_alias=>'ROLE_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Role Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22134610069591214305)
,p_query_column_id=>2
,p_column_alias=>'USER_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'User Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22134610432432214306)
,p_query_column_id=>3
,p_column_alias=>'ROLE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Role Id'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134613625177214520)
,p_plug_name=>'Access Control Actions'
,p_parent_plug_id=>wwv_flow_imp.id(22134607784645214302)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(22134603957600214300)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134614074110214521)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(22134607362364214302)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(22134382167433213448)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(22134614439988214521)
,p_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(22134614074110214521)
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.display_value feedback_status, ',
'(select count(*) from apex_team_feedback f where f.application_id = :APP_ID and f.feedback_status = l.return_value) feedback_count ',
'from apex_application_lov_entries l',
'where l.application_id = :APP_ID',
'and l.list_of_values_name = ''FEEDBACK_STATUS''',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515124465797522
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22134615174969214523)
,p_query_column_id=>1
,p_column_alias=>'FEEDBACK_STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Feedback Status'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22134615538110214524)
,p_query_column_id=>2
,p_column_alias=>'FEEDBACK_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Feedback Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134618132855214736)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(22134614074110214521)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(22134605023288214300)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(68928978857051573761)
,p_plug_name=>'Administracja'
,p_title=>'Administracja'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>90
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(22134088918933213227)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_required_role=>wwv_flow_imp.id(22134384889557213450)
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134608152246214303)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22134607784645214302)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add User'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:RP,10042::'
,p_icon_css_classes=>'fa-user-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(37295049282772618076)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(68928978857051573761)
,p_button_name=>unistr('G\00F3ra')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>unistr('G\00F3ra')
,p_button_position=>'UP'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-up'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22134612714448214519)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22134608152246214303)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22134613226137214519)
,p_event_id=>wwv_flow_imp.id(22134612714448214519)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22134608922450214303)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_10010
begin
wwv_flow_imp_page.create_page(
 p_id=>10010
,p_name=>'Configuration Options'
,p_alias=>'CONFIGURATION-OPTIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Configuration Options'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(22134386240167213451)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(22134384660586213450)
,p_required_patch=>wwv_flow_imp.id(22134382303634213448)
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Configuration settings allow you to make specific functionality either available (enabled) or unavailable (disabled) to end users.</p>',
'<p>If a specific function is not 100% ready, or needs to be temporarily removed, click <strong>Disabled</strong>. ',
'Once it should be made available, simply click <strong>Enabled</strong>.</p>',
'<p><em><strong>Note:</strong> Changes made here will not be reflected for individual end users currently running the application. Once the end user signs out and then signs back in the revised feature settings will be invoked.</em></p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134394994848213462)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134395141510213462)
,p_plug_name=>'Configuration Options'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    build_option_id     ID, ',
'    build_option_name   application_option,',
'    apex_item.hidden(1, build_option_id) ||',
'    apex_item.hidden(2, build_option_status) ||',
'    apex_item.switch ( ',
'         p_idx        => 3,',
'         p_value      => build_option_status,',
'         p_on_value   => ''Include'',',
'         p_on_label   => m.enabled,',
'         p_off_value  => ''Exclude'',',
'         p_off_label  => m.disabled,',
'         p_item_id    => ''BO_OPT_'' || rownum,',
'         p_item_label => ( case when build_option_status = ''Include'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_ENABLED'', apex_escape.html(build_option_name) )',
'                           when build_option_status = ''Exclude'' then',
'                               apex_lang.message( ''APEX.FEATURE.CONFIG.IS_DISABLED'', apex_escape.html(build_option_name) )',
'                           end ),',
'         p_attributes => ''style="white-space:pre;"'') "STATUS",',
'    component_comment   description,',
'    last_updated_on        updated,',
'    lower(last_updated_by) updated_by,',
'    build_option_status current_status',
'  from apex_application_build_options,',
'  (select apex_lang.message(''APEX.FEATURE.CONFIG.ENABLED'') enabled, apex_lang.message(''APEX.FEATURE.CONFIG.DISABLED'') disabled from dual) m',
' where application_id = :APP_ID ',
' and (feature_identifier not in ( ''APPLICATION_ACCESS_CONTROL'',''APPLICATION_CONFIGURATION'') or feature_identifier is null)'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Configuration Options'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(22134395747488213462)
,p_name=>'Configuration Options'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'KAHELATA@GMAIL.COM'
,p_internal_uid=>22134395747488213462
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134396468348213465)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134396858183213466)
,p_db_column_name=>'APPLICATION_OPTION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Feature'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134397256148213466)
,p_db_column_name=>'STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_allow_filtering=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134397601036213467)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134398078620213467)
,p_db_column_name=>'UPDATED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134398447369213467)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134398875013213468)
,p_db_column_name=>'CURRENT_STATUS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Current Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(22134401669857213470)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'221344017'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPLICATION_OPTION:STATUS:DESCRIPTION:UPDATED:UPDATED_BY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134403287999213472)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22134394994848213462)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134402577132213471)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(22134395141510213462)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(22134404080511213472)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22134403668064213472)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for i in 1..apex_application.g_f01.count loop',
'    for c1 in ( select application_id, build_option_name, build_option_status',
'                from apex_application_build_options',
'                where apex_application.g_f01(i) = build_option_id',
'                   and application_Id = :APP_ID) loop',
'        if c1.build_option_status != apex_application.g_f03(i) then',
'            apex_util.set_build_option_status(  p_application_id => :APP_ID,',
'                                                p_id => apex_application.g_f01(i),',
'                                                p_build_status => upper(apex_application.g_f03(i)) );',
'        end if;',
'    end loop;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Configuration Options updated. '
,p_internal_uid=>22134403668064213472
);
end;
/
prompt --application/pages/page_10020
begin
wwv_flow_imp_page.create_page(
 p_id=>10020
,p_name=>'Application Appearance'
,p_alias=>'APPLICATION-APPEARANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Appearance'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(22134386240167213451)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(22134384660586213450)
,p_required_patch=>wwv_flow_imp.id(22134382784700213448)
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the default color scheme used to display the application.</p>',
'<p>If <strong>Allow End Users to choose Theme Style</strong> is checked, then each end user can select from the available theme styles by clicking the <em>Customize</em> link in the bottom left corner of the Home page.</p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134404393298213473)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134404481187213473)
,p_plug_name=>'Configure Appearance'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134406839421213475)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(22134404393298213473)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134405487893213474)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22134404393298213473)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(22134407214703213475)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134407563855213475)
,p_name=>'P10020_DESKTOP_THEME_STYLE_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22134404481187213473)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Desktop Theme Style'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.theme_style_id',
'from apex_application_theme_styles s,',
'    apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and s.is_current = ''Yes'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DESKTOP THEME STYLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'       s.theme_style_id r',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = :app_id',
'   and t.application_id = s.application_id',
'   and t.theme_number   = s.theme_number',
'   and t.is_current     = ''Yes''',
' order by 1'))
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_theme_styles s,',
'       apex_application_themes t',
' where s.application_id = t.application_id',
'   and s.theme_number   = t.theme_number',
'   and s.application_id = :app_id'))
,p_display_when_type=>'EXISTS'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_restricted_characters=>'WEB_SAFE'
,p_inline_help_text=>'The default Theme Style applies to all users.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134408283086213477)
,p_name=>'P10020_END_USER_STYLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22134404481187213473)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End User Theme Preference'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.theme_style_by_user_pref',
'  from apex_applications a',
' where a.application_id  = :app_id'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'USER_THEME_PREFERENCE'
,p_lov=>'.'||wwv_flow_imp.id(22134408397720213477)||'.'
,p_grid_label_column_span=>0
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'If checked, end users may choose their own Theme Style using the Customize link.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22134405592988213474)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22134405487893213474)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22134406291283213474)
,p_event_id=>wwv_flow_imp.id(22134405592988213474)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22134409475560213478)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Theme Style'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10020_DESKTOP_THEME_STYLE_ID is not null then',
'    for l_theme in (select theme_number',
'                      from apex_application_themes',
'                     where application_id = :app_id',
'                       and is_current     = ''Yes'')',
'    loop',
'        apex_util.set_current_theme_style (',
'            p_theme_number   => l_theme.theme_number,',
'            p_theme_style_id => :P10020_DESKTOP_THEME_STYLE_ID',
'            );',
'    end loop;',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>22134409475560213478
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22134409885991213478)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save End User Style Preference'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_enabled boolean := case when :P10020_END_USER_STYLE = ''Yes'' then true else false end;',
'begin',
'    for l_theme in ( select theme_number',
'                       from apex_applications',
'                      where application_id  = :APP_ID )',
'    loop',
'        if l_enabled then',
'            apex_theme.enable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'        else',
'            apex_theme.disable_user_style (',
'                p_application_id => :APP_ID,',
'                p_theme_number   => l_theme.theme_number );',
'            apex_theme.clear_all_users_style(:APP_ID);',
'        end if;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Application Appearance Settings Saved.'
,p_internal_uid=>22134409885991213478
);
end;
/
prompt --application/pages/page_10030
begin
wwv_flow_imp_page.create_page(
 p_id=>10030
,p_name=>'Activity Dashboard'
,p_alias=>'ACTIVITY-DASHBOARD'
,p_page_mode=>'MODAL'
,p_step_title=>'Activity Dashboard'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(22134386240167213451)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_role=>wwv_flow_imp.id(22134384660586213450)
,p_required_patch=>wwv_flow_imp.id(22134382054080213448)
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134410177480213478)
,p_plug_name=>'Hourly Page Events'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(22134410218981213478)
,p_region_id=>wwv_flow_imp.id(22134410177480213478)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_time_axis_type=>'enabled'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(22134412312249213480)
,p_chart_id=>wwv_flow_imp.id(22134410218981213478)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with nw as (',
'    -- APEX_ACTIVITY_LOG uses dates; convert system time to local time zone.',
'    select from_tz( cast( sysdate as timestamp ), to_char( systimestamp, ''TZR'' ) ) at local as tm from dual',
'),',
'window as (',
'    select',
'         trunc(nw.tm - ((level-1)/24),''HH'') start_tm,',
'         trunc(nw.tm - ((level-2)/24),''HH'') end_tm,',
'         trunc(sysdate-((level-1)/24),''HH'') log_start_tm,',
'         trunc(sysdate-((level-2)/24),''HH'') log_end_tm',
'    from nw',
'    connect by level <= round( 24 * ( 1/24/60/60 * nvl(:P10030_TIMEFRAME,1) ) )',
')',
'select w.start_tm log_time,',
'       ( select count(*)',
'           from apex_activity_log l',
'          where l.flow_id = :app_id',
'            and l.time_stamp between w.log_start_tm and w.log_end_tm ) as value',
'from window w',
'order by 1'))
,p_max_row_count=>350
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LOG_TIME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(22134412924054213481)
,p_chart_id=>wwv_flow_imp.id(22134410218981213478)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(22134413543492213481)
,p_chart_id=>wwv_flow_imp.id(22134410218981213478)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_type=>'datetime-short'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134410330120213478)
,p_plug_name=>'Most Active Pages'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(22134410440565213478)
,p_region_id=>wwv_flow_imp.id(22134410330120213478)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(22134417311088213484)
,p_chart_id=>wwv_flow_imp.id(22134410440565213478)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.step_id||''. ''||(select page_name from apex_application_pages p where p.application_id = :app_id and page_id = x.step_id) label, ',
'        value',
'from ( select step_id,',
'              count(*) as value',
'         from apex_activity_log',
'        where flow_id = :app_id',
'          and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'          and step_id is not null',
'        group by step_id',
'        order by 2 desc',
'     ) x'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(22134418530259213484)
,p_chart_id=>wwv_flow_imp.id(22134410440565213478)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(22134417922255213484)
,p_chart_id=>wwv_flow_imp.id(22134410440565213478)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134410531019213478)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(22134410665607213478)
,p_region_id=>wwv_flow_imp.id(22134410531019213478)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(22134414861188213482)
,p_chart_id=>wwv_flow_imp.id(22134410665607213478)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') ) as label,',
'       count(*) as value',
'from apex_activity_log',
'where flow_id = :app_id',
'and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'group by nvl( userid_lc, apex_lang.message(''APEX.FEATURE.TOP_USERS.USERNAME.NOT_IDENTIFIED'') )',
'order by 2 desc'))
,p_max_row_count=>10
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(22134416059459213483)
,p_chart_id=>wwv_flow_imp.id(22134410665607213478)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(22134415442722213482)
,p_chart_id=>wwv_flow_imp.id(22134410665607213478)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(22134410729751213478)
,p_name=>'Recent Errors'
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sqlerrm    label,',
'       time_stamp value',
'  from apex_activity_log',
' where flow_id    = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'   and sqlerrm    is not null',
' order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22134419646236213486)
,p_query_column_id=>1
,p_column_alias=>'LABEL'
,p_column_display_sequence=>1
,p_column_heading=>'Label'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22134420010376213487)
,p_query_column_id=>2
,p_column_alias=>'VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'Value'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(22134410815143213478)
,p_name=>'Latest Activity'
,p_template=>4072358936313175081
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h240:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc       as username,',
'       max(time_stamp) as last_activity',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10030_TIMEFRAME )',
'   and userid_lc  is not null',
' group by userid_lc',
' order by 2 desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10030_TIMEFRAME'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No activities found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22134423110388213714)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22134423535839213714)
,p_query_column_id=>2
,p_column_alias=>'LAST_ACTIVITY'
,p_column_display_sequence=>2
,p_column_heading=>'Last Activity'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134410924760213478)
,p_plug_name=>'Filters'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134453445849213930)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22134410177480213478)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134453815992213930)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22134410330120213478)
,p_button_name=>'VIEW_ACTIVITY_DETAILS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10034:&APP_SESSION.::&DEBUG.:RP,10034::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134454262835213931)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22134410531019213478)
,p_button_name=>'VIEW_ACTIVITY_BY_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10031:&APP_SESSION.::&DEBUG.:RP,10031::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134454690062213931)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22134410729751213478)
,p_button_name=>'VIEW_RECENT_ERRORS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'View Details'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10032:&APP_SESSION.::&DEBUG.:RP,10032::'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134411015229213478)
,p_name=>'P10030_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22134410924760213478)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22134411168044213478)
,p_name=>'Change Filters'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10030_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22134456201937213932)
,p_event_id=>wwv_flow_imp.id(22134411168044213478)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22134410177480213478)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22134456796567213933)
,p_event_id=>wwv_flow_imp.id(22134411168044213478)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22134410531019213478)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22134457274646213933)
,p_event_id=>wwv_flow_imp.id(22134411168044213478)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22134410330120213478)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22134457762166213933)
,p_event_id=>wwv_flow_imp.id(22134411168044213478)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22134410729751213478)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22134458205033213934)
,p_event_id=>wwv_flow_imp.id(22134411168044213478)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22134410815143213478)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_10031
begin
wwv_flow_imp_page.create_page(
 p_id=>10031
,p_name=>'Top Users'
,p_alias=>'TOP-USERS'
,p_page_mode=>'MODAL'
,p_step_title=>'Top Users'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(22134386240167213451)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hour-graph { display: table; width: 100%; }',
'span.hour { display: table-cell; padding: 0; font-size: 11px; text-align: center; min-width: 32px; }',
'span.hour-label { opacity: 0.5; }',
'span.hour-value { display: block; }',
'span.hour { background-color: var(--ut-palette-success); color:  var(--ut-palette-success-contrast); }',
'span.hour.is-null { background-color: var(--ut-component-highlight-background-color); color: var(--ut-component-text-default-color); }',
'span.hour.is-over1k { background-color: var(--ut-palette-primary); color:  var(--ut-palette-primary-contrast); }'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(22134384660586213450)
,p_required_patch=>wwv_flow_imp.id(22134382054080213448)
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this report and chart to see the users with the most page views for the specified timeframe.</p>',
'<p>Select the reporting timeframe (Default = 1 day) and choose between the report and chart icons at the top of the page.</p>',
'<p>For the interactive report, use the search field, or select the <strong>User</strong> column heading, to select a specific user. You can perform numerous functions by clicking the <strong>Actions</strong> button, such as columns displayed / hidden'
||', rows per page, filter, and so forth. Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134491000727213967)
,p_plug_name=>'Top Users'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select the_user,',
'    ''<div class="hour-graph">''||',
'        ''<span class="hour''|| case when h00 = 0 then '' is-null'' when h00 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 0</span> <span class="hour-value">''|| ',
'        case when h00 > 999 then to_char((h00/1000),''99999999D0'') ||''k'' else to_char(h00) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h01 = 0 then '' is-null'' when h01 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 1</span> <span class="hour-value">''|| ',
'        case when h01 > 999 then to_char((h01/1000),''99999999D0'') ||''k'' else to_char(h01) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h02 = 0 then '' is-null'' when h02 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 2</span> <span class="hour-value">''|| ',
'        case when h02 > 999 then to_char((h02/1000),''99999999D0'') ||''k'' else to_char(h02) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h03 = 0 then '' is-null'' when h03 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 3</span> <span class="hour-value">''|| ',
'        case when h03 > 999 then to_char((h03/1000),''99999999D0'') ||''k'' else to_char(h03) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h04 = 0 then '' is-null'' when h04 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 4</span> <span class="hour-value">''|| ',
'        case when h04 > 999 then to_char((h04/1000),''99999999D0'') ||''k'' else to_char(h04) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h05 = 0 then '' is-null'' when h05 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 5</span> <span class="hour-value">''|| ',
'        case when h05 > 999 then to_char((h05/1000),''99999999D0'') ||''k'' else to_char(h05) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h06 = 0 then '' is-null'' when h06 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 6</span> <span class="hour-value">''|| ',
'        case when h06 > 999 then to_char((h06/1000),''99999999D0'') ||''k'' else to_char(h06) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h07 = 0 then '' is-null'' when h07 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 7</span> <span class="hour-value">''|| ',
'        case when h07 > 999 then to_char((h07/1000),''99999999D0'') ||''k'' else to_char(h07) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h08 = 0 then '' is-null'' when h08 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 8</span> <span class="hour-value">''|| ',
'        case when h08 > 999 then to_char((h08/1000),''99999999D0'') ||''k'' else to_char(h08) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h09 = 0 then '' is-null'' when h09 > 999 then '' is-over1k'' end ||''"><span class="hour-label"> 9</span> <span class="hour-value">''|| ',
'        case when h09 > 999 then to_char((h09/1000),''99999999D0'') ||''k'' else to_char(h09) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h10 = 0 then '' is-null'' when h10 > 999 then '' is-over1k'' end ||''"><span class="hour-label">10</span> <span class="hour-value">''|| ',
'        case when h10 > 999 then to_char((h10/1000),''99999999D0'') ||''k'' else to_char(h10) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h11 = 0 then '' is-null'' when h11 > 999 then '' is-over1k'' end ||''"><span class="hour-label">11</span> <span class="hour-value">''|| ',
'        case when h11 > 999 then to_char((h11/1000),''99999999D0'') ||''k'' else to_char(h11) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h12 = 0 then '' is-null'' when h12 > 999 then '' is-over1k'' end ||''"><span class="hour-label">12</span> <span class="hour-value">''|| ',
'        case when h12 > 999 then to_char((h12/1000),''99999999D0'') ||''k'' else to_char(h12) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h13 = 0 then '' is-null'' when h13 > 999 then '' is-over1k'' end ||''"><span class="hour-label">13</span> <span class="hour-value">''|| ',
'        case when h13 > 999 then to_char((h13/1000),''99999999D0'') ||''k'' else to_char(h13) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h14 = 0 then '' is-null'' when h14 > 999 then '' is-over1k'' end ||''"><span class="hour-label">14</span> <span class="hour-value">''|| ',
'        case when h14 > 999 then to_char((h14/1000),''99999999D0'') ||''k'' else to_char(h14) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h15 = 0 then '' is-null'' when h15 > 999 then '' is-over1k'' end ||''"><span class="hour-label">15</span> <span class="hour-value">''|| ',
'        case when h15 > 999 then to_char((h15/1000),''99999999D0'') ||''k'' else to_char(h15) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h16 = 0 then '' is-null'' when h16 > 999 then '' is-over1k'' end ||''"><span class="hour-label">16</span> <span class="hour-value">''|| ',
'        case when h16 > 999 then to_char((h16/1000),''99999999D0'') ||''k'' else to_char(h16) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h17 = 0 then '' is-null'' when h17 > 999 then '' is-over1k'' end ||''"><span class="hour-label">17</span> <span class="hour-value">''|| ',
'        case when h17 > 999 then to_char((h17/1000),''99999999D0'') ||''k'' else to_char(h17) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h18 = 0 then '' is-null'' when h18 > 999 then '' is-over1k'' end ||''"><span class="hour-label">18</span> <span class="hour-value">''|| ',
'        case when h18 > 999 then to_char((h18/1000),''99999999D0'') ||''k'' else to_char(h18) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h19 = 0 then '' is-null'' when h19 > 999 then '' is-over1k'' end ||''"><span class="hour-label">19</span> <span class="hour-value">''|| ',
'        case when h19 > 999 then to_char((h19/1000),''99999999D0'') ||''k'' else to_char(h19) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h20 = 0 then '' is-null'' when h20 > 999 then '' is-over1k'' end ||''"><span class="hour-label">20</span> <span class="hour-value">''|| ',
'        case when h20 > 999 then to_char((h20/1000),''99999999D0'') ||''k'' else to_char(h20) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h21 = 0 then '' is-null'' when h21 > 999 then '' is-over1k'' end ||''"><span class="hour-label">21</span> <span class="hour-value">''|| ',
'        case when h21 > 999 then to_char((h21/1000),''99999999D0'') ||''k'' else to_char(h21) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h22 = 0 then '' is-null'' when h22 > 999 then '' is-over1k'' end ||''"><span class="hour-label">22</span> <span class="hour-value">''|| ',
'        case when h22 > 999 then to_char((h22/1000),''99999999D0'') ||''k'' else to_char(h22) end ||''</span></span>''||',
'        ''<span class="hour''|| case when h23 = 0 then '' is-null'' when h23 > 999 then '' is-over1k'' end ||''"><span class="hour-label">23</span> <span class="hour-value">''|| ',
'        case when h23 > 999 then to_char((h23/1000),''99999999D0'') ||''k'' else to_char(h23) end ||''</span></span>''||',
'        ''</div>'' hours,',
'        page_events,',
'    median_elapsed,',
'    rows_fetched,',
'    ir_searches,',
'    errors,',
'    most_recent',
'    from (  ',
'    select userid_lc                    as the_user,',
'        count(*)                        as page_events,',
'        median(elap)                    as median_elapsed,',
'        sum(num_rows)                   as rows_fetched,',
'        sum(decode(ir_search,null,0,1)) as ir_searches,',
'        sum(decode(sqlerrm,null,0,1))   as errors,',
'        max(time_stamp)                 as most_recent,',
'        sum(decode(to_char(time_stamp,''HH24''),0,1,0)) h00,',
'        sum(decode(to_char(time_stamp,''HH24''),1,1,0)) h01,',
'        sum(decode(to_char(time_stamp,''HH24''),2,1,0)) h02,',
'        sum(decode(to_char(time_stamp,''HH24''),3,1,0)) h03,',
'        sum(decode(to_char(time_stamp,''HH24''),4,1,0)) h04,',
'        sum(decode(to_char(time_stamp,''HH24''),5,1,0)) h05,',
'        sum(decode(to_char(time_stamp,''HH24''),6,1,0)) h06,',
'        sum(decode(to_char(time_stamp,''HH24''),7,1,0)) h07,',
'        sum(decode(to_char(time_stamp,''HH24''),8,1,0)) h08,',
'        sum(decode(to_char(time_stamp,''HH24''),9,1,0)) h09,',
'        sum(decode(to_char(time_stamp,''HH24''),10,1,0)) h10,',
'        sum(decode(to_char(time_stamp,''HH24''),11,1,0)) h11,',
'        sum(decode(to_char(time_stamp,''HH24''),12,1,0)) h12,',
'        sum(decode(to_char(time_stamp,''HH24''),13,1,0)) h13,',
'        sum(decode(to_char(time_stamp,''HH24''),14,1,0)) h14,',
'        sum(decode(to_char(time_stamp,''HH24''),15,1,0)) h15,',
'        sum(decode(to_char(time_stamp,''HH24''),16,1,0)) h16,',
'        sum(decode(to_char(time_stamp,''HH24''),17,1,0)) h17,',
'        sum(decode(to_char(time_stamp,''HH24''),18,1,0)) h18,',
'        sum(decode(to_char(time_stamp,''HH24''),19,1,0)) h19,',
'        sum(decode(to_char(time_stamp,''HH24''),20,1,0)) h20,',
'        sum(decode(to_char(time_stamp,''HH24''),21,1,0)) h21,',
'        sum(decode(to_char(time_stamp,''HH24''),22,1,0)) h22,',
'        sum(decode(to_char(time_stamp,''HH24''),23,1,0)) h23',
'    from apex_activity_log l',
'    where flow_id = :APP_ID',
'        and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'        and userid is not null',
'    group by userid_lc) x'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10031_TIMEFRAME'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10031_VIEW_AS'
,p_plug_display_when_cond2=>'REPORT'
,p_prn_page_header=>'Top Users'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(22134492122794213968)
,p_name=>'Top Users'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'KAHELATA@GMAIL.COM'
,p_internal_uid=>22134492122794213968
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134492854019213971)
,p_db_column_name=>'THE_USER'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134493296488213972)
,p_db_column_name=>'HOURS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Activity by Hour'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134493616216213972)
,p_db_column_name=>'PAGE_EVENTS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Page Events'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134494068760213973)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134494487900213973)
,p_db_column_name=>'ROWS_FETCHED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Rows Fetched'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134494858072213974)
,p_db_column_name=>'IR_SEARCHES'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'IR Search'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134495263173213974)
,p_db_column_name=>'ERRORS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134495607879213975)
,p_db_column_name=>'MOST_RECENT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Most_Recent'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(22134498741104213979)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'221344988'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'THE_USER:HOURS:PAGE_EVENTS'
,p_sort_column_1=>'PAGE_EVENTS'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'MOST_RECENT'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134491122149213967)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134491346327213967)
,p_plug_name=>'Top Users Chart'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P10031_VIEW_AS'
,p_plug_display_when_cond2=>'CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(22134491493065213967)
,p_region_id=>wwv_flow_imp.id(22134491346327213967)
,p_chart_type=>'donut'
,p_height=>'600'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>.02
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){ ',
'',
'    this.pieSliceLabel = function(dataContext) {',
'        var series_name,',
'            percent = Math.round(dataContext.value/dataContext.totalValue*100);',
'        ',
'        if ( dataContext.seriesData ) {',
'            series_name = dataContext.seriesData.name;',
'        } else {',
'            series_name = ''Other'';',
'        }',
'        return series_name + " " + percent + "% ( " + dataContext.value + " )";',
'    }',
'    ',
'    // Set chart initialization options ',
'    options.dataLabel = pieSliceLabel; ',
'    return options; ',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(22134502394346213984)
,p_chart_id=>wwv_flow_imp.id(22134491493065213967)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select userid_lc as userid,',
'       count(*) as page_views',
'  from apex_activity_log',
' where flow_id     = :app_id',
'   and time_stamp >= sysdate - ( 1/24/60/60 * :P10031_TIMEFRAME )',
'   and userid     is not null',
' group by userid_lc',
' order by 2'))
,p_ajax_items_to_submit=>'P10031_TIMEFRAME'
,p_items_value_column_name=>'PAGE_VIEWS'
,p_items_label_column_name=>'USERID'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134499699444213980)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(22134491000727213967)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134491543596213967)
,p_name=>'P10031_VIEW_AS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22134491122149213967)
,p_prompt=>'View As'
,p_source=>'REPORT'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'VIEW_AS_REPORT_CHART'
,p_lov=>'.'||wwv_flow_imp.id(22134502837646213984)||'.'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'hide_radio_buttons', 'N',
  'number_of_columns', '2',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134491750270213967)
,p_name=>'P10031_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22134491122149213967)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22134491289622213967)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10031_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22134500943395213981)
,p_event_id=>wwv_flow_imp.id(22134491289622213967)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22134491000727213967)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22134504358378213985)
,p_event_id=>wwv_flow_imp.id(22134491289622213967)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22134491000727213967)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_10032
begin
wwv_flow_imp_page.create_page(
 p_id=>10032
,p_name=>'Application Error Log'
,p_alias=>'APPLICATION-ERROR-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Error Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(22134386240167213451)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(22134384660586213450)
,p_required_patch=>wwv_flow_imp.id(22134382054080213448)
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of all unexpected errors logged by this application.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back t'
||'o the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134484077187213960)
,p_plug_name=>'Application Error Log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id,',
'       userid,',
'       time_stamp err_time,',
'       sqlerrm,',
'       sqlerrm_component_type,',
'       sqlerrm_component_name',
'  from apex_activity_log',
' where flow_id = :app_id',
'   and sqlerrm is not null'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Application Error Log'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(22134484604681213961)
,p_name=>'Application Error Log'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'KAHELATA@GMAIL.COM'
,p_internal_uid=>22134484604681213961
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134485347455213962)
,p_db_column_name=>'STEP_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134485778919213963)
,p_db_column_name=>'USERID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134486134209213963)
,p_db_column_name=>'ERR_TIME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Err Time'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134486522573213963)
,p_db_column_name=>'SQLERRM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134486949826213964)
,p_db_column_name=>'SQLERRM_COMPONENT_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Context'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134487385633213964)
,p_db_column_name=>'SQLERRM_COMPONENT_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(22134489898790213966)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'221344899'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STEP_ID:USERID:ERR_TIME:SQLERRM:SQLERRM_COMPONENT_TYPE:SQLERRM_COMPONENT_NAME:'
,p_sort_column_1=>'ERROR_TIME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134490791795213967)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(22134484077187213960)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_10033
begin
wwv_flow_imp_page.create_page(
 p_id=>10033
,p_name=>'Page Performance'
,p_alias=>'PAGE-PERFORMANCE'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Performance'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(22134386240167213451)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(22134384660586213450)
,p_required_patch=>wwv_flow_imp.id(22134382054080213448)
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the page performance and popularity. The report is ordered by <strong>Weighted Performance</strong> which is calculated by multiplying the Median Elapsed time and number of Page Views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134469907291213945)
,p_plug_name=>'Page Performance'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select step_id page,',
'    (   select page_name',
'        from apex_application_pages p',
'        where p.page_id = l.step_id',
'            and p.application_id = :app_id ) page_name,',
'    median(elap)                   median_elapsed,',
'    count(*) * median(elap)        weighted_performance,',
'    sum(decode(sqlerrm,null,0,1))  errors,',
'    count(distinct userid)         distinct_users,',
'    count(distinct session_id)     application_sessions,',
'    count(*)                       page_views,',
'    max(elap)                      max_elapsed,',
'    sum(nvl(num_rows,0))           total_rows,',
'    sum(decode(page_mode,''P'',1,0)) partial_page_views,',
'    sum(decode(page_mode,''D'',1,0)) full_page_views,',
'    min(elap)                      min_elapsed,',
'    avg(elap)                      avg_elapsed',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10033_TIMEFRAME )',
'    and userid is not null',
'group by step_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10033_TIMEFRAME'
,p_prn_page_header=>'Page Performance'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(22134470542031213945)
,p_name=>'Page Performance'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'KAHELATA@GMAIL.COM'
,p_internal_uid=>22134470542031213945
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134471229227213947)
,p_db_column_name=>'PAGE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134471663472213948)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134472071439213948)
,p_db_column_name=>'MEDIAN_ELAPSED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Median Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134472455482213948)
,p_db_column_name=>'WEIGHTED_PERFORMANCE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Weighted Performance'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D99'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134472859013213949)
,p_db_column_name=>'ERRORS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Errors'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134473221202213949)
,p_db_column_name=>'DISTINCT_USERS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Distinct Users'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134473644819213949)
,p_db_column_name=>'APPLICATION_SESSIONS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Application Sessions'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134474005605213950)
,p_db_column_name=>'PAGE_VIEWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134474463284213950)
,p_db_column_name=>'MAX_ELAPSED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Max Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134474889339213950)
,p_db_column_name=>'TOTAL_ROWS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Total Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134475240798213951)
,p_db_column_name=>'PARTIAL_PAGE_VIEWS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Partial Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134475686640213951)
,p_db_column_name=>'FULL_PAGE_VIEWS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Full Page Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134476044448213951)
,p_db_column_name=>'MIN_ELAPSED'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Min Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134476496851213952)
,p_db_column_name=>'AVG_ELAPSED'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Avg Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D9999'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(22134481395815213956)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'221344814'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE:PAGE_NAME:MEDIAN_ELAPSED:WEIGHTED_PERFORMANCE:ERRORS:DISTINCT_USERS:APPLICATION_SESSIONS:PAGE_VIEWS'
,p_sort_column_1=>'WEIGHTED_PERFORMANCE'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PAGE_VIEWS'
,p_sort_direction_2=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134470073429213945)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134482269709213957)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(22134469907291213945)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134469847462213945)
,p_name=>'P10033_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22134470073429213945)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22134470115266213945)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10033_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22134483508676213959)
,p_event_id=>wwv_flow_imp.id(22134470115266213945)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22134469907291213945)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_10034
begin
wwv_flow_imp_page.create_page(
 p_id=>10034
,p_name=>'Page Views'
,p_alias=>'PAGE-VIEWS'
,p_page_mode=>'MODAL'
,p_step_title=>'Page Views'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(22134386240167213451)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(22134384660586213450)
,p_required_patch=>wwv_flow_imp.id(22134382054080213448)
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the most recent page views.</p>',
'<p>Select the reporting timeframe (Default = 1 day) at the top of the page as necessary.<br>',
'Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features. Click the <strong>Reset</strong> button to reset the interactive report back to t'
||'he default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134458700953213934)
,p_plug_name=>'Page Views'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    step_id||''. ''||(select page_name',
'                    from apex_application_pages p',
'                    where p.page_id = l.step_id',
'                        and p.application_id = :APP_ID) page_name,',
'    userid_lc     user_id,',
'    time_stamp    timestamp,',
'    elap          elapsed,',
'    step_id       page,',
'    decode(page_mode,''P'',''Partial'',''D'',''Full'',page_mode) page_mode,',
'    component_name,',
'    num_rows,',
'    ir_search,',
'    sqlerrm  error',
'from apex_activity_log l',
'where flow_id = :app_id',
'    and time_stamp >= sysdate - ( 1/24/60/60 * :P10034_TIMEFRAME )',
'    and userid is not null',
'    and step_id is not null',
'order by time_stamp desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10034_TIMEFRAME'
,p_prn_page_header=>'Page Views'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(22134459337922213934)
,p_name=>'Page Views'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'KAHELATA@GMAIL.COM'
,p_internal_uid=>22134459337922213934
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134459920735213935)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Page Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134460368129213936)
,p_db_column_name=>'USER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134460708147213936)
,p_db_column_name=>'TIMESTAMP'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Timestamp'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134461174728213936)
,p_db_column_name=>'ELAPSED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Elapsed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990D0000'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134461560939213937)
,p_db_column_name=>'PAGE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134461926292213937)
,p_db_column_name=>'PAGE_MODE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134462361822213937)
,p_db_column_name=>'COMPONENT_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Component Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134462712924213937)
,p_db_column_name=>'NUM_ROWS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Num Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134463160042213938)
,p_db_column_name=>'IR_SEARCH'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'IR Search'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134463558640213938)
,p_db_column_name=>'ERROR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(22134467294279213941)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'221344673'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:USER_ID:TIMESTAMP:ELAPSED:PAGE_MODE'
,p_sort_column_1=>'TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134458838316213934)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-ButtonRegion--noUI:t-Form--large'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134468175146213942)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(22134458700953213934)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134458616362213934)
,p_name=>'P10034_TIMEFRAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22134458838316213934)
,p_prompt=>'Timeframe'
,p_source=>'900'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME (4 WEEKS)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select disp,',
'       val as seconds',
'  from table( apex_util.get_timeframe_lov_data )',
' order by insert_order'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22134458974724213934)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10034_TIMEFRAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22134469412944213945)
,p_event_id=>wwv_flow_imp.id(22134458974724213934)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22134458700953213934)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_10035
begin
wwv_flow_imp_page.create_page(
 p_id=>10035
,p_name=>'Automations Log'
,p_alias=>'AUTOMATIONS-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Automations Log'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(22134386240167213451)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(22134384660586213450)
,p_required_patch=>wwv_flow_imp.id(22134382054080213448)
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page provides an interactive report of the automations log.</p>',
'<p>Review logged information about previous automation executions. The log contains start and end timestamps as well as details about processed rows (successful and with errors). Drill down into Messages to see individual messages for processed rows.'
||'</p>',
''))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134504854079213986)
,p_plug_name=>'Automations Log'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.id,',
'       l.start_timestamp,',
'       a.name automation_name,',
'       l.status,',
'       l.successful_row_count,',
'       l.error_row_count,',
'       (select count(1) from apex_automation_msg_log m where m.automation_log_id = l.id) msg_count,',
'       l.is_job,',
'       l.end_timestamp',
'  from apex_appl_automations a, apex_automation_log l',
' where a.automation_id = l.automation_id',
' and l.application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Automations Log'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(22134505448953213986)
,p_name=>'Automations Log'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'KAHELATA@GMAIL.COM'
,p_internal_uid=>22134505448953213986
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134506147232213987)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134506553875213988)
,p_db_column_name=>'START_TIMESTAMP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Started'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134506940447213988)
,p_db_column_name=>'AUTOMATION_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Automation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134507379764213989)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134507715276213989)
,p_db_column_name=>'SUCCESSFUL_ROW_COUNT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Successful Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134508174075213989)
,p_db_column_name=>'ERROR_ROW_COUNT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Error Rows'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134508519471213989)
,p_db_column_name=>'MSG_COUNT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Message'
,p_column_link=>'f?p=&APP_ID.:10036:&APP_SESSION.::&DEBUG.:RP,10036:P10036_LOG_ID:#ID#'
,p_column_linktext=>'#MSG_COUNT#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134508959549213990)
,p_db_column_name=>'IS_JOB'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Scheduled'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134509329752213990)
,p_db_column_name=>'END_TIMESTAMP'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Ended'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(22134512725160213993)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'221345128'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'START_TIMESTAMP:AUTOMATION_NAME:STATUS:SUCCESSFUL_ROW_COUNT:ERROR_ROW_COUNT:MSG_COUNT'
,p_sort_column_1=>'START_TIMESTAMP'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134513675406213994)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(22134504854079213986)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/pages/page_10036
begin
wwv_flow_imp_page.create_page(
 p_id=>10036
,p_name=>'Log Messages'
,p_alias=>'LOG-MESSAGES'
,p_page_mode=>'MODAL'
,p_step_title=>'Log Messages'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(22134386240167213451)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(22134384660586213450)
,p_required_patch=>wwv_flow_imp.id(22134382054080213448)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134514259663213994)
,p_plug_name=>'Automation Execution'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(22134516676520213996)
,p_name=>'Messages'
,p_template=>2100526641005906379
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select message_timestamp,',
'       message,',
'       message_type,',
'       pk_value',
'  from apex_automation_msg_log',
' where automation_log_id = :P10036_LOG_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>50
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22134517077218213999)
,p_query_column_id=>1
,p_column_alias=>'MESSAGE_TIMESTAMP'
,p_column_display_sequence=>1
,p_column_heading=>'Timestamp'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22134517452393213999)
,p_query_column_id=>2
,p_column_alias=>'MESSAGE'
,p_column_display_sequence=>2
,p_column_heading=>'Message'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22134517847369213999)
,p_query_column_id=>3
,p_column_alias=>'MESSAGE_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Message Type'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22134518271311214000)
,p_query_column_id=>4
,p_column_alias=>'PK_VALUE'
,p_column_display_sequence=>4
,p_column_heading=>'Primary Key Value'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134514644634213995)
,p_name=>'P10036_LOG_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22134514259663213994)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134515072878213995)
,p_name=>'P10036_AUTOMATION_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22134514259663213994)
,p_prompt=>'Automation'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134515450189213995)
,p_name=>'P10036_START_TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22134514259663213994)
,p_prompt=>'Started'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134515855281213996)
,p_name=>'P10036_STATUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(22134514259663213994)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22134516202721213996)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Log Detail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select automation_name,',
'       start_timestamp,',
'       status',
'  into :P10036_AUTOMATION_NAME,',
'       :P10036_START_TIMESTAMP,',
'       :P10036_STATUS',
'  from apex_automation_log',
' where id = :P10036_LOG_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>22134516202721213996
);
end;
/
prompt --application/pages/page_10040
begin
wwv_flow_imp_page.create_page(
 p_id=>10040
,p_name=>'Configure Access Control'
,p_alias=>'CONFIGURE-ACCESS-CONTROL'
,p_page_mode=>'MODAL'
,p_step_title=>'Configure Access Control'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(22134386240167213451)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(22134384660586213450)
,p_required_patch=>wwv_flow_imp.id(22134381993914213448)
,p_protection_level=>'U'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select the appropriate choice for any authenticated users.<br> ',
'Selecting <strong>No</strong> makes the application more secure as only specified users can access the application. ',
'However, if your application has a large user community then maintaining users may be onerous, and you may prefer to choose <strong>Yes</strong> and only enter application Administrators, and possibly Contributors.<br>',
'If you select <strong>Yes</strong> then you must also select how users not included in the users list are treated.</p>',
'<p>Select between requiring email addresses and any alphanumeric value for Usernames.<br>',
'Generally, you should set this setting to <strong>E-mail Address</strong> if your application uses (or will be configured to use) a centralized authentication scheme such as Oracle Access Manager, or SSO.</p>',
'<p><em><strong>Note:</strong> This application supports the following 3 access levels: Reader, Contributor, and Administrator.',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'</em></p>'))
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134520472853214002)
,p_plug_name=>'Access Control Configuration'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134520528451214002)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134521861714214004)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(22134520528451214002)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134522187570214004)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22134520528451214002)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(22134523563736214005)
,p_branch_name=>'Branch to Admin Page'
,p_branch_action=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134523862050214005)
,p_name=>'P10040_ALLOW_OTHER_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22134520472853214002)
,p_prompt=>'Any authenticated user may access this application'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_app_setting.get_value( p_name => ''ACCESS_CONTROL_SCOPE'' ) = ''ACL_ONLY'' then',
'    return ''N'';',
'else',
'    return ''Y'';',
'end if;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_YES_NO'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'Choose <strong>No</strong> if all users are defined in the access control list. Choose <strong>Yes</strong> if authenticated users not in the access control list may also use this application.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22134522240537214004)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22134522187570214004)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22134522931913214005)
,p_event_id=>wwv_flow_imp.id(22134522240537214004)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22134524284630214006)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Access Control'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P10040_ALLOW_OTHER_USERS = ''Y'' then',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ALL_USERS'');',
'    else',
'        apex_app_setting.set_value (',
'            p_name  => ''ACCESS_CONTROL_SCOPE'',',
'            p_value => ''ACL_ONLY'');',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Access Control settings saved.'
,p_internal_uid=>22134524284630214006
);
end;
/
prompt --application/pages/page_10041
begin
wwv_flow_imp_page.create_page(
 p_id=>10041
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(22134386240167213451)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(22134384660586213450)
,p_required_patch=>wwv_flow_imp.id(22134381993914213448)
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows a report of the application users and the access level granted.</p>',
'<p>Click on the column headings to sort and filter data, or click on the <strong>Actions</strong> button to customize column display and many additional advanced features.<br>',
'Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>',
'<p>Click the edit icon (yellow pencil) to edit the user details and access level, or to delete the user.</p>',
'<p>Click <strong>Add User</strong>, at the top of the report, to add a new user and their access level.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134524626539214006)
,p_plug_name=>unistr('Dost\0119p u\017Cytkownik\00F3w')
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'   user_name_lc USERNAME,',
'   role_names ACCESS_ROLE',
'from APEX_APPL_ACL_USERS',
'where APPLICATION_ID = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Manage User Access'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(22134525407396214006)
,p_name=>'Manage User Access'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:RP:P10042_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'KAHELATA@GMAIL.COM'
,p_internal_uid=>22134525407396214006
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134526188690214008)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134526584263214009)
,p_db_column_name=>'USERNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134526988529214009)
,p_db_column_name=>'ACCESS_ROLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Roles'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(22134528565461214011)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'221345286'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USERNAME:ACCESS_ROLE'
,p_sort_column_2=>'USERNAME'
,p_sort_direction_2=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134529464036214011)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(22134524626539214006)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Zresetuj'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134529859607214012)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(22134524626539214006)
,p_button_name=>'ADD_MULTIPLE_USERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>unistr('Dodaj wi\0119cej u\017Cytkownik\00F3w')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10043:&APP_SESSION.::&DEBUG.:10043::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134530251063214012)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(22134524626539214006)
,p_button_name=>'ADD_USER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Dodaj u\017Cytkownika')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10042:&APP_SESSION.::&DEBUG.:10042::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22134524737347214006)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(22134524626539214006)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22134530833465214012)
,p_event_id=>wwv_flow_imp.id(22134524737347214006)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22134524626539214006)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_10042
begin
wwv_flow_imp_page.create_page(
 p_id=>10042
,p_name=>'Manage User Access'
,p_alias=>'MANAGE-USER-ACCESS1'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage User Access'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(22134386240167213451)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(22134384660586213450)
,p_required_patch=>wwv_flow_imp.id(22134381993914213448)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this form to enter users, their email address and set their access level. ',
'The settings defined under <em>Configure Access Control</em> will determine whether the username must be their email address or can be any alphanumeric entry.</p>',
'<p>This application supports the following 3 access levels: Reader, Contributor, and Administrator.</p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create, edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>, in addition to Contributors capability, can also perform configuration of the application by accessing the Administration section of the application.</li>',
'</ul>',
'<p>When editing an existing user you can lock their account which will prevent them from accessing the application.</p>',
'<p><em><strong>Note:</strong>   If using Oracle APEX accounts then users entered here must also be defined as end users by a Workspace Administrator, who can also set their password.</em></p>'))
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134531304845214013)
,p_plug_name=>'Form on Manage User Access'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'APEX_APPL_ACL_USERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134531410765214013)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134534277746214015)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(22134531410765214013)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134534654445214015)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(22134531410765214013)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add User'
,p_button_position=>'NEXT'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134532496102214014)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22134531410765214013)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134533852912214015)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(22134531410765214013)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10042_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134534950783214016)
,p_name=>'P10042_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22134531304845214013)
,p_item_source_plug_id=>wwv_flow_imp.id(22134531304845214013)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134535313028214016)
,p_name=>'P10042_APPLICATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22134531304845214013)
,p_item_source_plug_id=>wwv_flow_imp.id(22134531304845214013)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&APP_ID.'
,p_source=>'APPLICATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134535713671214016)
,p_name=>'P10042_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22134531304845214013)
,p_item_source_plug_id=>wwv_flow_imp.id(22134531304845214013)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_read_only_when=>'P10042_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134536188541214017)
,p_name=>'P10042_ROLE_IDS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(22134531304845214013)
,p_item_source_plug_id=>wwv_flow_imp.id(22134531304845214013)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Roles'
,p_source=>'ROLE_IDS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When Access Control is enabled, Administrators have the ability to restrict access to certain application features for authenticated users. This application supports the following 3 roles: Reader, Contributor, and Administrator.<p>',
'<ul>',
'  <li><strong>Readers</strong> have read-only access to all information and can also view reports.</li>',
'  <li><strong>Contributors</strong> can create,edit and delete information and view reports.</li>',
'  <li><strong>Administrators</strong>,in addition to Contributors capability,can also perform configuration of the application.</li>',
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(22134537470579214019)
,p_validation_name=>'Cannot remove yourself from administrator'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10042_USER_NAME = :APP_USER and',
'    apex_acl.is_role_removed_from_user (',
'        p_application_id => :APP_ID,',
'        p_user_name      => :APP_USER,',
'        p_role_static_id => ''ADMINISTRATOR'',',
'        p_role_ids       => apex_string.split_numbers(',
'                                p_str => case when :REQUEST = ''DELETE'' then',
'                                             null',
'                                         else',
'                                             :P10042_ROLE_IDS',
'                                         end,',
'                                p_sep => '':'') ) then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You cannot remove administrator role from yourself.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22134532516264214014)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22134532496102214014)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22134533242900214014)
,p_event_id=>wwv_flow_imp.id(22134532516264214014)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22134537711710214019)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(22134531304845214013)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Manage User Access'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>22134537711710214019
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22134538177845214019)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(22134531304845214013)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Manage User Access'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_attribute_08=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>22134538177845214019
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22134538547513214019)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>22134538547513214019
);
end;
/
prompt --application/pages/page_10043
begin
wwv_flow_imp_page.create_page(
 p_id=>10043
,p_name=>'Add Multiple Users - Step 1'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-1'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(22134386240167213451)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(22134384660586213450)
,p_required_patch=>wwv_flow_imp.id(22134381993914213448)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134538918364214020)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134539014313214020)
,p_plug_name=>'Wizard Container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134539170751214020)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22134538918364214020)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134541149723214022)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22134538918364214020)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(22134542478653214022)
,p_branch_action=>'f?p=&APP_ID.:10044:&APP_SESSION.::&DEBUG.:RP,10044::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(22134539170751214020)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134542880656214023)
,p_name=>'P10043_ROLE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22134539014313214020)
,p_prompt=>'Roles'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'ACCESS_ROLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select role_name d, role_id r',
'from APEX_APPL_ACL_ROLES where application_id = :APP_ID ',
'order by 1'))
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134543292664214023)
,p_name=>'P10043_PRELIM_USERS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22134539014313214020)
,p_prompt=>'Usernames'
,p_placeholder=>'Enter usernames here'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_inline_help_text=>'Enter usernames separated by commas, semicolons, or whitespace. Existing or duplicate usernames will automatically be ignored.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134543655248214023)
,p_name=>'P10043_USERNAME_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(22134539014313214020)
,p_prompt=>'Username Format'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EMAIL_USERNAME_FORMAT'
,p_lov=>'.'||wwv_flow_imp.id(22134543735522214023)||'.'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22134541292910214022)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22134541149723214022)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22134541911400214022)
,p_event_id=>wwv_flow_imp.id(22134541292910214022)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22134544772804214024)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_line      varchar2(32767);',
'    l_emails    apex_t_varchar2;',
'    l_username  varchar2(4000);',
'    l_at        number;',
'    l_dot       number;',
'    l_valid     boolean := true;',
'    l_domain    varchar2(4000);',
'begin',
'    -- create collections',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.create_or_truncate_collection(''ACL_BULK_USER_VALID'');',
'',
'    -- replace delimiting characters with commas',
'    l_line := :P10043_PRELIM_USERS;',
'    l_line := replace(l_line, chr(10), '' '');',
'    l_line := replace(l_line, chr(13), '' '');',
'    l_line := replace(l_line, chr(9),  '' '');',
'    l_line := replace(l_line, ''<'', '' '');',
'    l_line := replace(l_line, ''>'', '' '');',
'    l_line := replace(l_line, '';'', '' '');',
'    l_line := replace(l_line, '':'', '' '');',
'    l_line := replace(l_line, ''('', '' '');',
'    l_line := replace(l_line, '')'', '' '');',
'    l_line := replace(l_line, '' '', '','');',
'',
'    -- get one comma separated line of emails',
'    for j in 1 .. 1000 loop',
'        if instr(l_line, '',,'') > 0 then',
'            l_line := replace(l_line, '',,'', '','');',
'        else',
'            exit;',
'        end if;',
'    end loop;',
'',
'    -- get an array of emails',
'    l_emails := apex_string.split(l_line, '','');',
'',
'    -- add emails to a collection',
'    l_username := null;',
'    l_domain   := null;',
'    l_at       := 0;',
'    l_dot      := 0;',
'    for j in 1..l_emails.count loop',
'        l_valid    := true;',
'        l_username := upper(trim(l_emails(j)));',
'        l_username := trim(both ''.'' from l_username);',
'        l_username := replace(l_username, '' '', null);',
'        l_username := replace(l_username, chr(10), null);',
'        l_username := replace(l_username, chr(9), null);',
'        l_username := replace(l_username, chr(13), null);',
'        l_username := replace(l_username, chr(49824), null);',
'',
'        if l_username is not null then',
'            if nvl(:P10043_USERNAME_FORMAT,''x'') = ''EMAIL'' then',
'              -- Validate',
'              l_at     := instr(nvl(l_username, ''x''), ''@'');',
'              l_domain := substr(l_username, l_at+1);',
'              l_dot    := instr(l_domain, ''.'');',
'              if l_at < 2 then',
'                  -- invalid email',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_AT_SIGN''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'',
'              if l_dot = 0 and l_valid then',
'                  apex_collection.add_member(',
'                      p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                      p_c001            => l_username,',
'                      p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.MISSING_DOT''));',
'                  commit;',
'                  l_valid := false;',
'              end if;',
'            end if;',
'',
'            if l_valid and length(l_username) > 255 then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.USERNAME_TOO_LONG''));',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select user_name username',
'                             from APEX_APPL_ACL_USERS',
'                            where user_name = l_username and application_id = :APP_ID)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.ALREADY_IN_ACL''));',
'                    commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select c001',
'                             from apex_collections',
'                            where collection_name = ''ACL_BULK_USER_VALID''',
'                              and c001            = l_username)',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''ACL_BULK_USER_INVALID'',',
'                        p_c001            => l_username,',
'                        p_c002            => apex_lang.message(''APEX.FEATURE.ACL.BULK_USER.DUPLICATE_USER''));',
'                        commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                apex_collection.add_member(',
'                    p_collection_name => ''ACL_BULK_USER_VALID'',',
'                    p_c001            => l_username,',
'                    p_c002            => null,',
'                    p_c003            => :P10043_ROLE);',
'                    commit;',
'            end if;',
'',
'        end if;',
'        l_username := null;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(22134539170751214020)
,p_internal_uid=>22134544772804214024
);
end;
/
prompt --application/pages/page_10044
begin
wwv_flow_imp_page.create_page(
 p_id=>10044
,p_name=>'Add Multiple Users - Step 2'
,p_alias=>'ADD-MULTIPLE-USERS-STEP-2'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Users'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(22134386240167213451)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-ListView-item .fa {',
'  color: var(--ut-component-text-muted-color);',
'}',
'',
'.a-ListView-item .u-success-text {',
'  color: var(--ut-palette-success) !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(22134384660586213450)
,p_required_patch=>wwv_flow_imp.id(22134381993914213448)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134539283034214020)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134539387354214020)
,p_plug_name=>'Wizard Container'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(22134539546477214020)
,p_name=>'Exceptions'
,p_parent_plug_id=>wwv_flow_imp.id(22134539387354214020)
,p_template=>2664334895415463485
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c001 username, c002 reason',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID''',
'order by 1'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_INVALID'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>10000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22134546686593214027)
,p_query_column_id=>1
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>1
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22134547035883214028)
,p_query_column_id=>2
,p_column_alias=>'REASON'
,p_column_display_sequence=>2
,p_column_heading=>'Reason'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134539607647214020)
,p_plug_name=>'&P10044_VALID_COUNT. Users to Add'
,p_parent_plug_id=>wwv_flow_imp.id(22134539387354214020)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c001 username',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID''',
'order by 1'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>10000
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'list_view_features', 'ADVANCED_FORMATTING',
  'text_formatting', '<span class="fa fa-check-circle u-success-text" aria-hidden="true"></span> <span style="line-height:36px;text-transform:lowercase;">&USERNAME!HTML.</span>')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134539710275214020)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134550153205214257)
,p_plug_name=>'Valid Users Exist - Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return ''<p>'' ||',
'       apex_lang.message (',
'           ''APEX.FEATURE.ACL.BULK_USER.CREATE_CONFIRM'',',
'           apex_escape.html(:P10044_VALID_COUNT),',
'           apex_escape.html(:P10044_ROLE)',
'       ) ||',
'       ''</p>'';'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134550850166214258)
,p_plug_name=>'No Valid Users Exist - Page Info'
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'<p>No valid new users found</p>'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134539895345214020)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(22134539283034214020)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Users'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134551503320214259)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22134539283034214020)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'javascript:history.back();'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134551922047214259)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22134539283034214020)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134553204908214260)
,p_name=>'P10044_ROLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22134539710275214020)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG( role_name, '', '')',
'         WITHIN GROUP (ORDER BY role_name) role_name',
'from APEX_APPL_ACL_ROLES',
'where application_id = :APP_ID',
'and instr(:P10043_ROLE, role_id, 1) > 0'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134553604683214260)
,p_name=>'P10044_VALID_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22134539710275214020)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134554071544214260)
,p_name=>'P10044_INVALID_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22134539710275214020)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*)',
'  from apex_collections',
' where collection_name = ''ACL_BULK_USER_VALID'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22134552086684214259)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22134551922047214259)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22134552717650214259)
,p_event_id=>wwv_flow_imp.id(22134552086684214259)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22134554419083214261)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Users to Access Control List'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_user_role_ids apex_application_global.vc_arr2;',
'begin',
'    for c in (  select distinct c001 as username, c003 as user_roles',
'                from   apex_collections',
'                where  collection_name = ''ACL_BULK_USER_VALID'' )',
'    loop',
'         l_user_role_ids := apex_util.string_to_table(c.user_roles);',
'         for i in 1..l_user_role_ids.count loop',
'             apex_acl.add_user_role(p_application_id => :APP_ID, p_user_name => c.username, p_role_id => l_user_role_ids(i));',
'         end loop;',
'    end loop;',
'',
'    apex_collection.delete_collection(''ACL_BULK_USER_INVALID'');',
'    apex_collection.delete_collection(''ACL_BULK_USER_VALID'');',
'    :P10043_PRELIM_USERS := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(22134539895345214020)
,p_process_success_message=>'User(s) added.'
,p_internal_uid=>22134554419083214261
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22134554826677214261)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>22134554826677214261
);
end;
/
prompt --application/pages/page_10050
begin
wwv_flow_imp_page.create_page(
 p_id=>10050
,p_name=>'Feedback'
,p_alias=>'FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(22134386240167213451)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.feedback-positive, .feedback-negative, .feedback-neutral { padding: 8px; border-radius: 100%; background-color: white; margin: 4px; }',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(22134382167433213448)
,p_dialog_width=>'480'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134555298013214261)
,p_plug_name=>'Form on Feedback'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134555324846214261)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134555449439214261)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22134555324846214261)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Feedback'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134558429961214263)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22134555324846214261)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(22134566189313214268)
,p_branch_action=>'f?p=&APP_ID.:10051:&APP_SESSION.::&DEBUG.:RP::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134559716062214263)
,p_name=>'P10050_APPLICATION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22134555298013214261)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134560105826214264)
,p_name=>'P10050_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22134555298013214261)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134560594501214264)
,p_name=>'P10050_USER_AGENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22134555298013214261)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sys.owa_util.get_cgi_env(''user-agent'') x',
'from dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134560963907214264)
,p_name=>'P10050_RATING'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_imp.id(22134555298013214261)
,p_prompt=>'Experience'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'FEEDBACK_RATING'
,p_lov=>'.'||wwv_flow_imp.id(22134561086164214264)||'.'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'hide_radio_buttons', 'N',
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134562898613214266)
,p_name=>'P10050_FEEDBACK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(22134555298013214261)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(22134565750463214267)
,p_validation_name=>'At least One Feedback Required'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P10050_FEEDBACK is null and :P10050_RATING is null then',
'    return false;',
'else',
'    return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Please provide feedback or your experience.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22134558530509214263)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22134558429961214263)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22134559216795214263)
,p_event_id=>wwv_flow_imp.id(22134558530509214263)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22134563239517214266)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Submit Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'SUBMIT_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(22134555449439214261)
,p_process_success_message=>'Feedback Submitted'
,p_internal_uid=>22134563239517214266
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(22134563703804214266)
,p_page_process_id=>wwv_flow_imp.id(22134563239517214266)
,p_page_id=>10050
,p_name=>'p_comment'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10050_FEEDBACK'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(22134564243471214267)
,p_page_process_id=>wwv_flow_imp.id(22134563239517214266)
,p_page_id=>10050
,p_name=>'p_application_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'APP_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(22134564733540214267)
,p_page_process_id=>wwv_flow_imp.id(22134563239517214266)
,p_page_id=>10050
,p_name=>'p_page_id'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10050_PAGE_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(22134565275760214267)
,p_page_process_id=>wwv_flow_imp.id(22134563239517214266)
,p_page_id=>10050
,p_name=>'p_rating'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>4
,p_value_type=>'ITEM'
,p_value=>'P10050_RATING'
);
end;
/
prompt --application/pages/page_10051
begin
wwv_flow_imp_page.create_page(
 p_id=>10051
,p_name=>'Feedback Submitted'
,p_alias=>'FEEDBACK-SUBMITTED'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback Submitted'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(22134386240167213451)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(22134382167433213448)
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134555880133214261)
,p_plug_name=>'Feedback Submitted'
,p_icon_css_classes=>'fa-check-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--success'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134555789591214261)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(22134555880133214261)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_css_classes=>'w40p'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22134555947467214261)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22134555789591214261)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22134567785337214269)
,p_event_id=>wwv_flow_imp.id(22134555947467214261)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
end;
/
prompt --application/pages/page_10053
begin
wwv_flow_imp_page.create_page(
 p_id=>10053
,p_name=>'Manage Feedback'
,p_alias=>'MANAGE-FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage Feedback'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(22134386240167213451)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_imp.id(22134384660586213450)
,p_required_patch=>wwv_flow_imp.id(22134382167433213448)
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Feedback can be entered by end users from any normal page within the application.</p>',
'<p>This report shows the feedback entered, any response enter by administrators, and the status of the feedback.</p>',
'<p>Click the edit icon (yellow pencil) to enter a response or update the feedback status.</p>',
'<p><em><strong>Note:</strong> If feedback recipients have been defined then feedback submissions will also be emailed to the email addresses in the feedback recipients list.</em></p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134557133065214261)
,p_plug_name=>'Manage Feedback'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select feedback_id id,',
'    page_id||''. ''||page_name page_name,',
'    created_on created,',
'    lower(created_by) created_by,',
'    feedback,',
'    feedback_rating rating,',
'    case feedback_rating',
'      when 1 then ''fa-frown-o feedback-negative'' ',
'      when 2 then ''fa-emoji-neutral feedback-neutral''  ',
'      when 3 then ''fa-smile-o feedback-positive''',
'    end rating_icon,',
'    feedback_status status,',
'    public_response response,',
'    http_user_agent user_agent,',
'    updated_on updated,',
'    lower(updated_by) updated_by,',
'    page_id',
'from apex_team_feedback f',
'where application_id = :APP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Manage Feedback'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(22134580752728214278)
,p_name=>'Manage Feedback'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10054:&APP_SESSION.::&DEBUG.:RP:P10054_ID:\#ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'KAHELATA@GMAIL.COM'
,p_internal_uid=>22134580752728214278
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134581476770214280)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134581870038214281)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Page'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134582205647214281)
,p_db_column_name=>'CREATED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Filed'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134582611256214281)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Filed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134583030736214282)
,p_db_column_name=>'FEEDBACK'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Feedback'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134583417967214282)
,p_db_column_name=>'RATING'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Rating'
,p_column_html_expression=>'<span class="fa #RATING_ICON#" aria-hidden="true" title="#RATING#"></span>'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(22134561086164214264)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134583894684214283)
,p_db_column_name=>'RATING_ICON'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'RATING ICON'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134584201673214283)
,p_db_column_name=>'STATUS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(22134573482640214273)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134584672976214283)
,p_db_column_name=>'RESPONSE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Response'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134585070188214283)
,p_db_column_name=>'USER_AGENT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'User Agent'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134585478536214284)
,p_db_column_name=>'UPDATED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134585868454214284)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22134586242534214284)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Page'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(22134590817480214289)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'221345909'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAGE_NAME:CREATED:CREATED_BY:FEEDBACK:RATING:STATUS:RESPONSE:UPDATED:UPDATED_BY'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134591779498214289)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(22134557133065214261)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22134557088365214261)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(22134557133065214261)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22134592427395214290)
,p_event_id=>wwv_flow_imp.id(22134557088365214261)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22134557133065214261)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_10054
begin
wwv_flow_imp_page.create_page(
 p_id=>10054
,p_name=>'Feedback'
,p_alias=>'FEEDBACK1'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(22134386240167213451)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Color feedback rating icons */',
'.feedback-positive { color: var(--ut-feedback-positive-text-color, var(--ut-palette-success)); }',
'.feedback-neutral { color: var(--ut-feedback-neutral-text-color, var(--ut-palette-warning)); }',
'.feedback-negative { color: var(--ut-feedback-negative-text-color, var(--ut-palette-danger)); }'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(22134384660586213450)
,p_required_patch=>wwv_flow_imp.id(22134382167433213448)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134556482921214261)
,p_plug_name=>'Form Items Region'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134556544661214261)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134556655651214261)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22134556544661214261)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134569307330214270)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(22134556544661214261)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134556856444214261)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(22134556544661214261)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P10054_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134570952935214271)
,p_name=>'P10054_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22134556482921214261)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134571362801214272)
,p_name=>'P10054_PAGE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22134556482921214261)
,p_prompt=>'Page'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134571722717214272)
,p_name=>'P10054_FILED'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22134556482921214261)
,p_prompt=>'Filed'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134572139243214272)
,p_name=>'P10054_RATING_ICON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(22134556482921214261)
,p_prompt=>'Rating'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'HTML',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134572594220214273)
,p_name=>'P10054_FEEDBACK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(22134556482921214261)
,p_prompt=>'Feedback'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134572931676214273)
,p_name=>'P10054_RESPONSE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(22134556482921214261)
,p_prompt=>'Response'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134573397881214273)
,p_name=>'P10054_FEEDBACK_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(22134556482921214261)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FEEDBACK_STATUS'
,p_lov=>'.'||wwv_flow_imp.id(22134573482640214273)||'.'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134575651717214274)
,p_name=>'P10054_USER_AGENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(22134556482921214261)
,p_prompt=>'User Agent'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22134569409448214270)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22134569307330214270)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22134570162574214271)
,p_event_id=>wwv_flow_imp.id(22134569409448214270)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22134576169693214275)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_feedback in (',
'   select page_id,',
'          page_name,',
'          case feedback_rating',
'                when 1 then ''<span class="fa fa-frown-o feedback-negative" aria-hidden="true" title="Negative"></span>'' ',
'                when 2 then ''<span class="fa fa-emoji-neutral feedback-neutral" aria-hidden="true" title="Neutral"></span>''  ',
'                when 3 then ''<span class="fa fa-smile-o feedback-positive" aria-hidden="true" title="Positive"></span>'' ',
'                end rating_icon,',
'          lower(created_by) || '' - '' || apex_util.get_since(created_on) filed,',
'          feedback,',
'          public_response,',
'          feedback_status,',
'          http_user_agent',
'     from apex_team_feedback',
'    where feedback_id = :P10054_ID )',
'loop',
'   :P10054_PAGE_ID         := l_feedback.page_id||''. ''||l_feedback.page_name;',
'   :P10054_FILED           := l_feedback.filed;',
'   :P10054_RATING_ICON     := l_feedback.rating_icon;',
'   :P10054_FEEDBACK        := l_feedback.feedback;',
'   :P10054_RESPONSE        := l_feedback.public_response;',
'   :P10054_FEEDBACK_STATUS := l_feedback.feedback_status;',
'   :P10054_USER_AGENT      := l_feedback.http_user_agent;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>22134576169693214275
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22134576471936214275)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Reply to Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'REPLY_TO_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(22134556655651214261)
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>22134576471936214275
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(22134576988989214275)
,p_page_process_id=>wwv_flow_imp.id(22134576471936214275)
,p_page_id=>10054
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10054_ID'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(22134577442480214276)
,p_page_process_id=>wwv_flow_imp.id(22134576471936214275)
,p_page_id=>10054
,p_name=>'p_status'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>true
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P10054_FEEDBACK_STATUS'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(22134577926378214276)
,p_page_process_id=>wwv_flow_imp.id(22134576471936214275)
,p_page_id=>10054
,p_name=>'p_public_response'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'ITEM'
,p_value=>'P10054_RESPONSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22134578402664214276)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Delete Feedback'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_UTIL'
,p_attribute_04=>'DELETE_FEEDBACK'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(22134556856444214261)
,p_process_success_message=>'Feedback Deleted'
,p_internal_uid=>22134578402664214276
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(22134578983068214277)
,p_page_process_id=>wwv_flow_imp.id(22134578402664214276)
,p_page_id=>10054
,p_name=>'p_feedback_id'
,p_direction=>'IN'
,p_data_type=>'NUMBER'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P10054_ID'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22134579440022214277)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(22134556856444214261)
,p_internal_uid=>22134579440022214277
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22134579843788214277)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>22134579843788214277
);
end;
/
prompt --application/pages/page_10060
begin
wwv_flow_imp_page.create_page(
 p_id=>10060
,p_name=>'About'
,p_alias=>'ABOUT'
,p_step_title=>'About'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(22134386240167213451)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(22134382660403213448)
,p_protection_level=>'C'
,p_help_text=>'All application help text can be accessed from this page. The links in the "Documentation" region give a much more in-depth explanation of the application''s features and functionality.'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134593336149214291)
,p_plug_name=>'About Page'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h1:t-ContentBlock--lightBG'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>'Text about this application can be placed here.'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_10061
begin
wwv_flow_imp_page.create_page(
 p_id=>10061
,p_name=>'Help'
,p_alias=>'HELP'
,p_page_mode=>'MODAL'
,p_step_title=>'Help'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(22134382660403213448)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'25'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134594014740214291)
,p_plug_name=>'Search Dialog'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for l_page in ( select page_title,',
'                       help_text',
'                  from apex_application_pages',
'                 where application_id = :APP_ID',
'                   and page_id = :P10061_PAGE_ID )',
'loop',
'    if l_page.help_text is null then',
'        return ''No help is available for this page.'';',
'    else',
'        return case when substr(l_page.help_text, 1, 3) != ''<p>'' then ''<p>'' end ||',
'               apex_application.do_substitutions(l_page.help_text) ||',
'               case when substr(trim(l_page.help_text), -4) != ''</p>'' then ''</p>'' end;',
'    end if;',
'end loop;'))
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134594420513214292)
,p_name=>'P10061_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22134594014740214291)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_20000
begin
wwv_flow_imp_page.create_page(
 p_id=>20000
,p_name=>'Settings'
,p_alias=>'SETTINGS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(22134618548803214738)
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:t-Dialog--noPadding:js-dialog-class-t-Drawer--pullOutEnd:js-dialog-class-t-Drawer--md'
,p_required_patch=>wwv_flow_imp.id(22134619000487214738)
,p_protection_level=>'C'
,p_help_text=>'This page contains a list of settings applicable to the current application user.'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134623676995214743)
,p_plug_name=>'&APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134624089241214743)
,p_plug_name=>'&APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'APEX_WORKSPACE_APEX_USERS'
,p_query_where=>'user_name = :APP_USER'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'  from apex_application_auth ',
' where application_id            = :APP_ID ',
'   and is_current_authentication = ''Y'' ',
'   and scheme_type_code          = ''NATIVE_APEX_ACCOUNTS'''))
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(22134624511264214744)
,p_region_id=>wwv_flow_imp.id(22134624089241214743)
,p_layout_type=>'ROW'
,p_card_css_classes=>'a-CardView--noUI'
,p_title_adv_formatting=>false
,p_title_column_name=>'USER_NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'EMAIL'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'EMAIL'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134625035231214744)
,p_plug_name=>'Settings'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:u-colors'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_list_id=>wwv_flow_imp.id(22134622608056214742)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
);
end;
/
prompt --application/pages/page_20010
begin
wwv_flow_imp_page.create_page(
 p_id=>20010
,p_name=>'Push Notifications'
,p_alias=>'PUSH-NOTIFICATIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Settings - Push Notifications'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(22134618548803214738)
,p_javascript_code_onload=>'apex.pwa.initPushSubscriptionPage();'
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_required_patch=>wwv_flow_imp.id(22134618731002214738)
,p_protection_level=>'C'
,p_help_text=>'This page contains the settings for controlling push notification subscription for the current user.'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134620039097214739)
,p_plug_name=>'Push Notifications Not Supported'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion--not-supported'
,p_icon_css_classes=>'fa-bell-slash-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--warning:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_region_attributes=>'style="display:none;"'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications are not currently supported in your browser.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22134620411214214740)
,p_plug_name=>'Push Notifications'
,p_region_css_classes=>'a-pwaPush--subscriptionRegion'
,p_icon_css_classes=>'fa-bell-o'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--info:t-Alert--removeHeading js-removeLandmark:t-Form--xlarge'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Push notifications have to be enabled for each device you want to receive the notifications on. The first time you enable push notifications, you will have to grant permission to your browser. This setting can be changed at any time.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22134619756271214739)
,p_button_sequence=>10
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Settings'
,p_button_redirect_url=>'f?p=&APP_ID.:20000:&APP_SESSION.::&DEBUG.:::'
,p_button_css_classes=>'t-Button--inlineLink'
,p_icon_css_classes=>'fa-chevron-left'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22134620971755214740)
,p_name=>'P20010_ENABLE_PUSH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22134620411214214740)
,p_prompt=>'Enable push notifications on this device'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22134621213354214741)
,p_name=>'Change P20010_ENABLE_PUSH'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20010_ENABLE_PUSH'
,p_condition_element=>'P20010_ENABLE_PUSH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22134621702048214741)
,p_event_id=>wwv_flow_imp.id(22134621213354214741)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Subscribe to push notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.subscribePushNotifications();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22134622267565214741)
,p_event_id=>wwv_flow_imp.id(22134621213354214741)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Unsubscribe from push notifications'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.pwa.unsubscribePushNotifications();'
);
end;
/
prompt --application/pages/page_20020
begin
wwv_flow_imp_page.create_page(
 p_id=>20020
,p_name=>'Email Reporting'
,p_alias=>'EMAIL-REPORTING'
,p_page_mode=>'MODAL'
,p_step_title=>'Email Reporting'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_patch=>wwv_flow_imp.id(26390324641716576355)
,p_protection_level=>'C'
,p_help_text=>'<p>This report shows all email queued to be sent and those already sent.</p>'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26390324974478576357)
,p_plug_name=>'Email Reporting'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_lang.message(''APEX.FEATURE.EMAIL_REPORTING.QUEUED'') mail_status,',
'       id,',
'       mail_to,',
'       mail_from,',
'       mail_replyto,',
'       mail_subj,',
'       mail_cc,',
'       mail_bcc,',
'       mail_send_count,',
'       mail_send_error,',
'       last_updated_by,',
'       last_updated_on,',
'       mail_message_created, ',
'       lower(mail_message_created_by) message_created_by,',
'       app_id,',
'       dbms_lob.getlength(mail_body) text_body_size,',
'       dbms_lob.getlength(mail_body_html) html_body_size,',
'       null send_begin,',
'       null send_end,',
'       null mail_attachment_count,',
'       null mail_attachment_size',
'  from apex_mail_queue',
'union',
'select apex_lang.message(''APEX.FEATURE.EMAIL_REPORTING.SENT'') mail_status,',
'       mail_id id,',
'       mail_to,',
'       mail_from,',
'       mail_replyto,',
'       mail_subj,',
'       mail_cc,',
'       mail_bcc,',
'       null mail_send_count,',
'       mail_send_error,',
'       null last_updated_by,',
'       last_updated_on,',
'       mail_message_created,',
'       null message_created_by,',
'       app_id,',
'       mail_body_size text_body_size,',
'       mail_body_html_size html_body_size,',
'       mail_message_send_begin send_begin,',
'       mail_message_send_end   send_end,',
'       mail_attachment_count,',
'       mail_attachment_size',
'  from apex_mail_log'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Email Reporting'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(26390325544613576358)
,p_name=>'Email Reporting'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'KAHELATA@GMAIL.COM'
,p_internal_uid=>26390325544613576358
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26390326164648576442)
,p_db_column_name=>'MAIL_STATUS'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26390326506764576442)
,p_db_column_name=>'ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26390326971455576443)
,p_db_column_name=>'MAIL_TO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'To'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26390327397536576443)
,p_db_column_name=>'MAIL_FROM'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'From'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26390327748639576443)
,p_db_column_name=>'MAIL_REPLYTO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Reply To'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26390328147784576444)
,p_db_column_name=>'MAIL_SUBJ'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Subject'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26390328579461576444)
,p_db_column_name=>'MAIL_CC'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'CC'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26390328977067576444)
,p_db_column_name=>'MAIL_BCC'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'BCC'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26390329307340576445)
,p_db_column_name=>'MAIL_SEND_COUNT'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Send Count'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26390329723916576445)
,p_db_column_name=>'MAIL_SEND_ERROR'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Send Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26390330189476576445)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26390330520735576446)
,p_db_column_name=>'LAST_UPDATED_ON'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26390330986601576446)
,p_db_column_name=>'MAIL_MESSAGE_CREATED'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26390331397140576446)
,p_db_column_name=>'MESSAGE_CREATED_BY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26390331748837576447)
,p_db_column_name=>'APP_ID'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Application ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26390332120570576447)
,p_db_column_name=>'TEXT_BODY_SIZE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Text Body Size'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26390332570356576447)
,p_db_column_name=>'HTML_BODY_SIZE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'HTML Body Size'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26390332921789576448)
,p_db_column_name=>'SEND_BEGIN'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Send Begin'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26390333312533576448)
,p_db_column_name=>'SEND_END'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Send End'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26390333766704576448)
,p_db_column_name=>'MAIL_ATTACHMENT_COUNT'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Attachment Count'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26390334147238576449)
,p_db_column_name=>'MAIL_ATTACHMENT_SIZE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Attachment Size'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(26390341122435576455)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'263903412'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MAIL_STATUS:MAIL_TO:MAIL_FROM:MAIL_SUBJ:MAIL_SEND_COUNT:MAIL_SEND_ERROR:MAIL_MESSAGE_CREATED:MESSAGE_CREATED_BY:APP_ID:HTML_BODY_SIZE'
,p_sort_column_1=>'MAIL_MESSAGE_CREATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26390342087354576456)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(26390324974478576357)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&APP_SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(23849586647354031476)
);
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
