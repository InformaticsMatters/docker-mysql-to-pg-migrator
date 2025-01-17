-- Updates required for mysql to postgres migration before data load

 ALTER TABLE public.auth_group_permissions DROP CONSTRAINT IF EXISTS auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
 ALTER TABLE public.auth_group_permissions DROP CONSTRAINT IF EXISTS auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
 ALTER TABLE public.auth_permission DROP CONSTRAINT IF EXISTS auth_permission_content_type_id_2f476e4b_fk_django_co;
 ALTER TABLE public.auth_user_groups DROP CONSTRAINT IF EXISTS auth_user_groups_group_id_97559544_fk_auth_group_id;
 ALTER TABLE public.auth_user_groups DROP CONSTRAINT IF EXISTS auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
 ALTER TABLE public.auth_user_user_permissions DROP CONSTRAINT IF EXISTS auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
 ALTER TABLE public.auth_user_user_permissions DROP CONSTRAINT IF EXISTS auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
 ALTER TABLE public.authtoken_token DROP CONSTRAINT IF EXISTS authtoken_token_user_id_35299eff_fk_auth_user_id;
 ALTER TABLE public.django_admin_log DROP CONSTRAINT IF EXISTS django_admin_log_content_type_id_c4bce8eb_fk_django_co;
 ALTER TABLE public.django_admin_log DROP CONSTRAINT IF EXISTS django_admin_log_user_id_c564eba6_fk_auth_user_id;
 ALTER TABLE public.django_cas_ng_proxygrantingticket DROP CONSTRAINT IF EXISTS django_cas_ng_proxyg_user_id_f833edd2_fk_auth_user;
 ALTER TABLE public.guardian_groupobjectpermission DROP CONSTRAINT IF EXISTS guardian_groupobject_content_type_id_7ade36b8_fk_django_co;
 ALTER TABLE public.guardian_groupobjectpermission DROP CONSTRAINT IF EXISTS guardian_groupobject_group_id_4bbbfb62_fk_auth_grou;
 ALTER TABLE public.guardian_groupobjectpermission DROP CONSTRAINT IF EXISTS guardian_groupobject_permission_id_36572738_fk_auth_perm;
 ALTER TABLE public.guardian_userobjectpermission DROP CONSTRAINT IF EXISTS guardian_userobjectp_content_type_id_2e892405_fk_django_co;
 ALTER TABLE public.guardian_userobjectpermission DROP CONSTRAINT IF EXISTS guardian_userobjectp_permission_id_71807bfc_fk_auth_perm;
 ALTER TABLE public.guardian_userobjectpermission DROP CONSTRAINT IF EXISTS guardian_userobjectpermission_user_id_d5c1e964_fk_auth_user_id;
 ALTER TABLE public.hotspots_hotspotmap DROP CONSTRAINT IF EXISTS hotspots_hotspotmap_prot_id_id_b3d00027_fk_viewer_protein_id;
 ALTER TABLE public.hotspots_hotspotmap DROP CONSTRAINT IF EXISTS hotspots_hotspotmap_target_id_id_9592b642_fk_viewer_target_id;
 ALTER TABLE public.hypothesis_interaction DROP CONSTRAINT IF EXISTS hypothesis_interacti_interaction_point_id_0cf4c2a6_fk_hypothesi;
 ALTER TABLE public.hypothesis_interactionpoint DROP CONSTRAINT IF EXISTS hypothesis_interacti_mol_id_id_4d4038fb_fk_viewer_mo;
 ALTER TABLE public.hypothesis_interactionpoint DROP CONSTRAINT IF EXISTS hypothesis_interacti_prot_res_id_id_6f061586_fk_hypothesi;
 ALTER TABLE public.hypothesis_proteinresidue DROP CONSTRAINT IF EXISTS hypothesis_proteinre_prot_id_id_a2e0d2c9_fk_viewer_pr;
 ALTER TABLE public.hypothesis_proteinresidue DROP CONSTRAINT IF EXISTS hypothesis_proteinre_targ_res_id_id_69ab83c5_fk_hypothesi;
 ALTER TABLE public.hypothesis_targetresidue DROP CONSTRAINT IF EXISTS hypothesis_targetres_target_id_id_a749feda_fk_viewer_ta;
 ALTER TABLE public.hypothesis_vector DROP CONSTRAINT IF EXISTS hypothesis_vector_cmpd_id_id_37cba707_fk_viewer_compound_id;
 ALTER TABLE public.hypothesis_vector3d DROP CONSTRAINT IF EXISTS hypothesis_vector3d_mol_id_id_810911a3_fk_viewer_molecule_id;
 ALTER TABLE public.hypothesis_vector3d DROP CONSTRAINT IF EXISTS hypothesis_vector3d_vector_id_id_91d4fe51_fk_hypothesi;
 ALTER TABLE public.scoring_cmpdchoice DROP CONSTRAINT IF EXISTS scoring_cmpdchoice_cmpd_id_id_e5eebb9e_fk_viewer_compound_id;
 ALTER TABLE public.scoring_cmpdchoice DROP CONSTRAINT IF EXISTS scoring_cmpdchoice_user_id_id_82d4600d_fk_auth_user_id;
 ALTER TABLE public.scoring_molannotation DROP CONSTRAINT IF EXISTS scoring_molannotation_mol_id_id_7a72d48f_fk_viewer_molecule_id;
 ALTER TABLE public.scoring_molchoice DROP CONSTRAINT IF EXISTS scoring_molchoice_mol_id_id_cb0599f0_fk_viewer_molecule_id;
 ALTER TABLE public.scoring_molchoice DROP CONSTRAINT IF EXISTS scoring_molchoice_user_id_id_20c658bb_fk_auth_user_id;
 ALTER TABLE public.scoring_molgroup DROP CONSTRAINT IF EXISTS scoring_molgroup_target_id_id_bfe365d2_fk_viewer_target_id;
 ALTER TABLE public.scoring_molgroup_mol_id DROP CONSTRAINT IF EXISTS scoring_molgroup_mol_molecule_id_546cf5c3_fk_viewer_mo;
 ALTER TABLE public.scoring_molgroup_mol_id DROP CONSTRAINT IF EXISTS scoring_molgroup_mol_molgroup_id_2361a905_fk_scoring_m;
 ALTER TABLE public.scoring_protchoice DROP CONSTRAINT IF EXISTS scoring_protchoice_prot_id_id_d743ca9f_fk_viewer_protein_id;
 ALTER TABLE public.scoring_protchoice DROP CONSTRAINT IF EXISTS scoring_protchoice_user_id_id_626720b2_fk_auth_user_id;
 ALTER TABLE public.scoring_scorechoice DROP CONSTRAINT IF EXISTS scoring_scorechoice_mol_id_id_dd2ad6a7_fk_viewer_molecule_id;
 ALTER TABLE public.scoring_scorechoice DROP CONSTRAINT IF EXISTS scoring_scorechoice_prot_id_id_4aefe905_fk_viewer_protein_id;
 ALTER TABLE public.scoring_scorechoice DROP CONSTRAINT IF EXISTS scoring_scorechoice_user_id_id_7dcda6d5_fk_auth_user_id;
 ALTER TABLE public.scoring_viewscene DROP CONSTRAINT IF EXISTS scoring_viewscene_snapshot_id_85cca17c_fk_viewer_snapshot_id;
 ALTER TABLE public.scoring_viewscene DROP CONSTRAINT IF EXISTS scoring_viewscene_user_id_id_60d60647_fk_auth_user_id;
 ALTER TABLE public.viewer_activitypoint DROP CONSTRAINT IF EXISTS viewer_activitypoint_cmpd_id_id_203ed5b1_fk_viewer_compound_id;
 ALTER TABLE public.viewer_activitypoint DROP CONSTRAINT IF EXISTS viewer_activitypoint_target_id_id_05cb6b4c_fk_viewer_target_id;
 ALTER TABLE public.viewer_compound_project_id DROP CONSTRAINT IF EXISTS viewer_compound_proj_compound_id_1d7463b1_fk_viewer_co;
 ALTER TABLE public.viewer_compound_project_id DROP CONSTRAINT IF EXISTS viewer_compound_proj_project_id_dd92baa4_fk_viewer_pr;
 ALTER TABLE public.viewer_compoundset DROP CONSTRAINT IF EXISTS viewer_compoundset_submitter_id_2b302839_fk_viewer_co;
 ALTER TABLE public.viewer_compoundset DROP CONSTRAINT IF EXISTS viewer_compoundset_target_id_afa3af57_fk_viewer_target_id;
 ALTER TABLE public.viewer_computedcompound DROP CONSTRAINT IF EXISTS viewer_computedcompo_compound_set_id_5123546b_fk_viewer_co;
 ALTER TABLE public.viewer_computedcompound_inspiration_frags DROP CONSTRAINT IF EXISTS viewer_computedcompo_computedcompound_id_6b9961cd_fk_viewer_co;
 ALTER TABLE public.viewer_computedcompound_inspiration_frags DROP CONSTRAINT IF EXISTS viewer_computedcompo_molecule_id_78572d32_fk_viewer_mo;
 ALTER TABLE public.viewer_molecule DROP CONSTRAINT IF EXISTS viewer_molecule_cmpd_id_id_778fdcd7_fk_viewer_compound_id;
 ALTER TABLE public.viewer_molecule DROP CONSTRAINT IF EXISTS viewer_molecule_prot_id_id_26e598bd_fk_viewer_protein_id;
 ALTER TABLE public.viewer_numericalscorevalues DROP CONSTRAINT IF EXISTS viewer_numericalscor_compound_id_2b2593f3_fk_viewer_co;
 ALTER TABLE public.viewer_numericalscorevalues DROP CONSTRAINT IF EXISTS viewer_numericalscor_score_id_76ebd5a3_fk_viewer_sc;
 ALTER TABLE public.viewer_project_user_id DROP CONSTRAINT IF EXISTS viewer_project_user_id_project_id_0aa86214_fk_viewer_project_id;
 ALTER TABLE public.viewer_project_user_id DROP CONSTRAINT IF EXISTS viewer_project_user_id_user_id_7aab4886_fk_auth_user_id;
 ALTER TABLE public.viewer_protein DROP CONSTRAINT IF EXISTS viewer_protein_aligned_to_id_f7f93935_fk_viewer_protein_id;
 ALTER TABLE public.viewer_protein DROP CONSTRAINT IF EXISTS viewer_protein_target_id_id_6a7638f2_fk_viewer_target_id;
 ALTER TABLE public.viewer_scoredescription DROP CONSTRAINT IF EXISTS viewer_scoredescript_compound_set_id_b62d9e8c_fk_viewer_co;
 ALTER TABLE public.viewer_sessionproject DROP CONSTRAINT IF EXISTS viewer_sessionproject_author_id_4b6107e9_fk_auth_user_id;
 ALTER TABLE public.viewer_sessionproject DROP CONSTRAINT IF EXISTS viewer_sessionproject_target_id_3ebe59c3_fk_viewer_target_id;
 ALTER TABLE public.viewer_snapshot DROP CONSTRAINT IF EXISTS viewer_snapshot_author_id_45d36aa9_fk_auth_user_id;
 ALTER TABLE public.viewer_snapshot DROP CONSTRAINT IF EXISTS viewer_snapshot_parent_id_c24cc496_fk_viewer_snapshot_id;
 ALTER TABLE public.viewer_snapshot DROP CONSTRAINT IF EXISTS viewer_snapshot_session_project_id_c011636f_fk_viewer_se;
 ALTER TABLE public.viewer_target_project_id DROP CONSTRAINT IF EXISTS viewer_target_projec_project_id_8a755b32_fk_viewer_pr;
 ALTER TABLE public.viewer_target_project_id DROP CONSTRAINT IF EXISTS viewer_target_project_id_target_id_99796dcd_fk_viewer_target_id;
 ALTER TABLE public.viewer_textscorevalues DROP CONSTRAINT IF EXISTS viewer_textscorevalu_compound_id_ecb14f5a_fk_viewer_co;
 ALTER TABLE public.viewer_textscorevalues DROP CONSTRAINT IF EXISTS viewer_textscorevalu_score_id_ca3a1d85_fk_viewer_sc;
 ALTER TABLE public.django_admin_log DROP CONSTRAINT IF EXISTS django_admin_log_action_flag_check;
 ALTER TABLE public.auth_group DROP CONSTRAINT IF EXISTS auth_group_pkey;
 ALTER TABLE public.auth_group_permissions DROP CONSTRAINT IF EXISTS auth_group_permissions_pkey;
 ALTER TABLE public.auth_permission DROP CONSTRAINT IF EXISTS auth_permission_pkey;
 ALTER TABLE public.auth_user DROP CONSTRAINT IF EXISTS auth_user_pkey;
 ALTER TABLE public.auth_user_groups DROP CONSTRAINT IF EXISTS auth_user_groups_pkey;
 ALTER TABLE public.auth_user_user_permissions DROP CONSTRAINT IF EXISTS auth_user_user_permissions_pkey;
 ALTER TABLE public.authtoken_token DROP CONSTRAINT IF EXISTS authtoken_token_pkey;
 ALTER TABLE public.django_admin_log DROP CONSTRAINT IF EXISTS django_admin_log_pkey;
 ALTER TABLE public.django_cas_ng_proxygrantingticket DROP CONSTRAINT IF EXISTS django_cas_ng_proxygrantingticket_pkey;
 ALTER TABLE public.django_cas_ng_sessionticket DROP CONSTRAINT IF EXISTS django_cas_ng_sessionticket_pkey;
 ALTER TABLE public.django_content_type DROP CONSTRAINT IF EXISTS django_content_type_pkey;
 ALTER TABLE public.django_migrations DROP CONSTRAINT IF EXISTS django_migrations_pkey;
 ALTER TABLE public.django_session DROP CONSTRAINT IF EXISTS django_session_pkey;
 ALTER TABLE public.guardian_groupobjectpermission DROP CONSTRAINT IF EXISTS guardian_groupobjectpermission_pkey;
 ALTER TABLE public.guardian_userobjectpermission DROP CONSTRAINT IF EXISTS guardian_userobjectpermission_pkey;
 ALTER TABLE public.hotspots_hotspotmap DROP CONSTRAINT IF EXISTS hotspots_hotspotmap_pkey;
 ALTER TABLE public.hypothesis_interaction DROP CONSTRAINT IF EXISTS hypothesis_interaction_pkey;
 ALTER TABLE public.hypothesis_interactionpoint DROP CONSTRAINT IF EXISTS hypothesis_interactionpoint_pkey;
 ALTER TABLE public.hypothesis_proteinresidue DROP CONSTRAINT IF EXISTS hypothesis_proteinresidue_pkey;
 ALTER TABLE public.hypothesis_targetresidue DROP CONSTRAINT IF EXISTS hypothesis_targetresidue_pkey;
 ALTER TABLE public.hypothesis_vector DROP CONSTRAINT IF EXISTS hypothesis_vector_pkey;
 ALTER TABLE public.hypothesis_vector3d DROP CONSTRAINT IF EXISTS hypothesis_vector3d_pkey;
 ALTER TABLE public.scoring_cmpdchoice DROP CONSTRAINT IF EXISTS scoring_cmpdchoice_pkey;
 ALTER TABLE public.scoring_molannotation DROP CONSTRAINT IF EXISTS scoring_molannotation_pkey;
 ALTER TABLE public.scoring_molchoice DROP CONSTRAINT IF EXISTS scoring_molchoice_pkey;
 ALTER TABLE public.scoring_molgroup DROP CONSTRAINT IF EXISTS scoring_molgroup_pkey;
 ALTER TABLE public.scoring_molgroup_mol_id DROP CONSTRAINT IF EXISTS scoring_molgroup_mol_id_pkey;
 ALTER TABLE public.scoring_protchoice DROP CONSTRAINT IF EXISTS scoring_protchoice_pkey;
 ALTER TABLE public.scoring_scorechoice DROP CONSTRAINT IF EXISTS scoring_scorechoice_pkey;
 ALTER TABLE public.scoring_viewscene DROP CONSTRAINT IF EXISTS scoring_viewscene_pkey;
 ALTER TABLE public.viewer_activitypoint DROP CONSTRAINT IF EXISTS viewer_activitypoint_pkey;
 ALTER TABLE public.viewer_compound DROP CONSTRAINT IF EXISTS viewer_compound_pkey;
 ALTER TABLE public.viewer_compound_project_id DROP CONSTRAINT IF EXISTS viewer_compound_project_id_pkey;
 ALTER TABLE public.viewer_compoundset DROP CONSTRAINT IF EXISTS viewer_compoundset_pkey;
 ALTER TABLE public.viewer_compoundsetsubmitter DROP CONSTRAINT IF EXISTS viewer_compoundsetsubmitter_pkey;
 ALTER TABLE public.viewer_computedcompound DROP CONSTRAINT IF EXISTS viewer_computedcompound_pkey;
 ALTER TABLE public.viewer_computedcompound_inspiration_frags DROP CONSTRAINT IF EXISTS viewer_computedcompound_inspiration_frags_pkey;
 ALTER TABLE public.viewer_csetkeys DROP CONSTRAINT IF EXISTS viewer_csetkeys_pkey;
 ALTER TABLE public.viewer_molecule DROP CONSTRAINT IF EXISTS viewer_molecule_pkey;
 ALTER TABLE public.viewer_numericalscorevalues DROP CONSTRAINT IF EXISTS viewer_numericalscorevalues_pkey;
 ALTER TABLE public.viewer_project DROP CONSTRAINT IF EXISTS viewer_project_pkey;
 ALTER TABLE public.viewer_project_user_id DROP CONSTRAINT IF EXISTS viewer_project_user_id_pkey;
 ALTER TABLE public.viewer_protein DROP CONSTRAINT IF EXISTS viewer_protein_pkey;
 ALTER TABLE public.viewer_scoredescription DROP CONSTRAINT IF EXISTS viewer_scoredescription_pkey;
 ALTER TABLE public.viewer_sessionproject DROP CONSTRAINT IF EXISTS viewer_sessionproject_pkey;
 ALTER TABLE public.viewer_snapshot DROP CONSTRAINT IF EXISTS viewer_snapshot_pkey;
 ALTER TABLE public.viewer_target DROP CONSTRAINT IF EXISTS viewer_target_pkey;
 ALTER TABLE public.viewer_target_project_id DROP CONSTRAINT IF EXISTS viewer_target_project_id_pkey;
 ALTER TABLE public.viewer_textscorevalues DROP CONSTRAINT IF EXISTS viewer_textscorevalues_pkey;
 ALTER TABLE public.auth_group DROP CONSTRAINT IF EXISTS auth_group_name_key;
 ALTER TABLE public.auth_group_permissions DROP CONSTRAINT IF EXISTS auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
 ALTER TABLE public.auth_permission DROP CONSTRAINT IF EXISTS auth_permission_content_type_id_codename_01ab375a_uniq;
 ALTER TABLE public.auth_user DROP CONSTRAINT IF EXISTS auth_user_username_key;
 ALTER TABLE public.auth_user_groups DROP CONSTRAINT IF EXISTS auth_user_groups_user_id_group_id_94350c0c_uniq;
 ALTER TABLE public.auth_user_user_permissions DROP CONSTRAINT IF EXISTS auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
 ALTER TABLE public.authtoken_token DROP CONSTRAINT IF EXISTS authtoken_token_user_id_key;
 ALTER TABLE public.django_cas_ng_proxygrantingticket DROP CONSTRAINT IF EXISTS django_cas_ng_proxygrant_session_key_user_id_4cd2ea19_uniq;
 ALTER TABLE public.django_content_type DROP CONSTRAINT IF EXISTS django_content_type_app_label_model_76bd3d3b_uniq;
 ALTER TABLE public.guardian_groupobjectpermission DROP CONSTRAINT IF EXISTS guardian_groupobjectperm_group_id_permission_id_o_3f189f7c_uniq;
 ALTER TABLE public.guardian_userobjectpermission DROP CONSTRAINT IF EXISTS guardian_userobjectpermi_user_id_permission_id_ob_b0b3d2fc_uniq;
 ALTER TABLE public.hotspots_hotspotmap DROP CONSTRAINT IF EXISTS hotspots_hotspotmap_map_type_target_id_id_pr_6b97dde5_uniq;
 ALTER TABLE public.hypothesis_interaction DROP CONSTRAINT IF EXISTS hypothesis_interaction_interaction_type_interac_46f37b46_uniq;
 ALTER TABLE public.hypothesis_interactionpoint DROP CONSTRAINT IF EXISTS hypothesis_interactionpo_prot_res_id_id_mol_id_id_145f29cf_uniq;
 ALTER TABLE public.hypothesis_proteinresidue DROP CONSTRAINT IF EXISTS hypothesis_proteinresidu_prot_id_id_targ_res_id_i_42362612_uniq;
 ALTER TABLE public.hypothesis_targetresidue DROP CONSTRAINT IF EXISTS hypothesis_targetresidue_target_id_id_res_num_res_aaa21b27_uniq;
 ALTER TABLE public.hypothesis_vector DROP CONSTRAINT IF EXISTS hypothesis_vector_cmpd_id_id_smiles_type_e8e2b79c_uniq;
 ALTER TABLE public.hypothesis_vector3d DROP CONSTRAINT IF EXISTS hypothesis_vector3d_mol_id_id_vector_id_id_number_f89823fc_uniq;
 ALTER TABLE public.scoring_cmpdchoice DROP CONSTRAINT IF EXISTS scoring_cmpdchoice_user_id_id_cmpd_id_id_ch_f95fbaaa_uniq;
 ALTER TABLE public.scoring_molannotation DROP CONSTRAINT IF EXISTS scoring_molannotation_mol_id_id_annotation_type_faaa0679_uniq;
 ALTER TABLE public.scoring_molchoice DROP CONSTRAINT IF EXISTS scoring_molchoice_user_id_id_mol_id_id_cho_26793d8f_uniq;
 ALTER TABLE public.scoring_molgroup_mol_id DROP CONSTRAINT IF EXISTS scoring_molgroup_mol_id_molgroup_id_molecule_id_23929d1c_uniq;
 ALTER TABLE public.scoring_protchoice DROP CONSTRAINT IF EXISTS scoring_protchoice_user_id_id_prot_id_id_ch_88c85a5f_uniq;
 ALTER TABLE public.scoring_scorechoice DROP CONSTRAINT IF EXISTS scoring_scorechoice_user_id_id_mol_id_id_pro_29886b70_uniq;
 ALTER TABLE public.scoring_viewscene DROP CONSTRAINT IF EXISTS scoring_viewscene_uuid_key;
 ALTER TABLE public.viewer_activitypoint DROP CONSTRAINT IF EXISTS viewer_activitypoint_target_id_id_activity_cm_11d84f70_uniq;
 ALTER TABLE public.viewer_compound DROP CONSTRAINT IF EXISTS viewer_compound_inchi_key;
 ALTER TABLE public.viewer_compound_project_id DROP CONSTRAINT IF EXISTS viewer_compound_project_id_compound_id_project_id_14bf5e78_uniq;
 ALTER TABLE public.viewer_compoundset DROP CONSTRAINT IF EXISTS viewer_compoundset_name_key;
 ALTER TABLE public.viewer_compoundsetsubmitter DROP CONSTRAINT IF EXISTS viewer_compoundsetsubmitter_name_method_435d0b75_uniq;
 ALTER TABLE public.viewer_computedcompound_inspiration_frags DROP CONSTRAINT IF EXISTS viewer_computedcompound__computedcompound_id_mole_1ac44b85_uniq;
 ALTER TABLE public.viewer_molecule DROP CONSTRAINT IF EXISTS viewer_molecule_prot_id_id_cmpd_id_id_mol_type_6e3feda6_uniq;
 ALTER TABLE public.viewer_project DROP CONSTRAINT IF EXISTS viewer_project_title_key;
 ALTER TABLE public.viewer_project_user_id DROP CONSTRAINT IF EXISTS viewer_project_user_id_project_id_user_id_354ac1c0_uniq;
 ALTER TABLE public.viewer_protein DROP CONSTRAINT IF EXISTS viewer_protein_code_prot_type_e0518d8d_uniq;
 ALTER TABLE public.viewer_target DROP CONSTRAINT IF EXISTS viewer_target_title_key;
 ALTER TABLE public.viewer_target_project_id DROP CONSTRAINT IF EXISTS viewer_target_project_id_target_id_project_id_6975d14f_uniq;

