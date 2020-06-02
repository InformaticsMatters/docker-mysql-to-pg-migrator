-- Updates required for mysql to postgres migration
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
/* CREATE TABLE `hypothesis_vector` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
) ENGINE=InnoDB AUTO_INCREMENT=47818 DEFAULT CHARSET=latin1;
 */
 SELECT setval('hypothesis_vector_id_seq', (SELECT MAX(id) FROM hypothesis_vector)); 

/* --
CREATE TABLE `hypothesis_vector3d` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
) ENGINE=InnoDB AUTO_INCREMENT=303176 DEFAULT CHARSET=latin1; */
SELECT setval('hypothesis_vector3d_id_seq', (SELECT MAX(id) FROM hypothesis_vector3d)); 

/* --
CREATE TABLE `scoring_cmpdchoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT, */
SELECT setval('scoring_cmpdchoice_id_seq', (SELECT MAX(id) FROM scoring_cmpdchoice)); 

/* --
CREATE TABLE `scoring_molannotation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
) ENGINE=InnoDB AUTO_INCREMENT=17565 DEFAULT CHARSET=latin1; */
SELECT setval('scoring_molannotation_id_seq', (SELECT MAX(id) FROM scoring_molannotation)); 

/* --
CREATE TABLE `scoring_molchoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT, */
SELECT setval('scoring_molchoice_id_seq', (SELECT MAX(id) FROM scoring_molchoice)); 

/* --
CREATE TABLE `scoring_molgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
) ENGINE=InnoDB AUTO_INCREMENT=236264 DEFAULT CHARSET=latin1; */
SELECT setval('scoring_molgroup_id_seq', (SELECT MAX(id) FROM scoring_molgroup)); 

/* --
CREATE TABLE `scoring_molgroup_mol_id` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
) ENGINE=InnoDB AUTO_INCREMENT=462570 DEFAULT CHARSET=latin1; */
SELECT setval('scoring_molgroup_mol_id_id_seq', (SELECT MAX(id) FROM scoring_molgroup_mol_id)); 

/* --
CREATE TABLE `scoring_protchoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT, */
SELECT setval('scoring_protchoice_id_seq', (SELECT MAX(id) FROM scoring_protchoice)); 

/* --
CREATE TABLE `scoring_scorechoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT, */
SELECT setval('scoring_scorechoice_id_seq', (SELECT MAX(id) FROM scoring_scorechoice)); 

/* --
CREATE TABLE `scoring_viewscene` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
) ENGINE=InnoDB AUTO_INCREMENT=543 DEFAULT CHARSET=latin1; */
SELECT setval('scoring_viewscene_id_seq', (SELECT MAX(id) FROM scoring_viewscene)); 

/* --
CREATE TABLE `viewer_activitypoint` (
  `id` int(11) NOT NULL AUTO_INCREMENT, */
SELECT setval('viewer_activitypoint_id_seq', (SELECT MAX(id) FROM viewer_activitypoint)); 

/* --
CREATE TABLE `viewer_compound` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
) ENGINE=InnoDB AUTO_INCREMENT=3871 DEFAULT CHARSET=latin1; */
SELECT setval('viewer_compound_id_seq', (SELECT MAX(id) FROM viewer_compound)); 

/* --
CREATE TABLE `viewer_compound_project_id` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
) ENGINE=InnoDB AUTO_INCREMENT=4977 DEFAULT CHARSET=latin1; */
SELECT setval('viewer_compound_project_id_id_seq', (SELECT MAX(id) FROM viewer_compound_project_id)); 

/* --
CREATE TABLE `viewer_compoundset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1; */
SELECT setval('viewer_compoundset_id_seq', (SELECT MAX(id) FROM viewer_compoundset)); 

/* --
CREATE TABLE `viewer_compoundsetsubmitter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1; */
SELECT setval('viewer_compoundsetsubmitter_id_seq', (SELECT MAX(id) FROM viewer_compoundsetsubmitter)); 

/* --
CREATE TABLE `viewer_computedcompound` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
) ENGINE=InnoDB AUTO_INCREMENT=1573 DEFAULT CHARSET=latin1; */
SELECT setval('viewer_computedcompound_id_seq', (SELECT MAX(id) FROM viewer_computedcompound)); 

/* --
CREATE TABLE `viewer_computedcompound_inspiration_frags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
) ENGINE=InnoDB AUTO_INCREMENT=2527 DEFAULT CHARSET=latin1; */
SELECT setval('viewer_computedcompound_inspiration_frags_id_seq', (SELECT MAX(id) FROM viewer_computedcompound_inspiration_frags)); 

/* --
CREATE TABLE `viewer_molecule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
) ENGINE=InnoDB AUTO_INCREMENT=25016 DEFAULT CHARSET=latin1; */
SELECT setval('viewer_molecule_id_seq', (SELECT MAX(id) FROM viewer_molecule)); 

/* --
CREATE TABLE `viewer_numericalscorevalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
) ENGINE=InnoDB AUTO_INCREMENT=3405 DEFAULT CHARSET=latin1; */
SELECT setval('viewer_numericalscorevalues_id_seq', (SELECT MAX(id) FROM viewer_numericalscorevalues)); 

/* --
CREATE TABLE `viewer_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1; */
SELECT setval('viewer_project_id_seq', (SELECT MAX(id) FROM viewer_project)); 

/* --
CREATE TABLE `viewer_project_user_id` (
  `id` int(11) NOT NULL AUTO_INCREMENT, */
SELECT setval('viewer_project_user_id_id_seq', (SELECT MAX(id) FROM viewer_project_user_id)); 

/* --
CREATE TABLE `viewer_protein` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
) ENGINE=InnoDB AUTO_INCREMENT=24984 DEFAULT CHARSET=latin1; */
SELECT setval('viewer_protein_id_seq', (SELECT MAX(id) FROM viewer_protein)); 

/* --
CREATE TABLE `viewer_scoredescription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=latin1; */
SELECT setval('viewer_scoredescription_id_seq', (SELECT MAX(id) FROM viewer_scoredescription)); 

/* --
CREATE TABLE `viewer_sessionproject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1; */
SELECT setval('viewer_sessionproject_id_seq', (SELECT MAX(id) FROM viewer_sessionproject)); 

/* --
CREATE TABLE `viewer_snapshot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1; */
SELECT setval('viewer_snapshot_id_seq', (SELECT MAX(id) FROM viewer_snapshot)); 

/* --
CREATE TABLE `viewer_target` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1; */
SELECT setval('viewer_target_id_seq', (SELECT MAX(id) FROM viewer_target)); 

/* --
CREATE TABLE `viewer_target_project_id` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1; */
SELECT setval('viewer_target_project_id_id_seq', (SELECT MAX(id) FROM viewer_target_project_id)); 

/* --
CREATE TABLE `viewer_textscorevalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
) ENGINE=InnoDB AUTO_INCREMENT=9627 DEFAULT CHARSET=latin1; */
SELECT setval('viewer_textscorevalues_id_seq', (SELECT MAX(id) FROM viewer_textscorevalues)); 
