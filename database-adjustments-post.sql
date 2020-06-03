-- Updates required for mysql to postgres migration after data load

-- Recreate constraints

 ALTER TABLE public.viewer_target_project_id ADD CONSTRAINT viewer_target_project_id_target_id_project_id_6975d14f_uniq UNIQUE (target_id, project_id);
 ALTER TABLE public.viewer_target ADD CONSTRAINT viewer_target_title_key UNIQUE (title);
 ALTER TABLE public.viewer_protein ADD CONSTRAINT viewer_protein_code_prot_type_e0518d8d_uniq UNIQUE (code, prot_type);
 ALTER TABLE public.viewer_project_user_id ADD CONSTRAINT viewer_project_user_id_project_id_user_id_354ac1c0_uniq UNIQUE (project_id, user_id);
 ALTER TABLE public.viewer_project ADD CONSTRAINT viewer_project_title_key UNIQUE (title);
 ALTER TABLE public.viewer_molecule ADD CONSTRAINT viewer_molecule_prot_id_id_cmpd_id_id_mol_type_6e3feda6_uniq UNIQUE (prot_id_id, cmpd_id_id, mol_type);
 ALTER TABLE public.viewer_compound_project_id ADD CONSTRAINT viewer_compound_project_id_compound_id_project_id_14bf5e78_uniq UNIQUE (compound_id, project_id);
 ALTER TABLE public.viewer_compound ADD CONSTRAINT viewer_compound_inchi_key UNIQUE (inchi);
 ALTER TABLE public.viewer_activitypoint ADD CONSTRAINT viewer_activitypoint_target_id_id_activity_cm_11d84f70_uniq UNIQUE (target_id_id, activity, cmpd_id_id, units);
 ALTER TABLE public.scoring_viewscene ADD CONSTRAINT scoring_viewscene_uuid_key UNIQUE (uuid);
 ALTER TABLE public.scoring_scorechoice ADD CONSTRAINT scoring_scorechoice_user_id_id_mol_id_id_pro_29886b70_uniq UNIQUE (user_id_id, mol_id_id, prot_id_id, choice_type);
 ALTER TABLE public.scoring_protchoice ADD CONSTRAINT scoring_protchoice_user_id_id_prot_id_id_ch_88c85a5f_uniq UNIQUE (user_id_id, prot_id_id, choice_type);
 ALTER TABLE public.scoring_molgroup_mol_id ADD CONSTRAINT scoring_molgroup_mol_id_molgroup_id_molecule_id_23929d1c_uniq UNIQUE (molgroup_id, molecule_id);
 ALTER TABLE public.scoring_molchoice ADD CONSTRAINT scoring_molchoice_user_id_id_mol_id_id_cho_26793d8f_uniq UNIQUE (user_id_id, mol_id_id, choice_type);
 ALTER TABLE public.scoring_molannotation ADD CONSTRAINT scoring_molannotation_mol_id_id_annotation_type_faaa0679_uniq UNIQUE (mol_id_id, annotation_type);
 ALTER TABLE public.scoring_cmpdchoice ADD CONSTRAINT scoring_cmpdchoice_user_id_id_cmpd_id_id_ch_f95fbaaa_uniq UNIQUE (user_id_id, cmpd_id_id, choice_type);
 ALTER TABLE public.hypothesis_vector3d ADD CONSTRAINT hypothesis_vector3d_mol_id_id_vector_id_id_number_f89823fc_uniq UNIQUE (mol_id_id, vector_id_id, number);
 ALTER TABLE public.hypothesis_vector ADD CONSTRAINT hypothesis_vector_cmpd_id_id_smiles_type_e8e2b79c_uniq UNIQUE (cmpd_id_id, smiles, type);
 ALTER TABLE public.hypothesis_targetresidue ADD CONSTRAINT hypothesis_targetresidue_target_id_id_res_num_res_aaa21b27_uniq UNIQUE (target_id_id, res_num, res_name, chain_id);
 ALTER TABLE public.hypothesis_proteinresidue ADD CONSTRAINT hypothesis_proteinresidu_prot_id_id_targ_res_id_i_42362612_uniq UNIQUE (prot_id_id, targ_res_id_id);
 ALTER TABLE public.hypothesis_interactionpoint ADD CONSTRAINT hypothesis_interactionpo_prot_res_id_id_mol_id_id_145f29cf_uniq UNIQUE (prot_res_id_id, mol_id_id, protein_atom_name, molecule_atom_name);
 ALTER TABLE public.hypothesis_interaction ADD CONSTRAINT hypothesis_interaction_interaction_type_interac_46f37b46_uniq UNIQUE (interaction_type, interaction_version, interaction_point_id);
 ALTER TABLE public.hotspots_hotspotmap ADD CONSTRAINT hotspots_hotspotmap_map_type_target_id_id_pr_6b97dde5_uniq UNIQUE (map_type, target_id_id, prot_id_id);
 ALTER TABLE public.guardian_userobjectpermission ADD CONSTRAINT guardian_userobjectpermi_user_id_permission_id_ob_b0b3d2fc_uniq UNIQUE (user_id, permission_id, object_pk);
 ALTER TABLE public.guardian_groupobjectpermission ADD CONSTRAINT guardian_groupobjectperm_group_id_permission_id_o_3f189f7c_uniq UNIQUE (group_id, permission_id, object_pk);
 ALTER TABLE public.django_content_type ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 ALTER TABLE public.django_cas_ng_proxygrantingticket ADD CONSTRAINT django_cas_ng_proxygrant_session_key_user_id_4cd2ea19_uniq UNIQUE (session_key, user_id);
 ALTER TABLE public.authtoken_token ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);
 ALTER TABLE public.auth_user_user_permissions ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ALTER TABLE public.auth_user_groups ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 ALTER TABLE public.auth_user ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 ALTER TABLE public.auth_permission ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 ALTER TABLE public.auth_group_permissions ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 ALTER TABLE public.auth_group ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 ALTER TABLE public.viewer_target_project_id ADD CONSTRAINT viewer_target_project_id_pkey PRIMARY KEY (id);
 ALTER TABLE public.viewer_target ADD CONSTRAINT viewer_target_pkey PRIMARY KEY (id);
 ALTER TABLE public.viewer_protein ADD CONSTRAINT viewer_protein_pkey PRIMARY KEY (id);
 ALTER TABLE public.viewer_project_user_id ADD CONSTRAINT viewer_project_user_id_pkey PRIMARY KEY (id);
 ALTER TABLE public.viewer_project ADD CONSTRAINT viewer_project_pkey PRIMARY KEY (id);
 ALTER TABLE public.viewer_molecule ADD CONSTRAINT viewer_molecule_pkey PRIMARY KEY (id);
 ALTER TABLE public.viewer_compound_project_id ADD CONSTRAINT viewer_compound_project_id_pkey PRIMARY KEY (id);
 ALTER TABLE public.viewer_compound ADD CONSTRAINT viewer_compound_pkey PRIMARY KEY (id);
 ALTER TABLE public.viewer_activitypoint ADD CONSTRAINT viewer_activitypoint_pkey PRIMARY KEY (id);
 ALTER TABLE public.scoring_viewscene ADD CONSTRAINT scoring_viewscene_pkey PRIMARY KEY (id);
 ALTER TABLE public.scoring_scorechoice ADD CONSTRAINT scoring_scorechoice_pkey PRIMARY KEY (id);
 ALTER TABLE public.scoring_protchoice ADD CONSTRAINT scoring_protchoice_pkey PRIMARY KEY (id);
 ALTER TABLE public.scoring_molgroup_mol_id ADD CONSTRAINT scoring_molgroup_mol_id_pkey PRIMARY KEY (id);
 ALTER TABLE public.scoring_molgroup ADD CONSTRAINT scoring_molgroup_pkey PRIMARY KEY (id);
 ALTER TABLE public.scoring_molchoice ADD CONSTRAINT scoring_molchoice_pkey PRIMARY KEY (id);
 ALTER TABLE public.scoring_molannotation ADD CONSTRAINT scoring_molannotation_pkey PRIMARY KEY (id);
 ALTER TABLE public.scoring_cmpdchoice ADD CONSTRAINT scoring_cmpdchoice_pkey PRIMARY KEY (id);
 ALTER TABLE public.hypothesis_vector3d ADD CONSTRAINT hypothesis_vector3d_pkey PRIMARY KEY (id);
 ALTER TABLE public.hypothesis_vector ADD CONSTRAINT hypothesis_vector_pkey PRIMARY KEY (id);
 ALTER TABLE public.hypothesis_targetresidue ADD CONSTRAINT hypothesis_targetresidue_pkey PRIMARY KEY (id);
 ALTER TABLE public.hypothesis_proteinresidue ADD CONSTRAINT hypothesis_proteinresidue_pkey PRIMARY KEY (id);
 ALTER TABLE public.hypothesis_interactionpoint ADD CONSTRAINT hypothesis_interactionpoint_pkey PRIMARY KEY (id);
 ALTER TABLE public.hypothesis_interaction ADD CONSTRAINT hypothesis_interaction_pkey PRIMARY KEY (id);
 ALTER TABLE public.hotspots_hotspotmap ADD CONSTRAINT hotspots_hotspotmap_pkey PRIMARY KEY (id);
 ALTER TABLE public.guardian_userobjectpermission ADD CONSTRAINT guardian_userobjectpermission_pkey PRIMARY KEY (id);
 ALTER TABLE public.guardian_groupobjectpermission ADD CONSTRAINT guardian_groupobjectpermission_pkey PRIMARY KEY (id);
 ALTER TABLE public.django_session ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 ALTER TABLE public.django_migrations ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 ALTER TABLE public.django_content_type ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 ALTER TABLE public.django_cas_ng_sessionticket ADD CONSTRAINT django_cas_ng_sessionticket_pkey PRIMARY KEY (id);
 ALTER TABLE public.django_cas_ng_proxygrantingticket ADD CONSTRAINT django_cas_ng_proxygrantingticket_pkey PRIMARY KEY (id);
 ALTER TABLE public.django_admin_log ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 ALTER TABLE public.authtoken_token ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);
 ALTER TABLE public.auth_user_user_permissions ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 ALTER TABLE public.auth_user_groups ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 ALTER TABLE public.auth_user ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 ALTER TABLE public.auth_permission ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 ALTER TABLE public.auth_group_permissions ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 ALTER TABLE public.auth_group ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 ALTER TABLE public.django_admin_log ADD CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0));
 ALTER TABLE public.viewer_target_project_id ADD CONSTRAINT viewer_target_project_id_target_id_99796dcd_fk_viewer_target_id FOREIGN KEY (target_id) REFERENCES viewer_target(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.viewer_target_project_id ADD CONSTRAINT viewer_target_projec_project_id_8a755b32_fk_viewer_pr FOREIGN KEY (project_id) REFERENCES viewer_project(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.viewer_protein ADD CONSTRAINT viewer_protein_target_id_id_6a7638f2_fk_viewer_target_id FOREIGN KEY (target_id_id) REFERENCES viewer_target(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.viewer_protein ADD CONSTRAINT viewer_protein_aligned_to_id_f7f93935_fk_viewer_protein_id FOREIGN KEY (aligned_to_id) REFERENCES viewer_protein(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.viewer_project_user_id ADD CONSTRAINT viewer_project_user_id_user_id_7aab4886_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.viewer_project_user_id ADD CONSTRAINT viewer_project_user_id_project_id_0aa86214_fk_viewer_project_id FOREIGN KEY (project_id) REFERENCES viewer_project(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.viewer_molecule ADD CONSTRAINT viewer_molecule_prot_id_id_26e598bd_fk_viewer_protein_id FOREIGN KEY (prot_id_id) REFERENCES viewer_protein(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.viewer_molecule ADD CONSTRAINT viewer_molecule_cmpd_id_id_778fdcd7_fk_viewer_compound_id FOREIGN KEY (cmpd_id_id) REFERENCES viewer_compound(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.viewer_compound_project_id ADD CONSTRAINT viewer_compound_proj_project_id_dd92baa4_fk_viewer_pr FOREIGN KEY (project_id) REFERENCES viewer_project(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.viewer_compound_project_id ADD CONSTRAINT viewer_compound_proj_compound_id_1d7463b1_fk_viewer_co FOREIGN KEY (compound_id) REFERENCES viewer_compound(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.viewer_activitypoint ADD CONSTRAINT viewer_activitypoint_target_id_id_05cb6b4c_fk_viewer_target_id FOREIGN KEY (target_id_id) REFERENCES viewer_target(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.viewer_activitypoint ADD CONSTRAINT viewer_activitypoint_cmpd_id_id_203ed5b1_fk_viewer_compound_id FOREIGN KEY (cmpd_id_id) REFERENCES viewer_compound(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.scoring_viewscene ADD CONSTRAINT scoring_viewscene_user_id_id_60d60647_fk_auth_user_id FOREIGN KEY (user_id_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.scoring_scorechoice ADD CONSTRAINT scoring_scorechoice_user_id_id_7dcda6d5_fk_auth_user_id FOREIGN KEY (user_id_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.scoring_scorechoice ADD CONSTRAINT scoring_scorechoice_prot_id_id_4aefe905_fk_viewer_protein_id FOREIGN KEY (prot_id_id) REFERENCES viewer_protein(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.scoring_scorechoice ADD CONSTRAINT scoring_scorechoice_mol_id_id_dd2ad6a7_fk_viewer_molecule_id FOREIGN KEY (mol_id_id) REFERENCES viewer_molecule(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.scoring_protchoice ADD CONSTRAINT scoring_protchoice_user_id_id_626720b2_fk_auth_user_id FOREIGN KEY (user_id_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.scoring_protchoice ADD CONSTRAINT scoring_protchoice_prot_id_id_d743ca9f_fk_viewer_protein_id FOREIGN KEY (prot_id_id) REFERENCES viewer_protein(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.scoring_molgroup_mol_id ADD CONSTRAINT scoring_molgroup_mol_molgroup_id_2361a905_fk_scoring_m FOREIGN KEY (molgroup_id) REFERENCES scoring_molgroup(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.scoring_molgroup_mol_id ADD CONSTRAINT scoring_molgroup_mol_molecule_id_546cf5c3_fk_viewer_mo FOREIGN KEY (molecule_id) REFERENCES viewer_molecule(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.scoring_molgroup ADD CONSTRAINT scoring_molgroup_target_id_id_bfe365d2_fk_viewer_target_id FOREIGN KEY (target_id_id) REFERENCES viewer_target(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.scoring_molchoice ADD CONSTRAINT scoring_molchoice_user_id_id_20c658bb_fk_auth_user_id FOREIGN KEY (user_id_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.scoring_molchoice ADD CONSTRAINT scoring_molchoice_mol_id_id_cb0599f0_fk_viewer_molecule_id FOREIGN KEY (mol_id_id) REFERENCES viewer_molecule(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.scoring_molannotation ADD CONSTRAINT scoring_molannotation_mol_id_id_7a72d48f_fk_viewer_molecule_id FOREIGN KEY (mol_id_id) REFERENCES viewer_molecule(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.scoring_cmpdchoice ADD CONSTRAINT scoring_cmpdchoice_user_id_id_82d4600d_fk_auth_user_id FOREIGN KEY (user_id_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.scoring_cmpdchoice ADD CONSTRAINT scoring_cmpdchoice_cmpd_id_id_e5eebb9e_fk_viewer_compound_id FOREIGN KEY (cmpd_id_id) REFERENCES viewer_compound(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.hypothesis_vector3d ADD CONSTRAINT hypothesis_vector3d_vector_id_id_91d4fe51_fk_hypothesi FOREIGN KEY (vector_id_id) REFERENCES hypothesis_vector(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.hypothesis_vector3d ADD CONSTRAINT hypothesis_vector3d_mol_id_id_810911a3_fk_viewer_molecule_id FOREIGN KEY (mol_id_id) REFERENCES viewer_molecule(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.hypothesis_vector ADD CONSTRAINT hypothesis_vector_cmpd_id_id_37cba707_fk_viewer_compound_id FOREIGN KEY (cmpd_id_id) REFERENCES viewer_compound(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.hypothesis_targetresidue ADD CONSTRAINT hypothesis_targetres_target_id_id_a749feda_fk_viewer_ta FOREIGN KEY (target_id_id) REFERENCES viewer_target(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.hypothesis_proteinresidue ADD CONSTRAINT hypothesis_proteinre_targ_res_id_id_69ab83c5_fk_hypothesi FOREIGN KEY (targ_res_id_id) REFERENCES hypothesis_targetresidue(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.hypothesis_proteinresidue ADD CONSTRAINT hypothesis_proteinre_prot_id_id_a2e0d2c9_fk_viewer_pr FOREIGN KEY (prot_id_id) REFERENCES viewer_protein(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.hypothesis_interactionpoint ADD CONSTRAINT hypothesis_interacti_prot_res_id_id_6f061586_fk_hypothesi FOREIGN KEY (prot_res_id_id) REFERENCES hypothesis_proteinresidue(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.hypothesis_interactionpoint ADD CONSTRAINT hypothesis_interacti_mol_id_id_4d4038fb_fk_viewer_mo FOREIGN KEY (mol_id_id) REFERENCES viewer_molecule(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.hypothesis_interaction ADD CONSTRAINT hypothesis_interacti_interaction_point_id_0cf4c2a6_fk_hypothesi FOREIGN KEY (interaction_point_id) REFERENCES hypothesis_interactionpoint(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.hotspots_hotspotmap ADD CONSTRAINT hotspots_hotspotmap_target_id_id_9592b642_fk_viewer_target_id FOREIGN KEY (target_id_id) REFERENCES viewer_target(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.hotspots_hotspotmap ADD CONSTRAINT hotspots_hotspotmap_prot_id_id_b3d00027_fk_viewer_protein_id FOREIGN KEY (prot_id_id) REFERENCES viewer_protein(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.guardian_userobjectpermission ADD CONSTRAINT guardian_userobjectpermission_user_id_d5c1e964_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.guardian_userobjectpermission ADD CONSTRAINT guardian_userobjectp_permission_id_71807bfc_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.guardian_userobjectpermission ADD CONSTRAINT guardian_userobjectp_content_type_id_2e892405_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.guardian_groupobjectpermission ADD CONSTRAINT guardian_groupobject_permission_id_36572738_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.guardian_groupobjectpermission ADD CONSTRAINT guardian_groupobject_group_id_4bbbfb62_fk_auth_grou FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.guardian_groupobjectpermission ADD CONSTRAINT guardian_groupobject_content_type_id_7ade36b8_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.django_cas_ng_proxygrantingticket ADD CONSTRAINT django_cas_ng_proxyg_user_id_f833edd2_fk_auth_user FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.django_admin_log ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.django_admin_log ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.authtoken_token ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.auth_user_user_permissions ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.auth_user_user_permissions ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.auth_user_groups ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.auth_user_groups ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.auth_permission ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.auth_group_permissions ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 ALTER TABLE public.auth_group_permissions ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;

-- Set sequence ids.

-- CREATE TABLE `auth_group` (
--  `id` int(11) NOT NULL AUTO_INCREMENT,
SELECT setval('auth_group_id_seq', (SELECT MAX(id) FROM auth_group)); 

--
--CREATE TABLE `auth_group_permissions` (
--  `id` int(11) NOT NULL AUTO_INCREMENT,
SELECT setval('auth_group_permissions_id_seq', (SELECT MAX(id) FROM auth_group_permissions)); 

--
-- CREATE TABLE `auth_permission` (
--  `id` int(11) NOT NULL AUTO_INCREMENT,
--
-- ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=latin1;
SELECT setval('auth_permission_id_seq', (SELECT MAX(id) FROM auth_permission)); 

--
--CREATE TABLE `auth_user` (
--  `id` int(11) NOT NULL AUTO_INCREMENT,
--
--) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
SELECT setval('auth_user_id_seq', (SELECT MAX(id) FROM auth_user)); 

--
--CREATE TABLE `auth_user_groups` (
--  `id` int(11) NOT NULL AUTO_INCREMENT,
SELECT setval('auth_user_groups_id_seq', (SELECT MAX(id) FROM auth_user_groups)); 

--
--CREATE TABLE `auth_user_user_permissions` (
--  `id` int(11) NOT NULL AUTO_INCREMENT,
SELECT setval('auth_user_user_permissions_id_seq', (SELECT MAX(id) FROM auth_user_user_permissions)); 

--
--CREATE TABLE `django_admin_log` (
--  `id` int(11) NOT NULL AUTO_INCREMENT,
SELECT setval('django_admin_log_id_seq', (SELECT MAX(id) FROM django_admin_log)); 

--
--CREATE TABLE `django_cas_ng_proxygrantingticket` (
--  `id` int(11) NOT NULL AUTO_INCREMENT,
SELECT setval('django_cas_ng_proxygrantingticket_id_seq', (SELECT MAX(id) FROM django_cas_ng_proxygrantingticket)); 

--
--CREATE TABLE `django_cas_ng_sessionticket` (
--  `id` int(11) NOT NULL AUTO_INCREMENT,
--
--) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=latin1;
SELECT setval('django_cas_ng_sessionticket_id_seq', (SELECT MAX(id) FROM django_cas_ng_sessionticket)); 

--
--CREATE TABLE `django_content_type` (
--  `id` int(11) NOT NULL AUTO_INCREMENT,
--) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;
SELECT setval('django_content_type_id_seq', (SELECT MAX(id) FROM django_content_type)); 

--
--CREATE TABLE `django_migrations` (
--  `id` int(11) NOT NULL AUTO_INCREMENT,
--
--  PRIMARY KEY (`id`)
--) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
SELECT setval('django_migrations_id_seq', (SELECT MAX(id) FROM django_migrations)); 

--
--CREATE TABLE `guardian_groupobjectpermission` (
--`id` int(11) NOT NULL AUTO_INCREMENT,
SELECT setval('guardian_groupobjectpermission_id_seq', (SELECT MAX(id) FROM guardian_groupobjectpermission)); 

--
--CREATE TABLE `guardian_userobjectpermission` (
--  `id` int(11) NOT NULL AUTO_INCREMENT,
SELECT setval('guardian_userobjectpermission_id_seq', (SELECT MAX(id) FROM guardian_userobjectpermission)); 

--
-- CREATE TABLE `hotspots_hotspotmap` (
--  `id` int(11) NOT NULL AUTO_INCREMENT,
--
--) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
SELECT setval('hotspots_hotspotmap_id_seq', (SELECT MAX(id) FROM hotspots_hotspotmap)); 

--
--CREATE TABLE `hypothesis_interaction` (
--  `id` int(11) NOT NULL AUTO_INCREMENT,
--) ENGINE=InnoDB AUTO_INCREMENT=165086 DEFAULT CHARSET=latin1;
SELECT setval('hypothesis_interaction_id_seq', (SELECT MAX(id) FROM hypothesis_interaction)); 

--
--CREATE TABLE `hypothesis_interactionpoint` (
--  `id` int(11) NOT NULL AUTO_INCREMENT,
--) ENGINE=InnoDB AUTO_INCREMENT=165086 DEFAULT CHARSET=latin1;
SELECT setval('hypothesis_interactionpoint_id_seq', (SELECT MAX(id) FROM hypothesis_interactionpoint)); 

--
--CREATE TABLE `hypothesis_proteinresidue` (
--  `id` int(11) NOT NULL AUTO_INCREMENT,
--) ENGINE=InnoDB AUTO_INCREMENT=85742 DEFAULT CHARSET=latin1;
SELECT setval('hypothesis_proteinresidue_id_seq', (SELECT MAX(id) FROM hypothesis_proteinresidue)); 

--
--CREATE TABLE `hypothesis_targetresidue` (
--  `id` int(11) NOT NULL AUTO_INCREMENT,
--) ENGINE=InnoDB AUTO_INCREMENT=2977 DEFAULT CHARSET=latin1;
SELECT setval('hypothesis_targetresidue_id_seq', (SELECT MAX(id) FROM hypothesis_targetresidue)); 

--
--  CREATE TABLE `hypothesis_vector` (
--  `id` int(11) NOT NULL AUTO_INCREMENT,
-- ) ENGINE=InnoDB AUTO_INCREMENT=47818 DEFAULT CHARSET=latin1;
SELECT setval('hypothesis_vector_id_seq', (SELECT MAX(id) FROM hypothesis_vector));

-- CREATE TABLE `hypothesis_vector3d` (
--   `id` int(11) NOT NULL AUTO_INCREMENT,
-- ) ENGINE=InnoDB AUTO_INCREMENT=303176 DEFAULT CHARSET=latin1; */
SELECT setval('hypothesis_vector3d_id_seq', (SELECT MAX(id) FROM hypothesis_vector3d)); 

-- CREATE TABLE `scoring_cmpdchoice` (
--   `id` int(11) NOT NULL AUTO_INCREMENT, */
SELECT setval('scoring_cmpdchoice_id_seq', (SELECT MAX(id) FROM scoring_cmpdchoice));

-- CREATE TABLE `scoring_molannotation` (
--   `id` int(11) NOT NULL AUTO_INCREMENT,
-- ) ENGINE=InnoDB AUTO_INCREMENT=17565 DEFAULT CHARSET=latin1; */
SELECT setval('scoring_molannotation_id_seq', (SELECT MAX(id) FROM scoring_molannotation)); 

-- CREATE TABLE `scoring_molchoice` (
--   `id` int(11) NOT NULL AUTO_INCREMENT, */
-- SELECT setval('scoring_molchoice_id_seq', (SELECT MAX(id) FROM scoring_molchoice));

-- CREATE TABLE `scoring_molgroup` (
--   `id` int(11) NOT NULL AUTO_INCREMENT,
-- ) ENGINE=InnoDB AUTO_INCREMENT=236264 DEFAULT CHARSET=latin1; */
SELECT setval('scoring_molgroup_id_seq', (SELECT MAX(id) FROM scoring_molgroup)); 

-- CREATE TABLE `scoring_molgroup_mol_id` (
--   `id` int(11) NOT NULL AUTO_INCREMENT,
-- ) ENGINE=InnoDB AUTO_INCREMENT=462570 DEFAULT CHARSET=latin1; */
SELECT setval('scoring_molgroup_mol_id_id_seq', (SELECT MAX(id) FROM scoring_molgroup_mol_id)); 

-- CREATE TABLE `scoring_protchoice` (
--   `id` int(11) NOT NULL AUTO_INCREMENT, */
SELECT setval('scoring_protchoice_id_seq', (SELECT MAX(id) FROM scoring_protchoice)); 

-- CREATE TABLE `scoring_scorechoice` (
--   `id` int(11) NOT NULL AUTO_INCREMENT, */
SELECT setval('scoring_scorechoice_id_seq', (SELECT MAX(id) FROM scoring_scorechoice)); 

-- CREATE TABLE `scoring_viewscene` (
--   `id` int(11) NOT NULL AUTO_INCREMENT,
-- ) ENGINE=InnoDB AUTO_INCREMENT=543 DEFAULT CHARSET=latin1; */
SELECT setval('scoring_viewscene_id_seq', (SELECT MAX(id) FROM scoring_viewscene)); 

-- CREATE TABLE `viewer_activitypoint` (
--   `id` int(11) NOT NULL AUTO_INCREMENT, */
SELECT setval('viewer_activitypoint_id_seq', (SELECT MAX(id) FROM viewer_activitypoint)); 

-- CREATE TABLE `viewer_compound` (
--   `id` int(11) NOT NULL AUTO_INCREMENT,
-- ) ENGINE=InnoDB AUTO_INCREMENT=3871 DEFAULT CHARSET=latin1; */
SELECT setval('viewer_compound_id_seq', (SELECT MAX(id) FROM viewer_compound)); 

-- CREATE TABLE `viewer_compound_project_id` (
--   `id` int(11) NOT NULL AUTO_INCREMENT,
-- ) ENGINE=InnoDB AUTO_INCREMENT=4977 DEFAULT CHARSET=latin1; */
SELECT setval('viewer_compound_project_id_id_seq', (SELECT MAX(id) FROM viewer_compound_project_id)); 

-- CREATE TABLE `viewer_compoundset` (
--   `id` int(11) NOT NULL AUTO_INCREMENT,
-- ) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1; */
SELECT setval('viewer_compoundset_id_seq', (SELECT MAX(id) FROM viewer_compoundset)); 

-- CREATE TABLE `viewer_compoundsetsubmitter` (
--   `id` int(11) NOT NULL AUTO_INCREMENT,
-- ) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1; */
SELECT setval('viewer_compoundsetsubmitter_id_seq', (SELECT MAX(id) FROM viewer_compoundsetsubmitter)); 

-- CREATE TABLE `viewer_computedcompound` (
--   `id` int(11) NOT NULL AUTO_INCREMENT,
-- ) ENGINE=InnoDB AUTO_INCREMENT=1573 DEFAULT CHARSET=latin1; */
SELECT setval('viewer_computedcompound_id_seq', (SELECT MAX(id) FROM viewer_computedcompound)); 

-- CREATE TABLE `viewer_computedcompound_inspiration_frags` (
--   `id` int(11) NOT NULL AUTO_INCREMENT,
-- ) ENGINE=InnoDB AUTO_INCREMENT=2527 DEFAULT CHARSET=latin1; */
SELECT setval('viewer_computedcompound_inspiration_frags_id_seq', (SELECT MAX(id) FROM viewer_computedcompound_inspiration_frags)); 

-- CREATE TABLE `viewer_molecule` (
--   `id` int(11) NOT NULL AUTO_INCREMENT,
-- ) ENGINE=InnoDB AUTO_INCREMENT=25016 DEFAULT CHARSET=latin1; */
SELECT setval('viewer_molecule_id_seq', (SELECT MAX(id) FROM viewer_molecule)); 

-- CREATE TABLE `viewer_numericalscorevalues` (
--   `id` int(11) NOT NULL AUTO_INCREMENT,
-- ) ENGINE=InnoDB AUTO_INCREMENT=3405 DEFAULT CHARSET=latin1; */
SELECT setval('viewer_numericalscorevalues_id_seq', (SELECT MAX(id) FROM viewer_numericalscorevalues)); 

-- CREATE TABLE `viewer_project` (
--   `id` int(11) NOT NULL AUTO_INCREMENT,
-- ) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1; */
SELECT setval('viewer_project_id_seq', (SELECT MAX(id) FROM viewer_project)); 

-- CREATE TABLE `viewer_project_user_id` (
--   `id` int(11) NOT NULL AUTO_INCREMENT, */
SELECT setval('viewer_project_user_id_id_seq', (SELECT MAX(id) FROM viewer_project_user_id)); 

-- CREATE TABLE `viewer_protein` (
--   `id` int(11) NOT NULL AUTO_INCREMENT,
-- ) ENGINE=InnoDB AUTO_INCREMENT=24984 DEFAULT CHARSET=latin1; */
SELECT setval('viewer_protein_id_seq', (SELECT MAX(id) FROM viewer_protein)); 

-- CREATE TABLE `viewer_scoredescription` (
--   `id` int(11) NOT NULL AUTO_INCREMENT,
-- ) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=latin1; */
SELECT setval('viewer_scoredescription_id_seq', (SELECT MAX(id) FROM viewer_scoredescription)); 

-- CREATE TABLE `viewer_sessionproject` (
--   `id` int(11) NOT NULL AUTO_INCREMENT,
-- ) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1; */
SELECT setval('viewer_sessionproject_id_seq', (SELECT MAX(id) FROM viewer_sessionproject)); 

-- CREATE TABLE `viewer_snapshot` (
--   `id` int(11) NOT NULL AUTO_INCREMENT,
-- ) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1; */
SELECT setval('viewer_snapshot_id_seq', (SELECT MAX(id) FROM viewer_snapshot)); 

-- CREATE TABLE `viewer_target` (
--   `id` int(11) NOT NULL AUTO_INCREMENT,
-- ) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1; */
SELECT setval('viewer_target_id_seq', (SELECT MAX(id) FROM viewer_target)); 

-- CREATE TABLE `viewer_target_project_id` (
--   `id` int(11) NOT NULL AUTO_INCREMENT,
-- ) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1; */
SELECT setval('viewer_target_project_id_id_seq', (SELECT MAX(id) FROM viewer_target_project_id)); 

-- CREATE TABLE `viewer_textscorevalues` (
--   `id` int(11) NOT NULL AUTO_INCREMENT,
-- ) ENGINE=InnoDB AUTO_INCREMENT=9627 DEFAULT CHARSET=latin1; */
SELECT setval('viewer_textscorevalues_id_seq', (SELECT MAX(id) FROM viewer_textscorevalues)); 

