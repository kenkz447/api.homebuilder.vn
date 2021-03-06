USE [Omi_HomeBuilder]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyType_EntityType_EntityTypeId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyType]'))
ALTER TABLE [TaxonomyType] DROP CONSTRAINT [FK_TaxonomyType_EntityType_EntityTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyType_AspNetUsers_LastUpdateByUserId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyType]'))
ALTER TABLE [TaxonomyType] DROP CONSTRAINT [FK_TaxonomyType_AspNetUsers_LastUpdateByUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyType_AspNetUsers_DeleteByUserId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyType]'))
ALTER TABLE [TaxonomyType] DROP CONSTRAINT [FK_TaxonomyType_AspNetUsers_DeleteByUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyType_AspNetUsers_CreateByUserId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyType]'))
ALTER TABLE [TaxonomyType] DROP CONSTRAINT [FK_TaxonomyType_AspNetUsers_CreateByUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyEntity_TaxonomyType_TaxonomyTypeId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyEntity]'))
ALTER TABLE [TaxonomyEntity] DROP CONSTRAINT [FK_TaxonomyEntity_TaxonomyType_TaxonomyTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyEntity_TaxonomyEntity_ParentId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyEntity]'))
ALTER TABLE [TaxonomyEntity] DROP CONSTRAINT [FK_TaxonomyEntity_TaxonomyEntity_ParentId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyEntity_AspNetUsers_LastUpdateByUserId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyEntity]'))
ALTER TABLE [TaxonomyEntity] DROP CONSTRAINT [FK_TaxonomyEntity_AspNetUsers_LastUpdateByUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyEntity_AspNetUsers_DeleteByUserId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyEntity]'))
ALTER TABLE [TaxonomyEntity] DROP CONSTRAINT [FK_TaxonomyEntity_AspNetUsers_DeleteByUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyEntity_AspNetUsers_CreateByUserId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyEntity]'))
ALTER TABLE [TaxonomyEntity] DROP CONSTRAINT [FK_TaxonomyEntity_AspNetUsers_CreateByUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyDetail_TaxonomyEntity_EntityId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyDetail]'))
ALTER TABLE [TaxonomyDetail] DROP CONSTRAINT [FK_TaxonomyDetail_TaxonomyEntity_EntityId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyDetail_AspNetUsers_CreateByUserId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyDetail]'))
ALTER TABLE [TaxonomyDetail] DROP CONSTRAINT [FK_TaxonomyDetail_AspNetUsers_CreateByUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_SettingValue_SettingEntity_SettingEntityId]') AND parent_object_id = OBJECT_ID(N'[SettingValue]'))
ALTER TABLE [SettingValue] DROP CONSTRAINT [FK_SettingValue_SettingEntity_SettingEntityId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_SettingEntity_AspNetUsers_LastUpdateByUserId]') AND parent_object_id = OBJECT_ID(N'[SettingEntity]'))
ALTER TABLE [SettingEntity] DROP CONSTRAINT [FK_SettingEntity_AspNetUsers_LastUpdateByUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_SettingEntity_AspNetUsers_DeleteByUserId]') AND parent_object_id = OBJECT_ID(N'[SettingEntity]'))
ALTER TABLE [SettingEntity] DROP CONSTRAINT [FK_SettingEntity_AspNetUsers_DeleteByUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_SettingEntity_AspNetUsers_CreateByUserId]') AND parent_object_id = OBJECT_ID(N'[SettingEntity]'))
ALTER TABLE [SettingEntity] DROP CONSTRAINT [FK_SettingEntity_AspNetUsers_CreateByUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectTaxonomy_TaxonomyEntity_TaxonomyId]') AND parent_object_id = OBJECT_ID(N'[ProjectTaxonomy]'))
ALTER TABLE [ProjectTaxonomy] DROP CONSTRAINT [FK_ProjectTaxonomy_TaxonomyEntity_TaxonomyId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectTaxonomy_Project_EntityId]') AND parent_object_id = OBJECT_ID(N'[ProjectTaxonomy]'))
ALTER TABLE [ProjectTaxonomy] DROP CONSTRAINT [FK_ProjectTaxonomy_Project_EntityId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectFile_Project_EntityId]') AND parent_object_id = OBJECT_ID(N'[ProjectFile]'))
ALTER TABLE [ProjectFile] DROP CONSTRAINT [FK_ProjectFile_Project_EntityId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectFile_FileEntity_FileEntityId]') AND parent_object_id = OBJECT_ID(N'[ProjectFile]'))
ALTER TABLE [ProjectFile] DROP CONSTRAINT [FK_ProjectFile_FileEntity_FileEntityId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectDetail_Project_ProjectId]') AND parent_object_id = OBJECT_ID(N'[ProjectDetail]'))
ALTER TABLE [ProjectDetail] DROP CONSTRAINT [FK_ProjectDetail_Project_ProjectId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectBlockFile_ProjectBlock_EntityId]') AND parent_object_id = OBJECT_ID(N'[ProjectBlockFile]'))
ALTER TABLE [ProjectBlockFile] DROP CONSTRAINT [FK_ProjectBlockFile_ProjectBlock_EntityId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectBlockFile_FileEntity_FileEntityId]') AND parent_object_id = OBJECT_ID(N'[ProjectBlockFile]'))
ALTER TABLE [ProjectBlockFile] DROP CONSTRAINT [FK_ProjectBlockFile_FileEntity_FileEntityId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectBlockDetail_ProjectBlock_ProjectBlockId]') AND parent_object_id = OBJECT_ID(N'[ProjectBlockDetail]'))
ALTER TABLE [ProjectBlockDetail] DROP CONSTRAINT [FK_ProjectBlockDetail_ProjectBlock_ProjectBlockId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectBlock_ProjectBlock_ParentId]') AND parent_object_id = OBJECT_ID(N'[ProjectBlock]'))
ALTER TABLE [ProjectBlock] DROP CONSTRAINT [FK_ProjectBlock_ProjectBlock_ParentId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectBlock_Project_ProjectId]') AND parent_object_id = OBJECT_ID(N'[ProjectBlock]'))
ALTER TABLE [ProjectBlock] DROP CONSTRAINT [FK_ProjectBlock_Project_ProjectId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectBlock_Package_PackageId]') AND parent_object_id = OBJECT_ID(N'[ProjectBlock]'))
ALTER TABLE [ProjectBlock] DROP CONSTRAINT [FK_ProjectBlock_Package_PackageId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectBlock_EntityType_EntityTypeId]') AND parent_object_id = OBJECT_ID(N'[ProjectBlock]'))
ALTER TABLE [ProjectBlock] DROP CONSTRAINT [FK_ProjectBlock_EntityType_EntityTypeId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Project_GeographicaLocation_CityId]') AND parent_object_id = OBJECT_ID(N'[Project]'))
ALTER TABLE [Project] DROP CONSTRAINT [FK_Project_GeographicaLocation_CityId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Project_AspNetUsers_LastUpdateByUserId]') AND parent_object_id = OBJECT_ID(N'[Project]'))
ALTER TABLE [Project] DROP CONSTRAINT [FK_Project_AspNetUsers_LastUpdateByUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Project_AspNetUsers_DeleteByUserId]') AND parent_object_id = OBJECT_ID(N'[Project]'))
ALTER TABLE [Project] DROP CONSTRAINT [FK_Project_AspNetUsers_DeleteByUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Project_AspNetUsers_CreateByUserId]') AND parent_object_id = OBJECT_ID(N'[Project]'))
ALTER TABLE [Project] DROP CONSTRAINT [FK_Project_AspNetUsers_CreateByUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_PackageTaxonomy_TaxonomyEntity_TaxonomyId]') AND parent_object_id = OBJECT_ID(N'[PackageTaxonomy]'))
ALTER TABLE [PackageTaxonomy] DROP CONSTRAINT [FK_PackageTaxonomy_TaxonomyEntity_TaxonomyId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_PackageTaxonomy_Package_EntityId]') AND parent_object_id = OBJECT_ID(N'[PackageTaxonomy]'))
ALTER TABLE [PackageTaxonomy] DROP CONSTRAINT [FK_PackageTaxonomy_Package_EntityId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_PackageFile_Package_EntityId]') AND parent_object_id = OBJECT_ID(N'[PackageFile]'))
ALTER TABLE [PackageFile] DROP CONSTRAINT [FK_PackageFile_Package_EntityId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_PackageFile_FileEntity_FileEntityId]') AND parent_object_id = OBJECT_ID(N'[PackageFile]'))
ALTER TABLE [PackageFile] DROP CONSTRAINT [FK_PackageFile_FileEntity_FileEntityId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_PackageDetail_Package_PackageId]') AND parent_object_id = OBJECT_ID(N'[PackageDetail]'))
ALTER TABLE [PackageDetail] DROP CONSTRAINT [FK_PackageDetail_Package_PackageId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Package_AspNetUsers_LastUpdateByUserId]') AND parent_object_id = OBJECT_ID(N'[Package]'))
ALTER TABLE [Package] DROP CONSTRAINT [FK_Package_AspNetUsers_LastUpdateByUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Package_AspNetUsers_DeleteByUserId]') AND parent_object_id = OBJECT_ID(N'[Package]'))
ALTER TABLE [Package] DROP CONSTRAINT [FK_Package_AspNetUsers_DeleteByUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Package_AspNetUsers_CreateByUserId]') AND parent_object_id = OBJECT_ID(N'[Package]'))
ALTER TABLE [Package] DROP CONSTRAINT [FK_Package_AspNetUsers_CreateByUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_GeographicaLocation_GeographicaLocation_ParentId]') AND parent_object_id = OBJECT_ID(N'[GeographicaLocation]'))
ALTER TABLE [GeographicaLocation] DROP CONSTRAINT [FK_GeographicaLocation_GeographicaLocation_ParentId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_FileEntity_AspNetUsers_LastUpdateByUserId]') AND parent_object_id = OBJECT_ID(N'[FileEntity]'))
ALTER TABLE [FileEntity] DROP CONSTRAINT [FK_FileEntity_AspNetUsers_LastUpdateByUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_FileEntity_AspNetUsers_DeleteByUserId]') AND parent_object_id = OBJECT_ID(N'[FileEntity]'))
ALTER TABLE [FileEntity] DROP CONSTRAINT [FK_FileEntity_AspNetUsers_DeleteByUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_FileEntity_AspNetUsers_CreateByUserId]') AND parent_object_id = OBJECT_ID(N'[FileEntity]'))
ALTER TABLE [FileEntity] DROP CONSTRAINT [FK_FileEntity_AspNetUsers_CreateByUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_EntityType_AspNetUsers_LastUpdateByUserId]') AND parent_object_id = OBJECT_ID(N'[EntityType]'))
ALTER TABLE [EntityType] DROP CONSTRAINT [FK_EntityType_AspNetUsers_LastUpdateByUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_EntityType_AspNetUsers_DeleteByUserId]') AND parent_object_id = OBJECT_ID(N'[EntityType]'))
ALTER TABLE [EntityType] DROP CONSTRAINT [FK_EntityType_AspNetUsers_DeleteByUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_EntityType_AspNetUsers_CreateByUserId]') AND parent_object_id = OBJECT_ID(N'[EntityType]'))
ALTER TABLE [EntityType] DROP CONSTRAINT [FK_EntityType_AspNetUsers_CreateByUserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_AspNetUserTokens_AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[AspNetUserTokens]'))
ALTER TABLE [AspNetUserTokens] DROP CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_AspNetUserRoles_AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[AspNetUserRoles]'))
ALTER TABLE [AspNetUserRoles] DROP CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_AspNetUserRoles_AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[AspNetUserRoles]'))
ALTER TABLE [AspNetUserRoles] DROP CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_AspNetUserLogins_AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[AspNetUserLogins]'))
ALTER TABLE [AspNetUserLogins] DROP CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_AspNetUserClaims_AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[AspNetUserClaims]'))
ALTER TABLE [AspNetUserClaims] DROP CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_AspNetRoleClaims_AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[AspNetRoleClaims]'))
ALTER TABLE [AspNetRoleClaims] DROP CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
/****** Object:  Index [IX_TaxonomyType_LastUpdateByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[TaxonomyType]') AND name = N'IX_TaxonomyType_LastUpdateByUserId')
DROP INDEX [IX_TaxonomyType_LastUpdateByUserId] ON [TaxonomyType]
GO
/****** Object:  Index [IX_TaxonomyType_EntityTypeId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[TaxonomyType]') AND name = N'IX_TaxonomyType_EntityTypeId')
DROP INDEX [IX_TaxonomyType_EntityTypeId] ON [TaxonomyType]
GO
/****** Object:  Index [IX_TaxonomyType_DeleteByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[TaxonomyType]') AND name = N'IX_TaxonomyType_DeleteByUserId')
DROP INDEX [IX_TaxonomyType_DeleteByUserId] ON [TaxonomyType]
GO
/****** Object:  Index [IX_TaxonomyType_CreateByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[TaxonomyType]') AND name = N'IX_TaxonomyType_CreateByUserId')
DROP INDEX [IX_TaxonomyType_CreateByUserId] ON [TaxonomyType]
GO
/****** Object:  Index [AK_TaxonomyType_Name]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[TaxonomyType]') AND name = N'AK_TaxonomyType_Name')
ALTER TABLE [TaxonomyType] DROP CONSTRAINT [AK_TaxonomyType_Name]
GO
/****** Object:  Index [IX_TaxonomyEntity_TaxonomyTypeId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[TaxonomyEntity]') AND name = N'IX_TaxonomyEntity_TaxonomyTypeId')
DROP INDEX [IX_TaxonomyEntity_TaxonomyTypeId] ON [TaxonomyEntity]
GO
/****** Object:  Index [IX_TaxonomyEntity_ParentId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[TaxonomyEntity]') AND name = N'IX_TaxonomyEntity_ParentId')
DROP INDEX [IX_TaxonomyEntity_ParentId] ON [TaxonomyEntity]
GO
/****** Object:  Index [IX_TaxonomyEntity_LastUpdateByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[TaxonomyEntity]') AND name = N'IX_TaxonomyEntity_LastUpdateByUserId')
DROP INDEX [IX_TaxonomyEntity_LastUpdateByUserId] ON [TaxonomyEntity]
GO
/****** Object:  Index [IX_TaxonomyEntity_DeleteByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[TaxonomyEntity]') AND name = N'IX_TaxonomyEntity_DeleteByUserId')
DROP INDEX [IX_TaxonomyEntity_DeleteByUserId] ON [TaxonomyEntity]
GO
/****** Object:  Index [IX_TaxonomyEntity_CreateByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[TaxonomyEntity]') AND name = N'IX_TaxonomyEntity_CreateByUserId')
DROP INDEX [IX_TaxonomyEntity_CreateByUserId] ON [TaxonomyEntity]
GO
/****** Object:  Index [AK_TaxonomyEntity_Name]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[TaxonomyEntity]') AND name = N'AK_TaxonomyEntity_Name')
ALTER TABLE [TaxonomyEntity] DROP CONSTRAINT [AK_TaxonomyEntity_Name]
GO
/****** Object:  Index [IX_TaxonomyDetail_EntityId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[TaxonomyDetail]') AND name = N'IX_TaxonomyDetail_EntityId')
DROP INDEX [IX_TaxonomyDetail_EntityId] ON [TaxonomyDetail]
GO
/****** Object:  Index [IX_TaxonomyDetail_CreateByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[TaxonomyDetail]') AND name = N'IX_TaxonomyDetail_CreateByUserId')
DROP INDEX [IX_TaxonomyDetail_CreateByUserId] ON [TaxonomyDetail]
GO
/****** Object:  Index [IX_SettingValue_SettingEntityId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[SettingValue]') AND name = N'IX_SettingValue_SettingEntityId')
DROP INDEX [IX_SettingValue_SettingEntityId] ON [SettingValue]
GO
/****** Object:  Index [IX_SettingEntity_LastUpdateByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[SettingEntity]') AND name = N'IX_SettingEntity_LastUpdateByUserId')
DROP INDEX [IX_SettingEntity_LastUpdateByUserId] ON [SettingEntity]
GO
/****** Object:  Index [IX_SettingEntity_DeleteByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[SettingEntity]') AND name = N'IX_SettingEntity_DeleteByUserId')
DROP INDEX [IX_SettingEntity_DeleteByUserId] ON [SettingEntity]
GO
/****** Object:  Index [IX_SettingEntity_CreateByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[SettingEntity]') AND name = N'IX_SettingEntity_CreateByUserId')
DROP INDEX [IX_SettingEntity_CreateByUserId] ON [SettingEntity]
GO
/****** Object:  Index [AK_SettingEntity_Name]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[SettingEntity]') AND name = N'AK_SettingEntity_Name')
ALTER TABLE [SettingEntity] DROP CONSTRAINT [AK_SettingEntity_Name]
GO
/****** Object:  Index [IX_ProjectTaxonomy_TaxonomyId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[ProjectTaxonomy]') AND name = N'IX_ProjectTaxonomy_TaxonomyId')
DROP INDEX [IX_ProjectTaxonomy_TaxonomyId] ON [ProjectTaxonomy]
GO
/****** Object:  Index [IX_ProjectFile_FileEntityId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[ProjectFile]') AND name = N'IX_ProjectFile_FileEntityId')
DROP INDEX [IX_ProjectFile_FileEntityId] ON [ProjectFile]
GO
/****** Object:  Index [IX_ProjectDetail_ProjectId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[ProjectDetail]') AND name = N'IX_ProjectDetail_ProjectId')
DROP INDEX [IX_ProjectDetail_ProjectId] ON [ProjectDetail]
GO
/****** Object:  Index [IX_ProjectBlockFile_FileEntityId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[ProjectBlockFile]') AND name = N'IX_ProjectBlockFile_FileEntityId')
DROP INDEX [IX_ProjectBlockFile_FileEntityId] ON [ProjectBlockFile]
GO
/****** Object:  Index [IX_ProjectBlockDetail_ProjectBlockId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[ProjectBlockDetail]') AND name = N'IX_ProjectBlockDetail_ProjectBlockId')
DROP INDEX [IX_ProjectBlockDetail_ProjectBlockId] ON [ProjectBlockDetail]
GO
/****** Object:  Index [IX_ProjectBlock_ProjectId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[ProjectBlock]') AND name = N'IX_ProjectBlock_ProjectId')
DROP INDEX [IX_ProjectBlock_ProjectId] ON [ProjectBlock]
GO
/****** Object:  Index [IX_ProjectBlock_ParentId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[ProjectBlock]') AND name = N'IX_ProjectBlock_ParentId')
DROP INDEX [IX_ProjectBlock_ParentId] ON [ProjectBlock]
GO
/****** Object:  Index [IX_ProjectBlock_PackageId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[ProjectBlock]') AND name = N'IX_ProjectBlock_PackageId')
DROP INDEX [IX_ProjectBlock_PackageId] ON [ProjectBlock]
GO
/****** Object:  Index [IX_ProjectBlock_EntityTypeId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[ProjectBlock]') AND name = N'IX_ProjectBlock_EntityTypeId')
DROP INDEX [IX_ProjectBlock_EntityTypeId] ON [ProjectBlock]
GO
/****** Object:  Index [IX_Project_LastUpdateByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Project]') AND name = N'IX_Project_LastUpdateByUserId')
DROP INDEX [IX_Project_LastUpdateByUserId] ON [Project]
GO
/****** Object:  Index [IX_Project_DeleteByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Project]') AND name = N'IX_Project_DeleteByUserId')
DROP INDEX [IX_Project_DeleteByUserId] ON [Project]
GO
/****** Object:  Index [IX_Project_CreateByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Project]') AND name = N'IX_Project_CreateByUserId')
DROP INDEX [IX_Project_CreateByUserId] ON [Project]
GO
/****** Object:  Index [IX_Project_CityId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Project]') AND name = N'IX_Project_CityId')
DROP INDEX [IX_Project_CityId] ON [Project]
GO
/****** Object:  Index [IX_PackageTaxonomy_TaxonomyId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[PackageTaxonomy]') AND name = N'IX_PackageTaxonomy_TaxonomyId')
DROP INDEX [IX_PackageTaxonomy_TaxonomyId] ON [PackageTaxonomy]
GO
/****** Object:  Index [IX_PackageFile_FileEntityId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[PackageFile]') AND name = N'IX_PackageFile_FileEntityId')
DROP INDEX [IX_PackageFile_FileEntityId] ON [PackageFile]
GO
/****** Object:  Index [IX_PackageDetail_PackageId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[PackageDetail]') AND name = N'IX_PackageDetail_PackageId')
DROP INDEX [IX_PackageDetail_PackageId] ON [PackageDetail]
GO
/****** Object:  Index [IX_Package_LastUpdateByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Package]') AND name = N'IX_Package_LastUpdateByUserId')
DROP INDEX [IX_Package_LastUpdateByUserId] ON [Package]
GO
/****** Object:  Index [IX_Package_DeleteByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Package]') AND name = N'IX_Package_DeleteByUserId')
DROP INDEX [IX_Package_DeleteByUserId] ON [Package]
GO
/****** Object:  Index [IX_Package_CreateByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Package]') AND name = N'IX_Package_CreateByUserId')
DROP INDEX [IX_Package_CreateByUserId] ON [Package]
GO
/****** Object:  Index [IX_GeographicaLocation_ParentId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[GeographicaLocation]') AND name = N'IX_GeographicaLocation_ParentId')
DROP INDEX [IX_GeographicaLocation_ParentId] ON [GeographicaLocation]
GO
/****** Object:  Index [IX_FileEntity_LastUpdateByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[FileEntity]') AND name = N'IX_FileEntity_LastUpdateByUserId')
DROP INDEX [IX_FileEntity_LastUpdateByUserId] ON [FileEntity]
GO
/****** Object:  Index [IX_FileEntity_DeleteByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[FileEntity]') AND name = N'IX_FileEntity_DeleteByUserId')
DROP INDEX [IX_FileEntity_DeleteByUserId] ON [FileEntity]
GO
/****** Object:  Index [IX_FileEntity_CreateByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[FileEntity]') AND name = N'IX_FileEntity_CreateByUserId')
DROP INDEX [IX_FileEntity_CreateByUserId] ON [FileEntity]
GO
/****** Object:  Index [AK_FileEntity_Src]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[FileEntity]') AND name = N'AK_FileEntity_Src')
ALTER TABLE [FileEntity] DROP CONSTRAINT [AK_FileEntity_Src]
GO
/****** Object:  Index [IX_EntityType_LastUpdateByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[EntityType]') AND name = N'IX_EntityType_LastUpdateByUserId')
DROP INDEX [IX_EntityType_LastUpdateByUserId] ON [EntityType]
GO
/****** Object:  Index [IX_EntityType_DeleteByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[EntityType]') AND name = N'IX_EntityType_DeleteByUserId')
DROP INDEX [IX_EntityType_DeleteByUserId] ON [EntityType]
GO
/****** Object:  Index [IX_EntityType_CreateByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[EntityType]') AND name = N'IX_EntityType_CreateByUserId')
DROP INDEX [IX_EntityType_CreateByUserId] ON [EntityType]
GO
/****** Object:  Index [AK_EntityType_Name]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[EntityType]') AND name = N'AK_EntityType_Name')
ALTER TABLE [EntityType] DROP CONSTRAINT [AK_EntityType_Name]
GO
/****** Object:  Index [UserNameIndex]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[AspNetUsers]') AND name = N'UserNameIndex')
DROP INDEX [UserNameIndex] ON [AspNetUsers]
GO
/****** Object:  Index [EmailIndex]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[AspNetUsers]') AND name = N'EmailIndex')
DROP INDEX [EmailIndex] ON [AspNetUsers]
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[AspNetUserRoles]') AND name = N'IX_AspNetUserRoles_RoleId')
DROP INDEX [IX_AspNetUserRoles_RoleId] ON [AspNetUserRoles]
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[AspNetUserLogins]') AND name = N'IX_AspNetUserLogins_UserId')
DROP INDEX [IX_AspNetUserLogins_UserId] ON [AspNetUserLogins]
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[AspNetUserClaims]') AND name = N'IX_AspNetUserClaims_UserId')
DROP INDEX [IX_AspNetUserClaims_UserId] ON [AspNetUserClaims]
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[AspNetRoles]') AND name = N'RoleNameIndex')
DROP INDEX [RoleNameIndex] ON [AspNetRoles]
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[AspNetRoleClaims]') AND name = N'IX_AspNetRoleClaims_RoleId')
DROP INDEX [IX_AspNetRoleClaims_RoleId] ON [AspNetRoleClaims]
GO
/****** Object:  Table [TaxonomyType]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[TaxonomyType]') AND type in (N'U'))
DROP TABLE [TaxonomyType]
GO
/****** Object:  Table [TaxonomyEntity]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[TaxonomyEntity]') AND type in (N'U'))
DROP TABLE [TaxonomyEntity]
GO
/****** Object:  Table [TaxonomyDetail]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[TaxonomyDetail]') AND type in (N'U'))
DROP TABLE [TaxonomyDetail]
GO
/****** Object:  Table [SettingValue]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[SettingValue]') AND type in (N'U'))
DROP TABLE [SettingValue]
GO
/****** Object:  Table [SettingEntity]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[SettingEntity]') AND type in (N'U'))
DROP TABLE [SettingEntity]
GO
/****** Object:  Table [ProjectTaxonomy]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ProjectTaxonomy]') AND type in (N'U'))
DROP TABLE [ProjectTaxonomy]
GO
/****** Object:  Table [ProjectFile]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ProjectFile]') AND type in (N'U'))
DROP TABLE [ProjectFile]
GO
/****** Object:  Table [ProjectDetail]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ProjectDetail]') AND type in (N'U'))
DROP TABLE [ProjectDetail]
GO
/****** Object:  Table [ProjectBlockFile]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ProjectBlockFile]') AND type in (N'U'))
DROP TABLE [ProjectBlockFile]
GO
/****** Object:  Table [ProjectBlockDetail]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ProjectBlockDetail]') AND type in (N'U'))
DROP TABLE [ProjectBlockDetail]
GO
/****** Object:  Table [ProjectBlock]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ProjectBlock]') AND type in (N'U'))
DROP TABLE [ProjectBlock]
GO
/****** Object:  Table [Project]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Project]') AND type in (N'U'))
DROP TABLE [Project]
GO
/****** Object:  Table [PackageTaxonomy]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PackageTaxonomy]') AND type in (N'U'))
DROP TABLE [PackageTaxonomy]
GO
/****** Object:  Table [PackageFile]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PackageFile]') AND type in (N'U'))
DROP TABLE [PackageFile]
GO
/****** Object:  Table [PackageDetail]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PackageDetail]') AND type in (N'U'))
DROP TABLE [PackageDetail]
GO
/****** Object:  Table [Package]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Package]') AND type in (N'U'))
DROP TABLE [Package]
GO
/****** Object:  Table [GeographicaLocation]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GeographicaLocation]') AND type in (N'U'))
DROP TABLE [GeographicaLocation]
GO
/****** Object:  Table [FileEntity]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[FileEntity]') AND type in (N'U'))
DROP TABLE [FileEntity]
GO
/****** Object:  Table [EntityType]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EntityType]') AND type in (N'U'))
DROP TABLE [EntityType]
GO
/****** Object:  Table [AspNetUserTokens]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[AspNetUserTokens]') AND type in (N'U'))
DROP TABLE [AspNetUserTokens]
GO
/****** Object:  Table [AspNetUsers]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[AspNetUsers]') AND type in (N'U'))
DROP TABLE [AspNetUsers]
GO
/****** Object:  Table [AspNetUserRoles]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[AspNetUserRoles]') AND type in (N'U'))
DROP TABLE [AspNetUserRoles]
GO
/****** Object:  Table [AspNetUserLogins]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[AspNetUserLogins]') AND type in (N'U'))
DROP TABLE [AspNetUserLogins]
GO
/****** Object:  Table [AspNetUserClaims]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[AspNetUserClaims]') AND type in (N'U'))
DROP TABLE [AspNetUserClaims]
GO
/****** Object:  Table [AspNetRoles]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[AspNetRoles]') AND type in (N'U'))
DROP TABLE [AspNetRoles]
GO
/****** Object:  Table [AspNetRoleClaims]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[AspNetRoleClaims]') AND type in (N'U'))
DROP TABLE [AspNetRoleClaims]
GO
/****** Object:  Table [__EFMigrationsHistory]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[__EFMigrationsHistory]') AND type in (N'U'))
DROP TABLE [__EFMigrationsHistory]
GO
USE [master]
GO
/****** Object:  Database [Omi_HomeBuilder]    Script Date: 11/28/2017 7:32:45 AM ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'Omi_HomeBuilder')
DROP DATABASE [Omi_HomeBuilder]
GO
/****** Object:  Database [Omi_HomeBuilder]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'Omi_HomeBuilder')
BEGIN
CREATE DATABASE [Omi_HomeBuilder]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Omi_HomeBuilder', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Omi_HomeBuilder.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Omi_HomeBuilder_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Omi_HomeBuilder.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
END
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Omi_HomeBuilder].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Omi_HomeBuilder] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [Omi_HomeBuilder] SET ANSI_NULLS ON 
GO
ALTER DATABASE [Omi_HomeBuilder] SET ANSI_PADDING ON 
GO
ALTER DATABASE [Omi_HomeBuilder] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [Omi_HomeBuilder] SET ARITHABORT ON 
GO
ALTER DATABASE [Omi_HomeBuilder] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Omi_HomeBuilder] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Omi_HomeBuilder] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Omi_HomeBuilder] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Omi_HomeBuilder] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [Omi_HomeBuilder] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [Omi_HomeBuilder] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Omi_HomeBuilder] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [Omi_HomeBuilder] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Omi_HomeBuilder] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Omi_HomeBuilder] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Omi_HomeBuilder] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Omi_HomeBuilder] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Omi_HomeBuilder] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Omi_HomeBuilder] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Omi_HomeBuilder] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Omi_HomeBuilder] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Omi_HomeBuilder] SET RECOVERY FULL 
GO
ALTER DATABASE [Omi_HomeBuilder] SET  MULTI_USER 
GO
ALTER DATABASE [Omi_HomeBuilder] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Omi_HomeBuilder] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Omi_HomeBuilder] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Omi_HomeBuilder] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
USE [Omi_HomeBuilder]
GO
/****** Object:  Table [__EFMigrationsHistory]    Script Date: 11/28/2017 7:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[__EFMigrationsHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [AspNetRoleClaims]    Script Date: 11/28/2017 7:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[AspNetRoleClaims]') AND type in (N'U'))
BEGIN
CREATE TABLE [AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [AspNetRoles]    Script Date: 11/28/2017 7:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[AspNetRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [AspNetUserClaims]    Script Date: 11/28/2017 7:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[AspNetUserClaims]') AND type in (N'U'))
BEGIN
CREATE TABLE [AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [AspNetUserLogins]    Script Date: 11/28/2017 7:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[AspNetUserLogins]') AND type in (N'U'))
BEGIN
CREATE TABLE [AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [AspNetUserRoles]    Script Date: 11/28/2017 7:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[AspNetUserRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [AspNetUsers]    Script Date: 11/28/2017 7:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[AspNetUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [AspNetUserTokens]    Script Date: 11/28/2017 7:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[AspNetUserTokens]') AND type in (N'U'))
BEGIN
CREATE TABLE [AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [EntityType]    Script Date: 11/28/2017 7:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[EntityType]') AND type in (N'U'))
BEGIN
CREATE TABLE [EntityType](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreateByUserId] [nvarchar](450) NULL,
	[CreateDate] [datetime2](7) NULL,
	[DeleteByUserId] [nvarchar](450) NULL,
	[DeleteDate] [datetime2](7) NULL,
	[LastUpdateByUserId] [nvarchar](450) NULL,
	[LastUpdateDate] [datetime2](7) NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_EntityType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [FileEntity]    Script Date: 11/28/2017 7:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[FileEntity]') AND type in (N'U'))
BEGIN
CREATE TABLE [FileEntity](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreateByUserId] [nvarchar](450) NULL,
	[CreateDate] [datetime2](7) NULL,
	[DeleteByUserId] [nvarchar](450) NULL,
	[DeleteDate] [datetime2](7) NULL,
	[FileType] [int] NOT NULL,
	[LastUpdateByUserId] [nvarchar](450) NULL,
	[LastUpdateDate] [datetime2](7) NULL,
	[MetaJson] [nvarchar](max) NULL,
	[Size] [bigint] NOT NULL,
	[Src] [nvarchar](450) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_FileEntity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [GeographicaLocation]    Script Date: 11/28/2017 7:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[GeographicaLocation]') AND type in (N'U'))
BEGIN
CREATE TABLE [GeographicaLocation](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[JsonOptions] [nvarchar](max) NULL,
	[Label] [nvarchar](max) NOT NULL,
	[LocationType] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[ParentId] [bigint] NULL,
 CONSTRAINT [PK_GeographicaLocation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [Package]    Script Date: 11/28/2017 7:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Package]') AND type in (N'U'))
BEGIN
CREATE TABLE [Package](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreateByUserId] [nvarchar](450) NULL,
	[CreateDate] [datetime2](7) NULL,
	[DeleteByUserId] [nvarchar](450) NULL,
	[DeleteDate] [datetime2](7) NULL,
	[LastUpdateByUserId] [nvarchar](450) NULL,
	[LastUpdateDate] [datetime2](7) NULL,
	[Name] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Package] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [PackageDetail]    Script Date: 11/28/2017 7:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PackageDetail]') AND type in (N'U'))
BEGIN
CREATE TABLE [PackageDetail](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Area] [int] NOT NULL,
	[Language] [nvarchar](max) NULL,
	[PackageId] [bigint] NOT NULL,
	[Price] [int] NOT NULL,
	[SortText] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
 CONSTRAINT [PK_PackageDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [PackageFile]    Script Date: 11/28/2017 7:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PackageFile]') AND type in (N'U'))
BEGIN
CREATE TABLE [PackageFile](
	[EntityId] [bigint] NOT NULL,
	[FileEntityId] [bigint] NOT NULL,
	[UsingType] [int] NOT NULL,
 CONSTRAINT [PK_PackageFile] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC,
	[FileEntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [PackageTaxonomy]    Script Date: 11/28/2017 7:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PackageTaxonomy]') AND type in (N'U'))
BEGIN
CREATE TABLE [PackageTaxonomy](
	[EntityId] [bigint] NOT NULL,
	[TaxonomyId] [bigint] NOT NULL,
 CONSTRAINT [PK_PackageTaxonomy] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC,
	[TaxonomyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [Project]    Script Date: 11/28/2017 7:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Project]') AND type in (N'U'))
BEGIN
CREATE TABLE [Project](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CityId] [bigint] NOT NULL,
	[CreateByUserId] [nvarchar](450) NULL,
	[CreateDate] [datetime2](7) NULL,
	[DeleteByUserId] [nvarchar](450) NULL,
	[DeleteDate] [datetime2](7) NULL,
	[LastUpdateByUserId] [nvarchar](450) NULL,
	[LastUpdateDate] [datetime2](7) NULL,
	[Name] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [ProjectBlock]    Script Date: 11/28/2017 7:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ProjectBlock]') AND type in (N'U'))
BEGIN
CREATE TABLE [ProjectBlock](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[EntityTypeId] [bigint] NOT NULL,
	[PackageId] [bigint] NULL,
	[ParentId] [bigint] NULL,
	[ProjectId] [bigint] NULL,
 CONSTRAINT [PK_ProjectBlock] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [ProjectBlockDetail]    Script Date: 11/28/2017 7:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ProjectBlockDetail]') AND type in (N'U'))
BEGIN
CREATE TABLE [ProjectBlockDetail](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Label] [nvarchar](max) NULL,
	[Language] [nvarchar](max) NULL,
	[ProjectBlockId] [bigint] NULL,
 CONSTRAINT [PK_ProjectBlockDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [ProjectBlockFile]    Script Date: 11/28/2017 7:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ProjectBlockFile]') AND type in (N'U'))
BEGIN
CREATE TABLE [ProjectBlockFile](
	[EntityId] [bigint] NOT NULL,
	[FileEntityId] [bigint] NOT NULL,
	[JsonData] [nvarchar](max) NULL,
	[UsingType] [int] NOT NULL,
 CONSTRAINT [PK_ProjectBlockFile] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC,
	[FileEntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [ProjectDetail]    Script Date: 11/28/2017 7:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ProjectDetail]') AND type in (N'U'))
BEGIN
CREATE TABLE [ProjectDetail](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Area] [int] NOT NULL,
	[Investor] [nvarchar](max) NULL,
	[Language] [nvarchar](max) NULL,
	[MapLatitude] [nvarchar](max) NULL,
	[MapLongitude] [nvarchar](max) NULL,
	[ProjectId] [bigint] NOT NULL,
	[StartedYear] [int] NOT NULL,
	[Street] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[TotalApartment] [int] NOT NULL,
	[Website] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProjectDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [ProjectFile]    Script Date: 11/28/2017 7:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ProjectFile]') AND type in (N'U'))
BEGIN
CREATE TABLE [ProjectFile](
	[EntityId] [bigint] NOT NULL,
	[FileEntityId] [bigint] NOT NULL,
	[UsingType] [int] NOT NULL,
 CONSTRAINT [PK_ProjectFile] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC,
	[FileEntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [ProjectTaxonomy]    Script Date: 11/28/2017 7:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[ProjectTaxonomy]') AND type in (N'U'))
BEGIN
CREATE TABLE [ProjectTaxonomy](
	[EntityId] [bigint] NOT NULL,
	[TaxonomyId] [bigint] NOT NULL,
 CONSTRAINT [PK_ProjectTaxonomy] PRIMARY KEY CLUSTERED 
(
	[EntityId] ASC,
	[TaxonomyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [SettingEntity]    Script Date: 11/28/2017 7:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[SettingEntity]') AND type in (N'U'))
BEGIN
CREATE TABLE [SettingEntity](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreateByUserId] [nvarchar](450) NULL,
	[CreateDate] [datetime2](7) NULL,
	[DeleteByUserId] [nvarchar](450) NULL,
	[DeleteDate] [datetime2](7) NULL,
	[LastUpdateByUserId] [nvarchar](450) NULL,
	[LastUpdateDate] [datetime2](7) NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_SettingEntity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [SettingValue]    Script Date: 11/28/2017 7:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[SettingValue]') AND type in (N'U'))
BEGIN
CREATE TABLE [SettingValue](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Language] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[SettingEntityId] [bigint] NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_SettingValue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [TaxonomyDetail]    Script Date: 11/28/2017 7:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[TaxonomyDetail]') AND type in (N'U'))
BEGIN
CREATE TABLE [TaxonomyDetail](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreateByUserId] [nvarchar](450) NULL,
	[CreateDate] [datetime2](7) NULL,
	[EntityId] [bigint] NOT NULL,
	[Icon] [nvarchar](max) NULL,
	[Label] [nvarchar](max) NULL,
	[Language] [nvarchar](max) NULL,
 CONSTRAINT [PK_TaxonomyDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [TaxonomyEntity]    Script Date: 11/28/2017 7:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[TaxonomyEntity]') AND type in (N'U'))
BEGIN
CREATE TABLE [TaxonomyEntity](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreateByUserId] [nvarchar](450) NULL,
	[CreateDate] [datetime2](7) NULL,
	[DeleteByUserId] [nvarchar](450) NULL,
	[DeleteDate] [datetime2](7) NULL,
	[LastUpdateByUserId] [nvarchar](450) NULL,
	[LastUpdateDate] [datetime2](7) NULL,
	[Name] [nvarchar](450) NOT NULL,
	[ParentId] [bigint] NULL,
	[Status] [int] NOT NULL,
	[TaxonomyTypeId] [bigint] NOT NULL,
 CONSTRAINT [PK_TaxonomyEntity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [TaxonomyType]    Script Date: 11/28/2017 7:32:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[TaxonomyType]') AND type in (N'U'))
BEGIN
CREATE TABLE [TaxonomyType](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreateByUserId] [nvarchar](450) NULL,
	[CreateDate] [datetime2](7) NULL,
	[DeleteByUserId] [nvarchar](450) NULL,
	[DeleteDate] [datetime2](7) NULL,
	[EntityTypeId] [bigint] NULL,
	[LastUpdateByUserId] [nvarchar](450) NULL,
	[LastUpdateDate] [datetime2](7) NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_TaxonomyType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171122161701_Init', N'2.0.0-rtm-26452')
INSERT [__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20171122162419_InitHomeBuilder', N'2.0.0-rtm-26452')
INSERT [AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'fe7571d4-bd49-436f-839f-711e0b85960e', 0, N'b3ef399f-5cf7-45db-bc54-e97a522bb4a4', N'kenkz447@gmail.com', 0, 1, NULL, N'KENKZ447@GMAIL.COM', N'KENKZ447@GMAIL.COM', N'AQAAAAEAACcQAAAAEPabeA80Dmqb9RdbGDeiK2OadkCItD1RKs8+FtDC1dKNclFX0ONhpTfGie3OjO2TSw==', NULL, 0, N'628cd891-c6bd-4105-b048-f8e3b659209f', 0, N'kenkz447@gmail.com')
SET IDENTITY_INSERT [EntityType] ON 

INSERT [EntityType] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [LastUpdateByUserId], [LastUpdateDate], [Name], [Status]) VALUES (1, NULL, CAST(N'2017-11-22T23:18:51.6374957' AS DateTime2), NULL, NULL, NULL, NULL, N'project-room-type', 0)
INSERT [EntityType] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [LastUpdateByUserId], [LastUpdateDate], [Name], [Status]) VALUES (2, NULL, CAST(N'2017-11-22T23:18:51.6378108' AS DateTime2), NULL, NULL, NULL, NULL, N'project-room-layout', 0)
INSERT [EntityType] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [LastUpdateByUserId], [LastUpdateDate], [Name], [Status]) VALUES (3, NULL, CAST(N'2017-11-22T23:18:51.6378118' AS DateTime2), NULL, NULL, NULL, NULL, N'project-perspective', 0)
SET IDENTITY_INSERT [EntityType] OFF
SET IDENTITY_INSERT [FileEntity] ON 

INSERT [FileEntity] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [FileType], [LastUpdateByUserId], [LastUpdateDate], [MetaJson], [Size], [Src], [Status]) VALUES (1, N'fe7571d4-bd49-436f-839f-711e0b85960e', CAST(N'2017-11-24T22:01:35.2325723' AS DateTime2), NULL, NULL, 1, NULL, NULL, N'{"Dimension":"Size [ Width=1504, Height=1128 ]","ImageAlt":"template-layout","ThumbnailFileName":"template-layout_thumb.jpg"}', 292988, N'/Upload/fe7571d4-bd49-436f-839f-711e0b85960e/2017/11/template-layout.jpg', 0)
INSERT [FileEntity] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [FileType], [LastUpdateByUserId], [LastUpdateDate], [MetaJson], [Size], [Src], [Status]) VALUES (2, N'fe7571d4-bd49-436f-839f-711e0b85960e', CAST(N'2017-11-25T18:37:37.0339167' AS DateTime2), NULL, NULL, 1, NULL, NULL, N'{"Width":400,"Height":300,"ImageAlt":"1","ThumbnailFileName":"1_thumb.jpg","Base64PlaceHolder":"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAYABgAAD/2wCEAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDIBCQkJDAsMGA0NGDIhHCEyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMv/AABEIABIAGAMBIgACEQEDEQH/xAGiAAABBQEBAQEBAQAAAAAAAAAAAQIDBAUGBwgJCgsQAAIBAwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNRYQcicRQygZGhCCNCscEVUtHwJDNicoIJChYXGBkaJSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6g4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2drh4uPk5ebn6Onq8fLz9PX29/j5+gEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoLEQACAQIEBAMEBwUEBAABAncAAQIDEQQFITEGEkFRB2FxEyIygQgUQpGhscEJIzNS8BVictEKFiQ04SXxFxgZGiYnKCkqNTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqCg4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2dri4+Tl5ufo6ery8/T19vf4+fr/2gAMAwEAAhEDEQA/AFkcetU2uoROITIPNIzt74rUOg6jPDdToirDbkgySZRXx12561UTR4mtRM9xfJcMu54I7XcQ2OAcHO3iuDlYku5XLj1rwmvd7XRtSubFrgW8qtu2rEyEM30rwit8O17y7D5Wtzs5viv40uLcQS6tE0QOQhsbfGev/POoj8TvFzHc2owM3PLWFuT+fl1yNFdFkB2kPxY8a26FItYQLnOPsVuefxSuLooosM//2Q=="}', 27416, N'/Upload/fe7571d4-bd49-436f-839f-711e0b85960e/2017/11/1.jpg', 0)
INSERT [FileEntity] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [FileType], [LastUpdateByUserId], [LastUpdateDate], [MetaJson], [Size], [Src], [Status]) VALUES (3, N'fe7571d4-bd49-436f-839f-711e0b85960e', CAST(N'2017-11-25T21:32:16.0028190' AS DateTime2), NULL, NULL, 1, NULL, NULL, N'{"Width":400,"Height":300,"ImageAlt":"2","ThumbnailFileName":"2_thumb.jpg","Base64PlaceHolder":"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAYABgAAD/2wCEAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDIBCQkJDAsMGA0NGDIhHCEyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMv/AABEIAB4AKAMBIgACEQEDEQH/xAGiAAABBQEBAQEBAQAAAAAAAAAAAQIDBAUGBwgJCgsQAAIBAwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNRYQcicRQygZGhCCNCscEVUtHwJDNicoIJChYXGBkaJSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6g4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2drh4uPk5ebn6Onq8fLz9PX29/j5+gEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoLEQACAQIEBAMEBwUEBAABAncAAQIDEQQFITEGEkFRB2FxEyIygQgUQpGhscEJIzNS8BVictEKFiQ04SXxFxgZGiYnKCkqNTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqCg4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2dri4+Tl5ufo6ery8/T19vf4+fr/2gAMAwEAAhEDEQA/ANFjVd2qSRworOkv4d+zeuc4xmu889E7Nk01jUayhyAvJJwKk1q3n0SMtcqjEKGIjkVsZIHY+9JtXsPZXIXavBK9j0zXYNXNwIopE8h9rb8c9emPpXjlYVuh0UOp79qE8kS4jjLk4PXHGcVwr6dOutPINofz5JMeYuQCPTOe1ezTfF/4ezn5tZdR6LaTD/2SsGf4m+DZLuSWPUdOjBJ2sdOlZwOg58r8aTq3HGlynOabLFdQHfM8ciMUZPLzgj3zTrlrSfSrwR3Mu1k2cwdCMHpuq3feOPDV6wP/AAlap2+W1mAA5xx5XvSaX4o8DW7gXviqeRAMgJbTdfp5dL2073Q3Rg1ZnG+Eo2hF9nOJHVgSMeteeV9N23xL+HFpnZrUr5677WY/+06+ZKmU+ZIuMbM//9k="}', 29232, N'/Upload/fe7571d4-bd49-436f-839f-711e0b85960e/2017/11/2.jpg', 0)
INSERT [FileEntity] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [FileType], [LastUpdateByUserId], [LastUpdateDate], [MetaJson], [Size], [Src], [Status]) VALUES (4, N'fe7571d4-bd49-436f-839f-711e0b85960e', CAST(N'2017-11-25T21:33:30.9303434' AS DateTime2), NULL, NULL, 1, NULL, NULL, N'{"Width":400,"Height":300,"ImageAlt":"3","ThumbnailFileName":"3_thumb.jpg","Base64PlaceHolder":"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAYABgAAD/2wCEAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDIBCQkJDAsMGA0NGDIhHCEyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMv/AABEIAB4AKAMBIgACEQEDEQH/xAGiAAABBQEBAQEBAQAAAAAAAAAAAQIDBAUGBwgJCgsQAAIBAwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNRYQcicRQygZGhCCNCscEVUtHwJDNicoIJChYXGBkaJSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6g4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2drh4uPk5ebn6Onq8fLz9PX29/j5+gEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoLEQACAQIEBAMEBwUEBAABAncAAQIDEQQFITEGEkFRB2FxEyIygQgUQpGhscEJIzNS8BVictEKFiQ04SXxFxgZGiYnKCkqNTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqCg4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2dri4+Tl5ufo6ery8/T19vf4+fr/2gAMAwEAAhEDEQA/AOkJqJjSPIBVd5xXOe2SM1RM2atTTaU0cYjmmjfgyMyFgfUAcY+vP0rMacdqBXHu3FfOFfRG9pN2xGbaMnaCcD3r53rSn1OLF9D6SvPMju5YFB2qoIkPQ5qjoC3OpTGS5jEloj7ZfssjnIBBK7gAQTXXx/GL4cRbimsnc3UtaXDfzSsi/wDiB8L9VQpfa/cSxk5KC3uEBP8AwFBScGthSxPMrPQgl0iIysYreYIQcK085bOeDnPGKwvEK3OmzpJDGIbM7UU3DycHHPzEHJJyan/tP4Mea8h1i5bcchTDc4Uen3P5+taWneMPhTpE4k0/xBcwru3GJreeRD+DIaOVkKok73OUi8W32lG4itoImWZWjkdnYFl5GOK8Zr6zf4wfDORcPqULj0bT5j/7Tr5Mq4xsZ1KnO7n/2Q=="}', 25713, N'/Upload/fe7571d4-bd49-436f-839f-711e0b85960e/2017/11/3.jpg', 0)
INSERT [FileEntity] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [FileType], [LastUpdateByUserId], [LastUpdateDate], [MetaJson], [Size], [Src], [Status]) VALUES (5, N'fe7571d4-bd49-436f-839f-711e0b85960e', CAST(N'2017-11-25T21:35:27.9520834' AS DateTime2), NULL, NULL, 1, NULL, NULL, N'{"Width":400,"Height":300,"ImageAlt":"4","ThumbnailFileName":"4_thumb.jpg","Base64PlaceHolder":"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAYABgAAD/2wCEAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDIBCQkJDAsMGA0NGDIhHCEyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMv/AABEIAB4AKAMBIgACEQEDEQH/xAGiAAABBQEBAQEBAQAAAAAAAAAAAQIDBAUGBwgJCgsQAAIBAwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNRYQcicRQygZGhCCNCscEVUtHwJDNicoIJChYXGBkaJSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6g4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2drh4uPk5ebn6Onq8fLz9PX29/j5+gEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoLEQACAQIEBAMEBwUEBAABAncAAQIDEQQFITEGEkFRB2FxEyIygQgUQpGhscEJIzNS8BVictEKFiQ04SXxFxgZGiYnKCkqNTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqCg4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2dri4+Tl5ufo6ery8/T19vf4+fr/2gAMAwEAAhEDEQA/ANfXLu78JRWZk/0u0ugSo/ji6dPUc1HHqa3sYdYZAD6irvxF8t9M0jLAhUOSO3Sq+lvALaPgbGXhqyZaM+5IIPyP/wB81i3TKM/K3/fNdjM1qVOCD+Fc/fLExO3kVJVzl53TPRvyryivYbuERKGdSqOMqT37cV49WkCZHv3i7xNYalBp2m2AMkuHLSdEGT6/hVrSLwQWKR3cTqhzsYocH6Hv+FedL8RLm41BYzdw2NkDgBLbcqj6dTV/XPiIkpt4rDU1nCKfMmlheMux9AAcDFZ+91Rfu9D0Em2nYrDKd3J249OtYU0wdysfzn/Z5rhovH99DKssd7CjocqQJM/+g1NN4108xLHaXF5CSd0glVSmfbaM07PqS0joNdkY2diMEFY2Bz2O6vHK7eTXbCQ7n1LzBz8hif8APpXEVVNWuwm9kf/Z"}', 32824, N'/Upload/fe7571d4-bd49-436f-839f-711e0b85960e/2017/11/4.jpg', 0)
INSERT [FileEntity] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [FileType], [LastUpdateByUserId], [LastUpdateDate], [MetaJson], [Size], [Src], [Status]) VALUES (6, N'fe7571d4-bd49-436f-839f-711e0b85960e', CAST(N'2017-11-25T21:35:58.4486617' AS DateTime2), NULL, NULL, 1, NULL, NULL, N'{"Width":400,"Height":300,"ImageAlt":"5","ThumbnailFileName":"5_thumb.jpg","Base64PlaceHolder":"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAYABgAAD/2wCEAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDIBCQkJDAsMGA0NGDIhHCEyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMv/AABEIAB4AKAMBIgACEQEDEQH/xAGiAAABBQEBAQEBAQAAAAAAAAAAAQIDBAUGBwgJCgsQAAIBAwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNRYQcicRQygZGhCCNCscEVUtHwJDNicoIJChYXGBkaJSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6g4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2drh4uPk5ebn6Onq8fLz9PX29/j5+gEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoLEQACAQIEBAMEBwUEBAABAncAAQIDEQQFITEGEkFRB2FxEyIygQgUQpGhscEJIzNS8BVictEKFiQ04SXxFxgZGiYnKCkqNTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqCg4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2dri4+Tl5ufo6ery8/T19vf4+fr/2gAMAwEAAhEDEQA/ANbQVCeIdIIH3reX/wBBFdXr1zJa2l3NFGNyW+9Xzjn6VwHg/XotT8VadCsLR+TbygliDn5QK2viKY/s0dz9sltykQ+RGOJck/KR3/8ArVxzWh1R+IyZfEOsLqVhai7K+dMismxTkFseldlrG15GjMmxUhduuMkisLwzFZPENQvYollWRHhlki3FVwDkenJ6+taHiK8tL6Iy2l/G4YbRjnGOCDWDTdOz3NXbn02MWeZuRgV83V7d4k1i8spbG30+KGe4uHZVRzjOAOByOea8Rrrw/U563Q9U8LyzabdpqQYRvsYIOvDdzV268Qz3MxKyu/UFietcWdftDaLCLgjBxwh5X8quaVrejreRfa7wRwhgWPlOfwwBQ4t9BqSR6K+ia5NaRWgllkjmQHyoVI2gcgZ/z0qjrZuNNt44xYeQwYl3Af5jgc/MTxnNatx8VfDBtVtLfV3iPGJ1tpCFx2I2g/lWZrnxM8N6lpCWH2ySdhw8zwOvbsMH/IrB89/hdjVcr6ofN4Ti8SeG7O+geYapEgmtt0i+W75IK47EY7n0rwqvSNF8eQaNdrGLnzNPdv3kaxsNpP8AEOOv8xXm9dVJNN3Rz1GnY//Z"}', 50921, N'/Upload/fe7571d4-bd49-436f-839f-711e0b85960e/2017/11/5.jpg', 0)
INSERT [FileEntity] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [FileType], [LastUpdateByUserId], [LastUpdateDate], [MetaJson], [Size], [Src], [Status]) VALUES (7, N'fe7571d4-bd49-436f-839f-711e0b85960e', CAST(N'2017-11-25T21:36:41.4500586' AS DateTime2), NULL, NULL, 1, NULL, NULL, N'{"Width":400,"Height":300,"ImageAlt":"6","ThumbnailFileName":"6_thumb.jpg","Base64PlaceHolder":"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAYABgAAD/2wCEAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDIBCQkJDAsMGA0NGDIhHCEyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMv/AABEIAB4AKAMBIgACEQEDEQH/xAGiAAABBQEBAQEBAQAAAAAAAAAAAQIDBAUGBwgJCgsQAAIBAwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNRYQcicRQygZGhCCNCscEVUtHwJDNicoIJChYXGBkaJSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6g4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2drh4uPk5ebn6Onq8fLz9PX29/j5+gEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoLEQACAQIEBAMEBwUEBAABAncAAQIDEQQFITEGEkFRB2FxEyIygQgUQpGhscEJIzNS8BVictEKFiQ04SXxFxgZGiYnKCkqNTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqCg4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2dri4+Tl5ufo6ery8/T19vf4+fr/2gAMAwEAAhEDEQA/ALsskL6yPJZjlQxDdq6jTcjX9OI25BOM+vFeUeHtUuJbjzbpShC/KWrsNI1jUf7civv9dYxSmMLEoLEnAH5H6Vw04+zhZnXP35aHrGpxPJpd8H2nMZzgH07V5NqAk0axgurMbJ5w6eYeSuFJyO2a67UfFMFlazLf3qQs+VVHf5nPsMc9q8/v9attce304SPH5drJcK2AVJwRj16ZrWpq0ZwvY7LQp/snhLTri8nMjNbxyPI7DLFwD1PfmvlKvetM8X2l/wCHNP0a5ikg86OG1WcAOA20YbGQRjHbNeC1pT3ZM1oj0jSpLeSbN1eJbRKMktn5vbivTtC8R+FLW3SOXUtOhKfMBGjZHv6k+9eD3OoWUroqOwUHLNg4+gFRwanAtwrPtALZY4NZSpOWrLU0tD2fxF4ht/Edxc3NlZy3lnaRGCK6HyZJwznaTnqAOmePevPHdorkzwExtzjHYEYI+nUVk2fiKO1iFqJ5BCTkkFgMnqcVINasWHz3GD7I3+FVGDTE5Jo3tLb7PLpuWZB50e1iMhgoxj615rXWweILS0nyJDPCTkptIKN2Ycfn61yVaU4tNkTldI//2Q=="}', 47878, N'/Upload/fe7571d4-bd49-436f-839f-711e0b85960e/2017/11/6.jpg', 0)
INSERT [FileEntity] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [FileType], [LastUpdateByUserId], [LastUpdateDate], [MetaJson], [Size], [Src], [Status]) VALUES (8, N'fe7571d4-bd49-436f-839f-711e0b85960e', CAST(N'2017-11-25T21:37:34.2504740' AS DateTime2), NULL, NULL, 1, NULL, NULL, N'{"Width":400,"Height":300,"ImageAlt":"7","ThumbnailFileName":"7_thumb.jpg","Base64PlaceHolder":"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAYABgAAD/2wCEAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDIBCQkJDAsMGA0NGDIhHCEyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMv/AABEIAB4AKAMBIgACEQEDEQH/xAGiAAABBQEBAQEBAQAAAAAAAAAAAQIDBAUGBwgJCgsQAAIBAwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNRYQcicRQygZGhCCNCscEVUtHwJDNicoIJChYXGBkaJSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6g4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2drh4uPk5ebn6Onq8fLz9PX29/j5+gEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoLEQACAQIEBAMEBwUEBAABAncAAQIDEQQFITEGEkFRB2FxEyIygQgUQpGhscEJIzNS8BVictEKFiQ04SXxFxgZGiYnKCkqNTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqCg4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2dri4+Tl5ufo6ery8/T19vf4+fr/2gAMAwEAAhEDEQA/APaiKYabBcpcbtgI29cilDqzMozleuQR/wDrouWNYUwiia4htwpmYAO21Rnlj1wPwB/KkRxKm9RgGgV9bEbCviOvt9gOxz7iviCgGfZ8N00EMph2yMSMlZFwP1qC312Qzb7hNkG7Zv3Drz1Gc44rAvvif8LNSiEd7qUFxGDkLJYTkZ+nl1TtvHnwgsmLWtzaxEnJKWE455/2Pc1PK1sNtt3OwvNRtZdjFRJGhJGME5x2Oals75ZI5CqjapzgYGB789a5kfFn4bKu0awm30NlOR/6BSSfFj4bSqFfWIyB2+wzj/2SlJTt7r1ErX1Na88Riz+zkw7op3CIwySc9K+Pq+oz8S/heV2nU4iPQ2Vwf/ZK+XKcVJbgz//Z"}', 22511, N'/Upload/fe7571d4-bd49-436f-839f-711e0b85960e/2017/11/7.jpg', 0)
INSERT [FileEntity] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [FileType], [LastUpdateByUserId], [LastUpdateDate], [MetaJson], [Size], [Src], [Status]) VALUES (9, N'fe7571d4-bd49-436f-839f-711e0b85960e', CAST(N'2017-11-25T21:38:20.3013827' AS DateTime2), NULL, NULL, 1, NULL, NULL, N'{"Width":400,"Height":300,"ImageAlt":"8","ThumbnailFileName":"8_thumb.jpg","Base64PlaceHolder":"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAYABgAAD/2wCEAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDIBCQkJDAsMGA0NGDIhHCEyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMv/AABEIAB4AKAMBIgACEQEDEQH/xAGiAAABBQEBAQEBAQAAAAAAAAAAAQIDBAUGBwgJCgsQAAIBAwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNRYQcicRQygZGhCCNCscEVUtHwJDNicoIJChYXGBkaJSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6g4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2drh4uPk5ebn6Onq8fLz9PX29/j5+gEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoLEQACAQIEBAMEBwUEBAABAncAAQIDEQQFITEGEkFRB2FxEyIygQgUQpGhscEJIzNS8BVictEKFiQ04SXxFxgZGiYnKCkqNTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqCg4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2dri4+Tl5ufo6ery8/T19vf4+fr/2gAMAwEAAhEDEQA/APejUbU8k1z2uahrdo7NY2VubdBzLM/LHaTwAeBkKPfd7UFGy1VpKmjlWeFJV6OoIqqsplUkjHORxjI7GgCncdDXxPX2xcDg18T0CZ9w3F/JBriwtLttxHvYEf7JJNY9z4t0HVWtYLS/8ySYnylMMirJxnglcHgVg3XxU+HNzOZx4lKzbdoJsZyOmOmzmuX1Dxf4N1GCSGTx7FEjfdaDR7hGj/3Tg46miPmU2j1Wy1S1htVinmVZEJXbtP4dqtzuhKSM5Xac5zjPHQ+1ef6f8TPh3Z6fb20vilp5IVA81rG4yxAxu+51qtqfxE8A6hOJB4zniUf8shZ3Ow/VQozQDsd1PcQnH76P5hkDcOR6iviuvpWLx98PVtY4ZvFhl2cB/wCz59xGc9SpNfNVAmf/2Q=="}', 29287, N'/Upload/fe7571d4-bd49-436f-839f-711e0b85960e/2017/11/8.jpg', 0)
INSERT [FileEntity] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [FileType], [LastUpdateByUserId], [LastUpdateDate], [MetaJson], [Size], [Src], [Status]) VALUES (10, N'fe7571d4-bd49-436f-839f-711e0b85960e', CAST(N'2017-11-25T21:42:37.2849136' AS DateTime2), NULL, NULL, 1, NULL, NULL, N'{"Width":400,"Height":300,"ImageAlt":"9","ThumbnailFileName":"9_thumb.jpg","Base64PlaceHolder":"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAYABgAAD/2wCEAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDIBCQkJDAsMGA0NGDIhHCEyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMv/AABEIAB4AKAMBIgACEQEDEQH/xAGiAAABBQEBAQEBAQAAAAAAAAAAAQIDBAUGBwgJCgsQAAIBAwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNRYQcicRQygZGhCCNCscEVUtHwJDNicoIJChYXGBkaJSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6g4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2drh4uPk5ebn6Onq8fLz9PX29/j5+gEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoLEQACAQIEBAMEBwUEBAABAncAAQIDEQQFITEGEkFRB2FxEyIygQgUQpGhscEJIzNS8BVictEKFiQ04SXxFxgZGiYnKCkqNTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqCg4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2dri4+Tl5ufo6ery8/T19vf4+fr/2gAMAwEAAhEDEQA/APbjTTTmYKOf5U00DGGomqViM4zye1RkgjjmgCB6+Ia+33r4goA+2dPv2cymaQsBgKD61oRzLJ2PuK8tk+KHg+CMiy8R2ZYnJaayuhj0xhKZa/FLwyj7p/FVqpIAIis7og+/KVkpTi7NFtReqPQzMZHlYqwdGIDZyPbGP61CuvWZ17+xfmF15fmZ42ngEj64Ncgfir4GII/4SZcE5YfYLjn/AMcqAfE3wGJhP/wkUJnAx5v9nT7vz2VqyEegzCViPLZQO+RnNfEdfTE3xS8ISMuPFCAIwdMWdwOR0yPLr5noTuDP/9k="}', 21082, N'/Upload/fe7571d4-bd49-436f-839f-711e0b85960e/2017/11/9.jpg', 0)
INSERT [FileEntity] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [FileType], [LastUpdateByUserId], [LastUpdateDate], [MetaJson], [Size], [Src], [Status]) VALUES (13, N'fe7571d4-bd49-436f-839f-711e0b85960e', CAST(N'2017-11-25T22:46:47.8687058' AS DateTime2), NULL, NULL, 1, NULL, NULL, N'{"Width":400,"Height":300,"ImageAlt":"masteri-thao-dien","ThumbnailFileName":"masteri-thao-dien_thumb.jpg","Base64PlaceHolder":"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAYABgAAD/2wCEAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDIBCQkJDAsMGA0NGDIhHCEyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMv/AABEIAB4AKAMBIgACEQEDEQH/xAGiAAABBQEBAQEBAQAAAAAAAAAAAQIDBAUGBwgJCgsQAAIBAwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNRYQcicRQygZGhCCNCscEVUtHwJDNicoIJChYXGBkaJSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6g4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2drh4uPk5ebn6Onq8fLz9PX29/j5+gEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoLEQACAQIEBAMEBwUEBAABAncAAQIDEQQFITEGEkFRB2FxEyIygQgUQpGhscEJIzNS8BVictEKFiQ04SXxFxgZGiYnKCkqNTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqCg4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TFxsfIycrS09TV1tfY2dri4+Tl5ufo6ery8/T19vf4+fr/2gAMAwEAAhEDEQA/AN2XRj/dqo+kkcba7fULzSdPuha3l3FBMyhlV8jIJx1qCMWlzfPaRtmZUL4I4K5xkGvcjjDw5YWS2OHfSm/u1H/Y8jAkKAoIBZjgAk4HJ9637DUorvWbizeNAlvciIuT95SpOT75FVvFMF+NOvIIkhFrI8Rjz8jHDKeMnpwetJ5jp7u5ccBLm956Gfe+HPsL+VPMvn+UZdiDcMAgYz+Ir5zr6ru547jWIShMiPZOpKc/8tI6+VK87EYidZLn6X/Q9GhRjSb5fL9T6W8U674dvvEi3Vz/AKRbfZwg2o4ZWBz0OMU208a6YuLlZXguTE6SEgA9QVAPPGByK8s/4TpJgVkuNpxkOULc/lUzeNdOaNgZEyR18o9f++a53GVtGjW/kewN4p0Lyy9i0UNyXV/NY434Jzk8Z+h46VxniXXpdT1ue9yHhSKNVjDgjAGSSM9yx/KuQHi3SNrZeNmYYJeN+fyGOvtTJfFWkSRN86LK7Bm2o2CR/wABzj2qWp+QHWeGPFMi3iLd2xXZC6RGPGGy6tk8/wCyeleI16Qnibw/vExmHnFQDmN8DHpgCvN6ScvtFI//2Q=="}', 64585, N'/Upload/fe7571d4-bd49-436f-839f-711e0b85960e/2017/11/masteri-thao-dien.jpg', 0)
SET IDENTITY_INSERT [FileEntity] OFF
SET IDENTITY_INSERT [GeographicaLocation] ON 

INSERT [GeographicaLocation] ([Id], [JsonOptions], [Label], [LocationType], [Name], [ParentId]) VALUES (1, NULL, N'Hồ Chí Minh', 1, N'ho-chi-minh', NULL)
INSERT [GeographicaLocation] ([Id], [JsonOptions], [Label], [LocationType], [Name], [ParentId]) VALUES (2, NULL, N'Đà Nẵng', 1, N'da-nang', NULL)
SET IDENTITY_INSERT [GeographicaLocation] OFF
SET IDENTITY_INSERT [Package] ON 

INSERT [Package] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [LastUpdateByUserId], [LastUpdateDate], [Name], [Status]) VALUES (1, N'fe7571d4-bd49-436f-839f-711e0b85960e', CAST(N'2017-11-25T18:48:07.6330189' AS DateTime2), NULL, NULL, NULL, NULL, N'living-room', 0)
INSERT [Package] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [LastUpdateByUserId], [LastUpdateDate], [Name], [Status]) VALUES (2, N'fe7571d4-bd49-436f-839f-711e0b85960e', CAST(N'2017-11-25T21:33:12.0422128' AS DateTime2), NULL, NULL, NULL, NULL, N'living-room-2', 0)
INSERT [Package] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [LastUpdateByUserId], [LastUpdateDate], [Name], [Status]) VALUES (3, N'fe7571d4-bd49-436f-839f-711e0b85960e', CAST(N'2017-11-25T21:33:58.2335046' AS DateTime2), NULL, NULL, NULL, NULL, N'living-room-3', 0)
INSERT [Package] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [LastUpdateByUserId], [LastUpdateDate], [Name], [Status]) VALUES (4, N'fe7571d4-bd49-436f-839f-711e0b85960e', CAST(N'2017-11-25T21:35:49.9373087' AS DateTime2), NULL, NULL, NULL, NULL, N'living-room-4', 0)
INSERT [Package] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [LastUpdateByUserId], [LastUpdateDate], [Name], [Status]) VALUES (5, N'fe7571d4-bd49-436f-839f-711e0b85960e', CAST(N'2017-11-25T21:36:34.4829494' AS DateTime2), NULL, NULL, NULL, NULL, N'living-room-5', 0)
INSERT [Package] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [LastUpdateByUserId], [LastUpdateDate], [Name], [Status]) VALUES (6, N'fe7571d4-bd49-436f-839f-711e0b85960e', CAST(N'2017-11-25T21:37:13.2910715' AS DateTime2), NULL, NULL, NULL, NULL, N'living-room-6', 0)
INSERT [Package] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [LastUpdateByUserId], [LastUpdateDate], [Name], [Status]) VALUES (7, N'fe7571d4-bd49-436f-839f-711e0b85960e', CAST(N'2017-11-25T21:38:44.7073389' AS DateTime2), NULL, NULL, NULL, NULL, N'living-room-7', 0)
INSERT [Package] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [LastUpdateByUserId], [LastUpdateDate], [Name], [Status]) VALUES (8, N'fe7571d4-bd49-436f-839f-711e0b85960e', CAST(N'2017-11-25T21:43:04.9274198' AS DateTime2), NULL, NULL, NULL, NULL, N'living-room-9', 0)
INSERT [Package] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [LastUpdateByUserId], [LastUpdateDate], [Name], [Status]) VALUES (9, N'fe7571d4-bd49-436f-839f-711e0b85960e', CAST(N'2017-11-25T22:42:57.6412767' AS DateTime2), NULL, NULL, NULL, NULL, N'living-room-7', 0)
SET IDENTITY_INSERT [Package] OFF
SET IDENTITY_INSERT [PackageDetail] ON 

INSERT [PackageDetail] ([Id], [Area], [Language], [PackageId], [Price], [SortText], [Title]) VALUES (1, 100, NULL, 1, 50000000, N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', N'Living room')
INSERT [PackageDetail] ([Id], [Area], [Language], [PackageId], [Price], [SortText], [Title]) VALUES (2, 123, NULL, 2, 999999999, NULL, N'Living room 2')
INSERT [PackageDetail] ([Id], [Area], [Language], [PackageId], [Price], [SortText], [Title]) VALUES (3, 100, NULL, 3, 999999999, NULL, N'Living room 3')
INSERT [PackageDetail] ([Id], [Area], [Language], [PackageId], [Price], [SortText], [Title]) VALUES (4, 12, NULL, 4, 99999999, NULL, N'Living room 4')
INSERT [PackageDetail] ([Id], [Area], [Language], [PackageId], [Price], [SortText], [Title]) VALUES (5, 123, NULL, 5, 99999999, NULL, N'Living room 5')
INSERT [PackageDetail] ([Id], [Area], [Language], [PackageId], [Price], [SortText], [Title]) VALUES (6, 123, NULL, 6, 123123123, NULL, N'Living room 6')
INSERT [PackageDetail] ([Id], [Area], [Language], [PackageId], [Price], [SortText], [Title]) VALUES (7, 123, NULL, 7, 999999999, NULL, N'Living room 7')
INSERT [PackageDetail] ([Id], [Area], [Language], [PackageId], [Price], [SortText], [Title]) VALUES (8, 123, NULL, 8, 123, NULL, N'Living room 9')
INSERT [PackageDetail] ([Id], [Area], [Language], [PackageId], [Price], [SortText], [Title]) VALUES (9, 123123, NULL, 9, 999999999, NULL, N'Living room 7')
SET IDENTITY_INSERT [PackageDetail] OFF
INSERT [PackageFile] ([EntityId], [FileEntityId], [UsingType]) VALUES (1, 2, 0)
INSERT [PackageFile] ([EntityId], [FileEntityId], [UsingType]) VALUES (2, 3, 0)
INSERT [PackageFile] ([EntityId], [FileEntityId], [UsingType]) VALUES (3, 4, 0)
INSERT [PackageFile] ([EntityId], [FileEntityId], [UsingType]) VALUES (4, 5, 0)
INSERT [PackageFile] ([EntityId], [FileEntityId], [UsingType]) VALUES (5, 6, 0)
INSERT [PackageFile] ([EntityId], [FileEntityId], [UsingType]) VALUES (6, 7, 0)
INSERT [PackageFile] ([EntityId], [FileEntityId], [UsingType]) VALUES (7, 9, 0)
INSERT [PackageFile] ([EntityId], [FileEntityId], [UsingType]) VALUES (8, 10, 0)
INSERT [PackageFile] ([EntityId], [FileEntityId], [UsingType]) VALUES (9, 8, 0)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (3, 1)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (6, 1)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (8, 1)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (1, 2)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (2, 2)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (4, 2)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (5, 2)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (7, 2)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (9, 2)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (1, 3)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (2, 3)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (3, 3)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (4, 3)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (1, 4)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (2, 4)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (3, 4)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (4, 4)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (5, 4)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (6, 4)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (1, 5)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (2, 5)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (3, 5)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (4, 5)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (5, 5)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (9, 5)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (1, 6)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (2, 6)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (3, 6)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (6, 6)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (7, 6)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (8, 6)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (1, 7)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (2, 7)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (3, 7)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (5, 7)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (7, 7)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (1, 8)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (2, 8)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (3, 8)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (6, 8)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (7, 8)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (8, 8)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (1, 9)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (2, 9)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (3, 9)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (8, 9)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (1, 10)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (2, 10)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (3, 10)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (1, 11)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (2, 11)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (1, 12)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (2, 12)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (1, 13)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (4, 13)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (6, 13)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (9, 13)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (2, 14)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (3, 14)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (5, 14)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (7, 14)
INSERT [PackageTaxonomy] ([EntityId], [TaxonomyId]) VALUES (8, 14)
SET IDENTITY_INSERT [Project] ON 

INSERT [Project] ([Id], [CityId], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [LastUpdateByUserId], [LastUpdateDate], [Name], [Status]) VALUES (1, 1, N'fe7571d4-bd49-436f-839f-711e0b85960e', CAST(N'2017-11-25T22:48:45.8036716' AS DateTime2), NULL, NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [Project] OFF
SET IDENTITY_INSERT [ProjectBlock] ON 

INSERT [ProjectBlock] ([Id], [EntityTypeId], [PackageId], [ParentId], [ProjectId]) VALUES (1, 1, NULL, NULL, 1)
INSERT [ProjectBlock] ([Id], [EntityTypeId], [PackageId], [ParentId], [ProjectId]) VALUES (2, 2, NULL, 1, NULL)
INSERT [ProjectBlock] ([Id], [EntityTypeId], [PackageId], [ParentId], [ProjectId]) VALUES (3, 3, 9, 2, NULL)
SET IDENTITY_INSERT [ProjectBlock] OFF
SET IDENTITY_INSERT [ProjectBlockDetail] ON 

INSERT [ProjectBlockDetail] ([Id], [Label], [Language], [ProjectBlockId]) VALUES (1, N'3 bed room', NULL, 1)
INSERT [ProjectBlockDetail] ([Id], [Label], [Language], [ProjectBlockId]) VALUES (2, N'layout 1', NULL, 2)
INSERT [ProjectBlockDetail] ([Id], [Label], [Language], [ProjectBlockId]) VALUES (3, N'room 1', NULL, 3)
SET IDENTITY_INSERT [ProjectBlockDetail] OFF
INSERT [ProjectBlockFile] ([EntityId], [FileEntityId], [JsonData], [UsingType]) VALUES (2, 1, NULL, 0)
INSERT [ProjectBlockFile] ([EntityId], [FileEntityId], [JsonData], [UsingType]) VALUES (3, 6, N'{"X":47.1354179,"Y":48.26389,"Rotate":53,"Image":{"FileId":6,"Src":"/Upload/fe7571d4-bd49-436f-839f-711e0b85960e/2017/11/5.jpg","SrcThumb":"/Upload/fe7571d4-bd49-436f-839f-711e0b85960e/2017/11/5_thumb.jpg","Base64PlaceHolder":null,"Height":300,"Width":400}}', 1)
SET IDENTITY_INSERT [ProjectDetail] ON 

INSERT [ProjectDetail] ([Id], [Area], [Investor], [Language], [MapLatitude], [MapLongitude], [ProjectId], [StartedYear], [Street], [Title], [TotalApartment], [Website]) VALUES (1, 3000, N'Unknow', NULL, N'16.00000', N'108.00000', 1, 2010, N'Quận 2, Tp Ho Chi Minh', N'Masteri Thảo điền', 2500, N'https://masterithaodien.masteri.com.vn')
SET IDENTITY_INSERT [ProjectDetail] OFF
INSERT [ProjectFile] ([EntityId], [FileEntityId], [UsingType]) VALUES (1, 13, 0)
INSERT [ProjectTaxonomy] ([EntityId], [TaxonomyId]) VALUES (1, 17)
SET IDENTITY_INSERT [TaxonomyDetail] ON 

INSERT [TaxonomyDetail] ([Id], [CreateByUserId], [CreateDate], [EntityId], [Icon], [Label], [Language]) VALUES (1, NULL, NULL, 1, NULL, N'Cổ điển', N'vi')
INSERT [TaxonomyDetail] ([Id], [CreateByUserId], [CreateDate], [EntityId], [Icon], [Label], [Language]) VALUES (2, NULL, NULL, 2, NULL, N'Hiện đại', N'vi')
INSERT [TaxonomyDetail] ([Id], [CreateByUserId], [CreateDate], [EntityId], [Icon], [Label], [Language]) VALUES (3, NULL, NULL, 3, N'/images/package-carpentry.png', N'Carpentry', N'vi')
INSERT [TaxonomyDetail] ([Id], [CreateByUserId], [CreateDate], [EntityId], [Icon], [Label], [Language]) VALUES (4, NULL, NULL, 4, N'/images/package-feature-wall.png', N'Feature Wall', N'vi')
INSERT [TaxonomyDetail] ([Id], [CreateByUserId], [CreateDate], [EntityId], [Icon], [Label], [Language]) VALUES (5, NULL, NULL, 5, N'/images/package-plumbing.png', N'Plumbing', N'vi')
INSERT [TaxonomyDetail] ([Id], [CreateByUserId], [CreateDate], [EntityId], [Icon], [Label], [Language]) VALUES (6, NULL, NULL, 6, N'/images/package-electric-wiring.png', N'Electrical Wiring', N'vi')
INSERT [TaxonomyDetail] ([Id], [CreateByUserId], [CreateDate], [EntityId], [Icon], [Label], [Language]) VALUES (7, NULL, NULL, 7, N'/images/package-flooring.png', N'Flooring', N'vi')
INSERT [TaxonomyDetail] ([Id], [CreateByUserId], [CreateDate], [EntityId], [Icon], [Label], [Language]) VALUES (8, NULL, NULL, 8, N'/images/package-false-ceiling.png', N'False Ceiling', N'vi')
INSERT [TaxonomyDetail] ([Id], [CreateByUserId], [CreateDate], [EntityId], [Icon], [Label], [Language]) VALUES (9, NULL, NULL, 9, N'/images/package-furniture.png', N'Furniture', N'vi')
INSERT [TaxonomyDetail] ([Id], [CreateByUserId], [CreateDate], [EntityId], [Icon], [Label], [Language]) VALUES (10, NULL, NULL, 10, N'/images/package-decoration.png', N'Decoration', N'vi')
INSERT [TaxonomyDetail] ([Id], [CreateByUserId], [CreateDate], [EntityId], [Icon], [Label], [Language]) VALUES (11, NULL, NULL, 11, N'/images/package-design.png', N'Design', N'vi')
INSERT [TaxonomyDetail] ([Id], [CreateByUserId], [CreateDate], [EntityId], [Icon], [Label], [Language]) VALUES (12, NULL, NULL, 12, N'/images/package-painting.png', N'Painting', N'vi')
INSERT [TaxonomyDetail] ([Id], [CreateByUserId], [CreateDate], [EntityId], [Icon], [Label], [Language]) VALUES (13, NULL, NULL, 13, NULL, N'Chung cư', N'vi')
INSERT [TaxonomyDetail] ([Id], [CreateByUserId], [CreateDate], [EntityId], [Icon], [Label], [Language]) VALUES (14, NULL, NULL, 14, NULL, N'Landed House', N'vi')
INSERT [TaxonomyDetail] ([Id], [CreateByUserId], [CreateDate], [EntityId], [Icon], [Label], [Language]) VALUES (15, NULL, NULL, 15, NULL, N'Đang xây dựng', N'vi')
INSERT [TaxonomyDetail] ([Id], [CreateByUserId], [CreateDate], [EntityId], [Icon], [Label], [Language]) VALUES (16, NULL, NULL, 16, NULL, N'Hoàn thành', N'vi')
INSERT [TaxonomyDetail] ([Id], [CreateByUserId], [CreateDate], [EntityId], [Icon], [Label], [Language]) VALUES (17, NULL, NULL, 17, NULL, N'Căn hộ', N'vi')
SET IDENTITY_INSERT [TaxonomyDetail] OFF
SET IDENTITY_INSERT [TaxonomyEntity] ON 

INSERT [TaxonomyEntity] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [LastUpdateByUserId], [LastUpdateDate], [Name], [ParentId], [Status], [TaxonomyTypeId]) VALUES (1, NULL, CAST(N'2017-11-22T23:18:50.8634111' AS DateTime2), NULL, NULL, NULL, NULL, N'design-theme-classic', NULL, 0, 2)
INSERT [TaxonomyEntity] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [LastUpdateByUserId], [LastUpdateDate], [Name], [ParentId], [Status], [TaxonomyTypeId]) VALUES (2, NULL, CAST(N'2017-11-22T23:18:50.8641773' AS DateTime2), NULL, NULL, NULL, NULL, N'design-theme-modern', NULL, 0, 2)
INSERT [TaxonomyEntity] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [LastUpdateByUserId], [LastUpdateDate], [Name], [ParentId], [Status], [TaxonomyTypeId]) VALUES (3, NULL, CAST(N'2017-11-22T23:18:51.3963107' AS DateTime2), NULL, NULL, NULL, NULL, N'package-carpentry', NULL, 0, 3)
INSERT [TaxonomyEntity] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [LastUpdateByUserId], [LastUpdateDate], [Name], [ParentId], [Status], [TaxonomyTypeId]) VALUES (4, NULL, CAST(N'2017-11-22T23:18:51.3972025' AS DateTime2), NULL, NULL, NULL, NULL, N'package-feature-wall', NULL, 0, 3)
INSERT [TaxonomyEntity] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [LastUpdateByUserId], [LastUpdateDate], [Name], [ParentId], [Status], [TaxonomyTypeId]) VALUES (5, NULL, CAST(N'2017-11-22T23:18:51.3972065' AS DateTime2), NULL, NULL, NULL, NULL, N'package-plumbing', NULL, 0, 3)
INSERT [TaxonomyEntity] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [LastUpdateByUserId], [LastUpdateDate], [Name], [ParentId], [Status], [TaxonomyTypeId]) VALUES (6, NULL, CAST(N'2017-11-22T23:18:51.3972068' AS DateTime2), NULL, NULL, NULL, NULL, N'package-electrical-wiring', NULL, 0, 3)
INSERT [TaxonomyEntity] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [LastUpdateByUserId], [LastUpdateDate], [Name], [ParentId], [Status], [TaxonomyTypeId]) VALUES (7, NULL, CAST(N'2017-11-22T23:18:51.3972072' AS DateTime2), NULL, NULL, NULL, NULL, N'package-flooring', NULL, 0, 3)
INSERT [TaxonomyEntity] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [LastUpdateByUserId], [LastUpdateDate], [Name], [ParentId], [Status], [TaxonomyTypeId]) VALUES (8, NULL, CAST(N'2017-11-22T23:18:51.3972164' AS DateTime2), NULL, NULL, NULL, NULL, N'package-false-ceiling', NULL, 0, 3)
INSERT [TaxonomyEntity] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [LastUpdateByUserId], [LastUpdateDate], [Name], [ParentId], [Status], [TaxonomyTypeId]) VALUES (9, NULL, CAST(N'2017-11-22T23:18:51.3972168' AS DateTime2), NULL, NULL, NULL, NULL, N'package-furniture', NULL, 0, 3)
INSERT [TaxonomyEntity] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [LastUpdateByUserId], [LastUpdateDate], [Name], [ParentId], [Status], [TaxonomyTypeId]) VALUES (10, NULL, CAST(N'2017-11-22T23:18:51.3972171' AS DateTime2), NULL, NULL, NULL, NULL, N'package-decoration', NULL, 0, 3)
INSERT [TaxonomyEntity] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [LastUpdateByUserId], [LastUpdateDate], [Name], [ParentId], [Status], [TaxonomyTypeId]) VALUES (11, NULL, CAST(N'2017-11-22T23:18:51.3972174' AS DateTime2), NULL, NULL, NULL, NULL, N'package-design', NULL, 0, 3)
INSERT [TaxonomyEntity] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [LastUpdateByUserId], [LastUpdateDate], [Name], [ParentId], [Status], [TaxonomyTypeId]) VALUES (12, NULL, CAST(N'2017-11-22T23:18:51.3972178' AS DateTime2), NULL, NULL, NULL, NULL, N'package-painting', NULL, 0, 3)
INSERT [TaxonomyEntity] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [LastUpdateByUserId], [LastUpdateDate], [Name], [ParentId], [Status], [TaxonomyTypeId]) VALUES (13, NULL, CAST(N'2017-11-22T23:18:51.5314455' AS DateTime2), NULL, NULL, NULL, NULL, N'house-style-apartment', NULL, 0, 4)
INSERT [TaxonomyEntity] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [LastUpdateByUserId], [LastUpdateDate], [Name], [ParentId], [Status], [TaxonomyTypeId]) VALUES (14, NULL, CAST(N'2017-11-22T23:18:51.5314478' AS DateTime2), NULL, NULL, NULL, NULL, N'house-style-landed-house', NULL, 0, 4)
INSERT [TaxonomyEntity] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [LastUpdateByUserId], [LastUpdateDate], [Name], [ParentId], [Status], [TaxonomyTypeId]) VALUES (15, NULL, CAST(N'2017-11-22T23:18:51.5709023' AS DateTime2), NULL, NULL, NULL, NULL, N'project-status-under-construction', NULL, 0, 5)
INSERT [TaxonomyEntity] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [LastUpdateByUserId], [LastUpdateDate], [Name], [ParentId], [Status], [TaxonomyTypeId]) VALUES (16, NULL, CAST(N'2017-11-22T23:18:51.5709053' AS DateTime2), NULL, NULL, NULL, NULL, N'project-status-finish', NULL, 0, 5)
INSERT [TaxonomyEntity] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [LastUpdateByUserId], [LastUpdateDate], [Name], [ParentId], [Status], [TaxonomyTypeId]) VALUES (17, NULL, CAST(N'2017-11-24T23:19:46.8301816' AS DateTime2), NULL, NULL, NULL, NULL, N'project-type-apartment', NULL, 0, 6)
SET IDENTITY_INSERT [TaxonomyEntity] OFF
SET IDENTITY_INSERT [TaxonomyType] ON 

INSERT [TaxonomyType] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [EntityTypeId], [LastUpdateByUserId], [LastUpdateDate], [Name], [Status]) VALUES (2, NULL, CAST(N'2017-11-22T23:18:50.8623329' AS DateTime2), NULL, NULL, NULL, NULL, NULL, N'package-design-theme', 0)
INSERT [TaxonomyType] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [EntityTypeId], [LastUpdateByUserId], [LastUpdateDate], [Name], [Status]) VALUES (3, NULL, CAST(N'2017-11-22T23:18:51.3963084' AS DateTime2), NULL, NULL, NULL, NULL, NULL, N'package-include-item', 0)
INSERT [TaxonomyType] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [EntityTypeId], [LastUpdateByUserId], [LastUpdateDate], [Name], [Status]) VALUES (4, NULL, CAST(N'2017-11-22T23:18:51.5314442' AS DateTime2), NULL, NULL, NULL, NULL, NULL, N'package-house-style', 0)
INSERT [TaxonomyType] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [EntityTypeId], [LastUpdateByUserId], [LastUpdateDate], [Name], [Status]) VALUES (5, NULL, CAST(N'2017-11-22T23:18:51.5709003' AS DateTime2), NULL, NULL, NULL, NULL, NULL, N'project-status', 0)
INSERT [TaxonomyType] ([Id], [CreateByUserId], [CreateDate], [DeleteByUserId], [DeleteDate], [EntityTypeId], [LastUpdateByUserId], [LastUpdateDate], [Name], [Status]) VALUES (6, NULL, CAST(N'2017-11-24T23:19:46.8301802' AS DateTime2), NULL, NULL, NULL, NULL, NULL, N'project-type', 0)
SET IDENTITY_INSERT [TaxonomyType] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[AspNetRoleClaims]') AND name = N'IX_AspNetRoleClaims_RoleId')
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[AspNetRoles]') AND name = N'RoleNameIndex')
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[AspNetUserClaims]') AND name = N'IX_AspNetUserClaims_UserId')
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[AspNetUserLogins]') AND name = N'IX_AspNetUserLogins_UserId')
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[AspNetUserRoles]') AND name = N'IX_AspNetUserRoles_RoleId')
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[AspNetUsers]') AND name = N'EmailIndex')
CREATE NONCLUSTERED INDEX [EmailIndex] ON [AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[AspNetUsers]') AND name = N'UserNameIndex')
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [AK_EntityType_Name]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[EntityType]') AND name = N'AK_EntityType_Name')
ALTER TABLE [EntityType] ADD  CONSTRAINT [AK_EntityType_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_EntityType_CreateByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[EntityType]') AND name = N'IX_EntityType_CreateByUserId')
CREATE NONCLUSTERED INDEX [IX_EntityType_CreateByUserId] ON [EntityType]
(
	[CreateByUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_EntityType_DeleteByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[EntityType]') AND name = N'IX_EntityType_DeleteByUserId')
CREATE NONCLUSTERED INDEX [IX_EntityType_DeleteByUserId] ON [EntityType]
(
	[DeleteByUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_EntityType_LastUpdateByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[EntityType]') AND name = N'IX_EntityType_LastUpdateByUserId')
CREATE NONCLUSTERED INDEX [IX_EntityType_LastUpdateByUserId] ON [EntityType]
(
	[LastUpdateByUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [AK_FileEntity_Src]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[FileEntity]') AND name = N'AK_FileEntity_Src')
ALTER TABLE [FileEntity] ADD  CONSTRAINT [AK_FileEntity_Src] UNIQUE NONCLUSTERED 
(
	[Src] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FileEntity_CreateByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[FileEntity]') AND name = N'IX_FileEntity_CreateByUserId')
CREATE NONCLUSTERED INDEX [IX_FileEntity_CreateByUserId] ON [FileEntity]
(
	[CreateByUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FileEntity_DeleteByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[FileEntity]') AND name = N'IX_FileEntity_DeleteByUserId')
CREATE NONCLUSTERED INDEX [IX_FileEntity_DeleteByUserId] ON [FileEntity]
(
	[DeleteByUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FileEntity_LastUpdateByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[FileEntity]') AND name = N'IX_FileEntity_LastUpdateByUserId')
CREATE NONCLUSTERED INDEX [IX_FileEntity_LastUpdateByUserId] ON [FileEntity]
(
	[LastUpdateByUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_GeographicaLocation_ParentId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[GeographicaLocation]') AND name = N'IX_GeographicaLocation_ParentId')
CREATE NONCLUSTERED INDEX [IX_GeographicaLocation_ParentId] ON [GeographicaLocation]
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Package_CreateByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Package]') AND name = N'IX_Package_CreateByUserId')
CREATE NONCLUSTERED INDEX [IX_Package_CreateByUserId] ON [Package]
(
	[CreateByUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Package_DeleteByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Package]') AND name = N'IX_Package_DeleteByUserId')
CREATE NONCLUSTERED INDEX [IX_Package_DeleteByUserId] ON [Package]
(
	[DeleteByUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Package_LastUpdateByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Package]') AND name = N'IX_Package_LastUpdateByUserId')
CREATE NONCLUSTERED INDEX [IX_Package_LastUpdateByUserId] ON [Package]
(
	[LastUpdateByUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PackageDetail_PackageId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[PackageDetail]') AND name = N'IX_PackageDetail_PackageId')
CREATE NONCLUSTERED INDEX [IX_PackageDetail_PackageId] ON [PackageDetail]
(
	[PackageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PackageFile_FileEntityId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[PackageFile]') AND name = N'IX_PackageFile_FileEntityId')
CREATE NONCLUSTERED INDEX [IX_PackageFile_FileEntityId] ON [PackageFile]
(
	[FileEntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PackageTaxonomy_TaxonomyId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[PackageTaxonomy]') AND name = N'IX_PackageTaxonomy_TaxonomyId')
CREATE NONCLUSTERED INDEX [IX_PackageTaxonomy_TaxonomyId] ON [PackageTaxonomy]
(
	[TaxonomyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Project_CityId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Project]') AND name = N'IX_Project_CityId')
CREATE NONCLUSTERED INDEX [IX_Project_CityId] ON [Project]
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Project_CreateByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Project]') AND name = N'IX_Project_CreateByUserId')
CREATE NONCLUSTERED INDEX [IX_Project_CreateByUserId] ON [Project]
(
	[CreateByUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Project_DeleteByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Project]') AND name = N'IX_Project_DeleteByUserId')
CREATE NONCLUSTERED INDEX [IX_Project_DeleteByUserId] ON [Project]
(
	[DeleteByUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Project_LastUpdateByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Project]') AND name = N'IX_Project_LastUpdateByUserId')
CREATE NONCLUSTERED INDEX [IX_Project_LastUpdateByUserId] ON [Project]
(
	[LastUpdateByUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectBlock_EntityTypeId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[ProjectBlock]') AND name = N'IX_ProjectBlock_EntityTypeId')
CREATE NONCLUSTERED INDEX [IX_ProjectBlock_EntityTypeId] ON [ProjectBlock]
(
	[EntityTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectBlock_PackageId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[ProjectBlock]') AND name = N'IX_ProjectBlock_PackageId')
CREATE NONCLUSTERED INDEX [IX_ProjectBlock_PackageId] ON [ProjectBlock]
(
	[PackageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectBlock_ParentId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[ProjectBlock]') AND name = N'IX_ProjectBlock_ParentId')
CREATE NONCLUSTERED INDEX [IX_ProjectBlock_ParentId] ON [ProjectBlock]
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectBlock_ProjectId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[ProjectBlock]') AND name = N'IX_ProjectBlock_ProjectId')
CREATE NONCLUSTERED INDEX [IX_ProjectBlock_ProjectId] ON [ProjectBlock]
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectBlockDetail_ProjectBlockId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[ProjectBlockDetail]') AND name = N'IX_ProjectBlockDetail_ProjectBlockId')
CREATE NONCLUSTERED INDEX [IX_ProjectBlockDetail_ProjectBlockId] ON [ProjectBlockDetail]
(
	[ProjectBlockId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectBlockFile_FileEntityId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[ProjectBlockFile]') AND name = N'IX_ProjectBlockFile_FileEntityId')
CREATE NONCLUSTERED INDEX [IX_ProjectBlockFile_FileEntityId] ON [ProjectBlockFile]
(
	[FileEntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectDetail_ProjectId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[ProjectDetail]') AND name = N'IX_ProjectDetail_ProjectId')
CREATE NONCLUSTERED INDEX [IX_ProjectDetail_ProjectId] ON [ProjectDetail]
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectFile_FileEntityId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[ProjectFile]') AND name = N'IX_ProjectFile_FileEntityId')
CREATE NONCLUSTERED INDEX [IX_ProjectFile_FileEntityId] ON [ProjectFile]
(
	[FileEntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProjectTaxonomy_TaxonomyId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[ProjectTaxonomy]') AND name = N'IX_ProjectTaxonomy_TaxonomyId')
CREATE NONCLUSTERED INDEX [IX_ProjectTaxonomy_TaxonomyId] ON [ProjectTaxonomy]
(
	[TaxonomyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [AK_SettingEntity_Name]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[SettingEntity]') AND name = N'AK_SettingEntity_Name')
ALTER TABLE [SettingEntity] ADD  CONSTRAINT [AK_SettingEntity_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_SettingEntity_CreateByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[SettingEntity]') AND name = N'IX_SettingEntity_CreateByUserId')
CREATE NONCLUSTERED INDEX [IX_SettingEntity_CreateByUserId] ON [SettingEntity]
(
	[CreateByUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_SettingEntity_DeleteByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[SettingEntity]') AND name = N'IX_SettingEntity_DeleteByUserId')
CREATE NONCLUSTERED INDEX [IX_SettingEntity_DeleteByUserId] ON [SettingEntity]
(
	[DeleteByUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_SettingEntity_LastUpdateByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[SettingEntity]') AND name = N'IX_SettingEntity_LastUpdateByUserId')
CREATE NONCLUSTERED INDEX [IX_SettingEntity_LastUpdateByUserId] ON [SettingEntity]
(
	[LastUpdateByUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_SettingValue_SettingEntityId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[SettingValue]') AND name = N'IX_SettingValue_SettingEntityId')
CREATE NONCLUSTERED INDEX [IX_SettingValue_SettingEntityId] ON [SettingValue]
(
	[SettingEntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_TaxonomyDetail_CreateByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[TaxonomyDetail]') AND name = N'IX_TaxonomyDetail_CreateByUserId')
CREATE NONCLUSTERED INDEX [IX_TaxonomyDetail_CreateByUserId] ON [TaxonomyDetail]
(
	[CreateByUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TaxonomyDetail_EntityId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[TaxonomyDetail]') AND name = N'IX_TaxonomyDetail_EntityId')
CREATE NONCLUSTERED INDEX [IX_TaxonomyDetail_EntityId] ON [TaxonomyDetail]
(
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [AK_TaxonomyEntity_Name]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[TaxonomyEntity]') AND name = N'AK_TaxonomyEntity_Name')
ALTER TABLE [TaxonomyEntity] ADD  CONSTRAINT [AK_TaxonomyEntity_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_TaxonomyEntity_CreateByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[TaxonomyEntity]') AND name = N'IX_TaxonomyEntity_CreateByUserId')
CREATE NONCLUSTERED INDEX [IX_TaxonomyEntity_CreateByUserId] ON [TaxonomyEntity]
(
	[CreateByUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_TaxonomyEntity_DeleteByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[TaxonomyEntity]') AND name = N'IX_TaxonomyEntity_DeleteByUserId')
CREATE NONCLUSTERED INDEX [IX_TaxonomyEntity_DeleteByUserId] ON [TaxonomyEntity]
(
	[DeleteByUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_TaxonomyEntity_LastUpdateByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[TaxonomyEntity]') AND name = N'IX_TaxonomyEntity_LastUpdateByUserId')
CREATE NONCLUSTERED INDEX [IX_TaxonomyEntity_LastUpdateByUserId] ON [TaxonomyEntity]
(
	[LastUpdateByUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TaxonomyEntity_ParentId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[TaxonomyEntity]') AND name = N'IX_TaxonomyEntity_ParentId')
CREATE NONCLUSTERED INDEX [IX_TaxonomyEntity_ParentId] ON [TaxonomyEntity]
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TaxonomyEntity_TaxonomyTypeId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[TaxonomyEntity]') AND name = N'IX_TaxonomyEntity_TaxonomyTypeId')
CREATE NONCLUSTERED INDEX [IX_TaxonomyEntity_TaxonomyTypeId] ON [TaxonomyEntity]
(
	[TaxonomyTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [AK_TaxonomyType_Name]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[TaxonomyType]') AND name = N'AK_TaxonomyType_Name')
ALTER TABLE [TaxonomyType] ADD  CONSTRAINT [AK_TaxonomyType_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_TaxonomyType_CreateByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[TaxonomyType]') AND name = N'IX_TaxonomyType_CreateByUserId')
CREATE NONCLUSTERED INDEX [IX_TaxonomyType_CreateByUserId] ON [TaxonomyType]
(
	[CreateByUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_TaxonomyType_DeleteByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[TaxonomyType]') AND name = N'IX_TaxonomyType_DeleteByUserId')
CREATE NONCLUSTERED INDEX [IX_TaxonomyType_DeleteByUserId] ON [TaxonomyType]
(
	[DeleteByUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TaxonomyType_EntityTypeId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[TaxonomyType]') AND name = N'IX_TaxonomyType_EntityTypeId')
CREATE NONCLUSTERED INDEX [IX_TaxonomyType_EntityTypeId] ON [TaxonomyType]
(
	[EntityTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_TaxonomyType_LastUpdateByUserId]    Script Date: 11/28/2017 7:32:45 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[TaxonomyType]') AND name = N'IX_TaxonomyType_LastUpdateByUserId')
CREATE NONCLUSTERED INDEX [IX_TaxonomyType_LastUpdateByUserId] ON [TaxonomyType]
(
	[LastUpdateByUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_AspNetRoleClaims_AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[AspNetRoleClaims]'))
ALTER TABLE [AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [AspNetRoles] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_AspNetRoleClaims_AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[AspNetRoleClaims]'))
ALTER TABLE [AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_AspNetUserClaims_AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[AspNetUserClaims]'))
ALTER TABLE [AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_AspNetUserClaims_AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[AspNetUserClaims]'))
ALTER TABLE [AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_AspNetUserLogins_AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[AspNetUserLogins]'))
ALTER TABLE [AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_AspNetUserLogins_AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[AspNetUserLogins]'))
ALTER TABLE [AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_AspNetUserRoles_AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[AspNetUserRoles]'))
ALTER TABLE [AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [AspNetRoles] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_AspNetUserRoles_AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[AspNetUserRoles]'))
ALTER TABLE [AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_AspNetUserRoles_AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[AspNetUserRoles]'))
ALTER TABLE [AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_AspNetUserRoles_AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[AspNetUserRoles]'))
ALTER TABLE [AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_AspNetUserTokens_AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[AspNetUserTokens]'))
ALTER TABLE [AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_AspNetUserTokens_AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[AspNetUserTokens]'))
ALTER TABLE [AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_EntityType_AspNetUsers_CreateByUserId]') AND parent_object_id = OBJECT_ID(N'[EntityType]'))
ALTER TABLE [EntityType]  WITH CHECK ADD  CONSTRAINT [FK_EntityType_AspNetUsers_CreateByUserId] FOREIGN KEY([CreateByUserId])
REFERENCES [AspNetUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_EntityType_AspNetUsers_CreateByUserId]') AND parent_object_id = OBJECT_ID(N'[EntityType]'))
ALTER TABLE [EntityType] CHECK CONSTRAINT [FK_EntityType_AspNetUsers_CreateByUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_EntityType_AspNetUsers_DeleteByUserId]') AND parent_object_id = OBJECT_ID(N'[EntityType]'))
ALTER TABLE [EntityType]  WITH CHECK ADD  CONSTRAINT [FK_EntityType_AspNetUsers_DeleteByUserId] FOREIGN KEY([DeleteByUserId])
REFERENCES [AspNetUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_EntityType_AspNetUsers_DeleteByUserId]') AND parent_object_id = OBJECT_ID(N'[EntityType]'))
ALTER TABLE [EntityType] CHECK CONSTRAINT [FK_EntityType_AspNetUsers_DeleteByUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_EntityType_AspNetUsers_LastUpdateByUserId]') AND parent_object_id = OBJECT_ID(N'[EntityType]'))
ALTER TABLE [EntityType]  WITH CHECK ADD  CONSTRAINT [FK_EntityType_AspNetUsers_LastUpdateByUserId] FOREIGN KEY([LastUpdateByUserId])
REFERENCES [AspNetUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_EntityType_AspNetUsers_LastUpdateByUserId]') AND parent_object_id = OBJECT_ID(N'[EntityType]'))
ALTER TABLE [EntityType] CHECK CONSTRAINT [FK_EntityType_AspNetUsers_LastUpdateByUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_FileEntity_AspNetUsers_CreateByUserId]') AND parent_object_id = OBJECT_ID(N'[FileEntity]'))
ALTER TABLE [FileEntity]  WITH CHECK ADD  CONSTRAINT [FK_FileEntity_AspNetUsers_CreateByUserId] FOREIGN KEY([CreateByUserId])
REFERENCES [AspNetUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_FileEntity_AspNetUsers_CreateByUserId]') AND parent_object_id = OBJECT_ID(N'[FileEntity]'))
ALTER TABLE [FileEntity] CHECK CONSTRAINT [FK_FileEntity_AspNetUsers_CreateByUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_FileEntity_AspNetUsers_DeleteByUserId]') AND parent_object_id = OBJECT_ID(N'[FileEntity]'))
ALTER TABLE [FileEntity]  WITH CHECK ADD  CONSTRAINT [FK_FileEntity_AspNetUsers_DeleteByUserId] FOREIGN KEY([DeleteByUserId])
REFERENCES [AspNetUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_FileEntity_AspNetUsers_DeleteByUserId]') AND parent_object_id = OBJECT_ID(N'[FileEntity]'))
ALTER TABLE [FileEntity] CHECK CONSTRAINT [FK_FileEntity_AspNetUsers_DeleteByUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_FileEntity_AspNetUsers_LastUpdateByUserId]') AND parent_object_id = OBJECT_ID(N'[FileEntity]'))
ALTER TABLE [FileEntity]  WITH CHECK ADD  CONSTRAINT [FK_FileEntity_AspNetUsers_LastUpdateByUserId] FOREIGN KEY([LastUpdateByUserId])
REFERENCES [AspNetUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_FileEntity_AspNetUsers_LastUpdateByUserId]') AND parent_object_id = OBJECT_ID(N'[FileEntity]'))
ALTER TABLE [FileEntity] CHECK CONSTRAINT [FK_FileEntity_AspNetUsers_LastUpdateByUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_GeographicaLocation_GeographicaLocation_ParentId]') AND parent_object_id = OBJECT_ID(N'[GeographicaLocation]'))
ALTER TABLE [GeographicaLocation]  WITH CHECK ADD  CONSTRAINT [FK_GeographicaLocation_GeographicaLocation_ParentId] FOREIGN KEY([ParentId])
REFERENCES [GeographicaLocation] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_GeographicaLocation_GeographicaLocation_ParentId]') AND parent_object_id = OBJECT_ID(N'[GeographicaLocation]'))
ALTER TABLE [GeographicaLocation] CHECK CONSTRAINT [FK_GeographicaLocation_GeographicaLocation_ParentId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Package_AspNetUsers_CreateByUserId]') AND parent_object_id = OBJECT_ID(N'[Package]'))
ALTER TABLE [Package]  WITH CHECK ADD  CONSTRAINT [FK_Package_AspNetUsers_CreateByUserId] FOREIGN KEY([CreateByUserId])
REFERENCES [AspNetUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Package_AspNetUsers_CreateByUserId]') AND parent_object_id = OBJECT_ID(N'[Package]'))
ALTER TABLE [Package] CHECK CONSTRAINT [FK_Package_AspNetUsers_CreateByUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Package_AspNetUsers_DeleteByUserId]') AND parent_object_id = OBJECT_ID(N'[Package]'))
ALTER TABLE [Package]  WITH CHECK ADD  CONSTRAINT [FK_Package_AspNetUsers_DeleteByUserId] FOREIGN KEY([DeleteByUserId])
REFERENCES [AspNetUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Package_AspNetUsers_DeleteByUserId]') AND parent_object_id = OBJECT_ID(N'[Package]'))
ALTER TABLE [Package] CHECK CONSTRAINT [FK_Package_AspNetUsers_DeleteByUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Package_AspNetUsers_LastUpdateByUserId]') AND parent_object_id = OBJECT_ID(N'[Package]'))
ALTER TABLE [Package]  WITH CHECK ADD  CONSTRAINT [FK_Package_AspNetUsers_LastUpdateByUserId] FOREIGN KEY([LastUpdateByUserId])
REFERENCES [AspNetUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Package_AspNetUsers_LastUpdateByUserId]') AND parent_object_id = OBJECT_ID(N'[Package]'))
ALTER TABLE [Package] CHECK CONSTRAINT [FK_Package_AspNetUsers_LastUpdateByUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_PackageDetail_Package_PackageId]') AND parent_object_id = OBJECT_ID(N'[PackageDetail]'))
ALTER TABLE [PackageDetail]  WITH CHECK ADD  CONSTRAINT [FK_PackageDetail_Package_PackageId] FOREIGN KEY([PackageId])
REFERENCES [Package] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_PackageDetail_Package_PackageId]') AND parent_object_id = OBJECT_ID(N'[PackageDetail]'))
ALTER TABLE [PackageDetail] CHECK CONSTRAINT [FK_PackageDetail_Package_PackageId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_PackageFile_FileEntity_FileEntityId]') AND parent_object_id = OBJECT_ID(N'[PackageFile]'))
ALTER TABLE [PackageFile]  WITH CHECK ADD  CONSTRAINT [FK_PackageFile_FileEntity_FileEntityId] FOREIGN KEY([FileEntityId])
REFERENCES [FileEntity] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_PackageFile_FileEntity_FileEntityId]') AND parent_object_id = OBJECT_ID(N'[PackageFile]'))
ALTER TABLE [PackageFile] CHECK CONSTRAINT [FK_PackageFile_FileEntity_FileEntityId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_PackageFile_Package_EntityId]') AND parent_object_id = OBJECT_ID(N'[PackageFile]'))
ALTER TABLE [PackageFile]  WITH CHECK ADD  CONSTRAINT [FK_PackageFile_Package_EntityId] FOREIGN KEY([EntityId])
REFERENCES [Package] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_PackageFile_Package_EntityId]') AND parent_object_id = OBJECT_ID(N'[PackageFile]'))
ALTER TABLE [PackageFile] CHECK CONSTRAINT [FK_PackageFile_Package_EntityId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_PackageTaxonomy_Package_EntityId]') AND parent_object_id = OBJECT_ID(N'[PackageTaxonomy]'))
ALTER TABLE [PackageTaxonomy]  WITH CHECK ADD  CONSTRAINT [FK_PackageTaxonomy_Package_EntityId] FOREIGN KEY([EntityId])
REFERENCES [Package] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_PackageTaxonomy_Package_EntityId]') AND parent_object_id = OBJECT_ID(N'[PackageTaxonomy]'))
ALTER TABLE [PackageTaxonomy] CHECK CONSTRAINT [FK_PackageTaxonomy_Package_EntityId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_PackageTaxonomy_TaxonomyEntity_TaxonomyId]') AND parent_object_id = OBJECT_ID(N'[PackageTaxonomy]'))
ALTER TABLE [PackageTaxonomy]  WITH CHECK ADD  CONSTRAINT [FK_PackageTaxonomy_TaxonomyEntity_TaxonomyId] FOREIGN KEY([TaxonomyId])
REFERENCES [TaxonomyEntity] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_PackageTaxonomy_TaxonomyEntity_TaxonomyId]') AND parent_object_id = OBJECT_ID(N'[PackageTaxonomy]'))
ALTER TABLE [PackageTaxonomy] CHECK CONSTRAINT [FK_PackageTaxonomy_TaxonomyEntity_TaxonomyId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Project_AspNetUsers_CreateByUserId]') AND parent_object_id = OBJECT_ID(N'[Project]'))
ALTER TABLE [Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_AspNetUsers_CreateByUserId] FOREIGN KEY([CreateByUserId])
REFERENCES [AspNetUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Project_AspNetUsers_CreateByUserId]') AND parent_object_id = OBJECT_ID(N'[Project]'))
ALTER TABLE [Project] CHECK CONSTRAINT [FK_Project_AspNetUsers_CreateByUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Project_AspNetUsers_DeleteByUserId]') AND parent_object_id = OBJECT_ID(N'[Project]'))
ALTER TABLE [Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_AspNetUsers_DeleteByUserId] FOREIGN KEY([DeleteByUserId])
REFERENCES [AspNetUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Project_AspNetUsers_DeleteByUserId]') AND parent_object_id = OBJECT_ID(N'[Project]'))
ALTER TABLE [Project] CHECK CONSTRAINT [FK_Project_AspNetUsers_DeleteByUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Project_AspNetUsers_LastUpdateByUserId]') AND parent_object_id = OBJECT_ID(N'[Project]'))
ALTER TABLE [Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_AspNetUsers_LastUpdateByUserId] FOREIGN KEY([LastUpdateByUserId])
REFERENCES [AspNetUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Project_AspNetUsers_LastUpdateByUserId]') AND parent_object_id = OBJECT_ID(N'[Project]'))
ALTER TABLE [Project] CHECK CONSTRAINT [FK_Project_AspNetUsers_LastUpdateByUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Project_GeographicaLocation_CityId]') AND parent_object_id = OBJECT_ID(N'[Project]'))
ALTER TABLE [Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_GeographicaLocation_CityId] FOREIGN KEY([CityId])
REFERENCES [GeographicaLocation] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_Project_GeographicaLocation_CityId]') AND parent_object_id = OBJECT_ID(N'[Project]'))
ALTER TABLE [Project] CHECK CONSTRAINT [FK_Project_GeographicaLocation_CityId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectBlock_EntityType_EntityTypeId]') AND parent_object_id = OBJECT_ID(N'[ProjectBlock]'))
ALTER TABLE [ProjectBlock]  WITH CHECK ADD  CONSTRAINT [FK_ProjectBlock_EntityType_EntityTypeId] FOREIGN KEY([EntityTypeId])
REFERENCES [EntityType] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectBlock_EntityType_EntityTypeId]') AND parent_object_id = OBJECT_ID(N'[ProjectBlock]'))
ALTER TABLE [ProjectBlock] CHECK CONSTRAINT [FK_ProjectBlock_EntityType_EntityTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectBlock_Package_PackageId]') AND parent_object_id = OBJECT_ID(N'[ProjectBlock]'))
ALTER TABLE [ProjectBlock]  WITH CHECK ADD  CONSTRAINT [FK_ProjectBlock_Package_PackageId] FOREIGN KEY([PackageId])
REFERENCES [Package] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectBlock_Package_PackageId]') AND parent_object_id = OBJECT_ID(N'[ProjectBlock]'))
ALTER TABLE [ProjectBlock] CHECK CONSTRAINT [FK_ProjectBlock_Package_PackageId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectBlock_Project_ProjectId]') AND parent_object_id = OBJECT_ID(N'[ProjectBlock]'))
ALTER TABLE [ProjectBlock]  WITH CHECK ADD  CONSTRAINT [FK_ProjectBlock_Project_ProjectId] FOREIGN KEY([ProjectId])
REFERENCES [Project] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectBlock_Project_ProjectId]') AND parent_object_id = OBJECT_ID(N'[ProjectBlock]'))
ALTER TABLE [ProjectBlock] CHECK CONSTRAINT [FK_ProjectBlock_Project_ProjectId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectBlock_ProjectBlock_ParentId]') AND parent_object_id = OBJECT_ID(N'[ProjectBlock]'))
ALTER TABLE [ProjectBlock]  WITH CHECK ADD  CONSTRAINT [FK_ProjectBlock_ProjectBlock_ParentId] FOREIGN KEY([ParentId])
REFERENCES [ProjectBlock] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectBlock_ProjectBlock_ParentId]') AND parent_object_id = OBJECT_ID(N'[ProjectBlock]'))
ALTER TABLE [ProjectBlock] CHECK CONSTRAINT [FK_ProjectBlock_ProjectBlock_ParentId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectBlockDetail_ProjectBlock_ProjectBlockId]') AND parent_object_id = OBJECT_ID(N'[ProjectBlockDetail]'))
ALTER TABLE [ProjectBlockDetail]  WITH CHECK ADD  CONSTRAINT [FK_ProjectBlockDetail_ProjectBlock_ProjectBlockId] FOREIGN KEY([ProjectBlockId])
REFERENCES [ProjectBlock] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectBlockDetail_ProjectBlock_ProjectBlockId]') AND parent_object_id = OBJECT_ID(N'[ProjectBlockDetail]'))
ALTER TABLE [ProjectBlockDetail] CHECK CONSTRAINT [FK_ProjectBlockDetail_ProjectBlock_ProjectBlockId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectBlockFile_FileEntity_FileEntityId]') AND parent_object_id = OBJECT_ID(N'[ProjectBlockFile]'))
ALTER TABLE [ProjectBlockFile]  WITH CHECK ADD  CONSTRAINT [FK_ProjectBlockFile_FileEntity_FileEntityId] FOREIGN KEY([FileEntityId])
REFERENCES [FileEntity] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectBlockFile_FileEntity_FileEntityId]') AND parent_object_id = OBJECT_ID(N'[ProjectBlockFile]'))
ALTER TABLE [ProjectBlockFile] CHECK CONSTRAINT [FK_ProjectBlockFile_FileEntity_FileEntityId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectBlockFile_ProjectBlock_EntityId]') AND parent_object_id = OBJECT_ID(N'[ProjectBlockFile]'))
ALTER TABLE [ProjectBlockFile]  WITH CHECK ADD  CONSTRAINT [FK_ProjectBlockFile_ProjectBlock_EntityId] FOREIGN KEY([EntityId])
REFERENCES [ProjectBlock] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectBlockFile_ProjectBlock_EntityId]') AND parent_object_id = OBJECT_ID(N'[ProjectBlockFile]'))
ALTER TABLE [ProjectBlockFile] CHECK CONSTRAINT [FK_ProjectBlockFile_ProjectBlock_EntityId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectDetail_Project_ProjectId]') AND parent_object_id = OBJECT_ID(N'[ProjectDetail]'))
ALTER TABLE [ProjectDetail]  WITH CHECK ADD  CONSTRAINT [FK_ProjectDetail_Project_ProjectId] FOREIGN KEY([ProjectId])
REFERENCES [Project] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectDetail_Project_ProjectId]') AND parent_object_id = OBJECT_ID(N'[ProjectDetail]'))
ALTER TABLE [ProjectDetail] CHECK CONSTRAINT [FK_ProjectDetail_Project_ProjectId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectFile_FileEntity_FileEntityId]') AND parent_object_id = OBJECT_ID(N'[ProjectFile]'))
ALTER TABLE [ProjectFile]  WITH CHECK ADD  CONSTRAINT [FK_ProjectFile_FileEntity_FileEntityId] FOREIGN KEY([FileEntityId])
REFERENCES [FileEntity] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectFile_FileEntity_FileEntityId]') AND parent_object_id = OBJECT_ID(N'[ProjectFile]'))
ALTER TABLE [ProjectFile] CHECK CONSTRAINT [FK_ProjectFile_FileEntity_FileEntityId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectFile_Project_EntityId]') AND parent_object_id = OBJECT_ID(N'[ProjectFile]'))
ALTER TABLE [ProjectFile]  WITH CHECK ADD  CONSTRAINT [FK_ProjectFile_Project_EntityId] FOREIGN KEY([EntityId])
REFERENCES [Project] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectFile_Project_EntityId]') AND parent_object_id = OBJECT_ID(N'[ProjectFile]'))
ALTER TABLE [ProjectFile] CHECK CONSTRAINT [FK_ProjectFile_Project_EntityId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectTaxonomy_Project_EntityId]') AND parent_object_id = OBJECT_ID(N'[ProjectTaxonomy]'))
ALTER TABLE [ProjectTaxonomy]  WITH CHECK ADD  CONSTRAINT [FK_ProjectTaxonomy_Project_EntityId] FOREIGN KEY([EntityId])
REFERENCES [Project] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectTaxonomy_Project_EntityId]') AND parent_object_id = OBJECT_ID(N'[ProjectTaxonomy]'))
ALTER TABLE [ProjectTaxonomy] CHECK CONSTRAINT [FK_ProjectTaxonomy_Project_EntityId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectTaxonomy_TaxonomyEntity_TaxonomyId]') AND parent_object_id = OBJECT_ID(N'[ProjectTaxonomy]'))
ALTER TABLE [ProjectTaxonomy]  WITH CHECK ADD  CONSTRAINT [FK_ProjectTaxonomy_TaxonomyEntity_TaxonomyId] FOREIGN KEY([TaxonomyId])
REFERENCES [TaxonomyEntity] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_ProjectTaxonomy_TaxonomyEntity_TaxonomyId]') AND parent_object_id = OBJECT_ID(N'[ProjectTaxonomy]'))
ALTER TABLE [ProjectTaxonomy] CHECK CONSTRAINT [FK_ProjectTaxonomy_TaxonomyEntity_TaxonomyId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_SettingEntity_AspNetUsers_CreateByUserId]') AND parent_object_id = OBJECT_ID(N'[SettingEntity]'))
ALTER TABLE [SettingEntity]  WITH CHECK ADD  CONSTRAINT [FK_SettingEntity_AspNetUsers_CreateByUserId] FOREIGN KEY([CreateByUserId])
REFERENCES [AspNetUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_SettingEntity_AspNetUsers_CreateByUserId]') AND parent_object_id = OBJECT_ID(N'[SettingEntity]'))
ALTER TABLE [SettingEntity] CHECK CONSTRAINT [FK_SettingEntity_AspNetUsers_CreateByUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_SettingEntity_AspNetUsers_DeleteByUserId]') AND parent_object_id = OBJECT_ID(N'[SettingEntity]'))
ALTER TABLE [SettingEntity]  WITH CHECK ADD  CONSTRAINT [FK_SettingEntity_AspNetUsers_DeleteByUserId] FOREIGN KEY([DeleteByUserId])
REFERENCES [AspNetUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_SettingEntity_AspNetUsers_DeleteByUserId]') AND parent_object_id = OBJECT_ID(N'[SettingEntity]'))
ALTER TABLE [SettingEntity] CHECK CONSTRAINT [FK_SettingEntity_AspNetUsers_DeleteByUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_SettingEntity_AspNetUsers_LastUpdateByUserId]') AND parent_object_id = OBJECT_ID(N'[SettingEntity]'))
ALTER TABLE [SettingEntity]  WITH CHECK ADD  CONSTRAINT [FK_SettingEntity_AspNetUsers_LastUpdateByUserId] FOREIGN KEY([LastUpdateByUserId])
REFERENCES [AspNetUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_SettingEntity_AspNetUsers_LastUpdateByUserId]') AND parent_object_id = OBJECT_ID(N'[SettingEntity]'))
ALTER TABLE [SettingEntity] CHECK CONSTRAINT [FK_SettingEntity_AspNetUsers_LastUpdateByUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_SettingValue_SettingEntity_SettingEntityId]') AND parent_object_id = OBJECT_ID(N'[SettingValue]'))
ALTER TABLE [SettingValue]  WITH CHECK ADD  CONSTRAINT [FK_SettingValue_SettingEntity_SettingEntityId] FOREIGN KEY([SettingEntityId])
REFERENCES [SettingEntity] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_SettingValue_SettingEntity_SettingEntityId]') AND parent_object_id = OBJECT_ID(N'[SettingValue]'))
ALTER TABLE [SettingValue] CHECK CONSTRAINT [FK_SettingValue_SettingEntity_SettingEntityId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyDetail_AspNetUsers_CreateByUserId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyDetail]'))
ALTER TABLE [TaxonomyDetail]  WITH CHECK ADD  CONSTRAINT [FK_TaxonomyDetail_AspNetUsers_CreateByUserId] FOREIGN KEY([CreateByUserId])
REFERENCES [AspNetUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyDetail_AspNetUsers_CreateByUserId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyDetail]'))
ALTER TABLE [TaxonomyDetail] CHECK CONSTRAINT [FK_TaxonomyDetail_AspNetUsers_CreateByUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyDetail_TaxonomyEntity_EntityId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyDetail]'))
ALTER TABLE [TaxonomyDetail]  WITH CHECK ADD  CONSTRAINT [FK_TaxonomyDetail_TaxonomyEntity_EntityId] FOREIGN KEY([EntityId])
REFERENCES [TaxonomyEntity] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyDetail_TaxonomyEntity_EntityId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyDetail]'))
ALTER TABLE [TaxonomyDetail] CHECK CONSTRAINT [FK_TaxonomyDetail_TaxonomyEntity_EntityId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyEntity_AspNetUsers_CreateByUserId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyEntity]'))
ALTER TABLE [TaxonomyEntity]  WITH CHECK ADD  CONSTRAINT [FK_TaxonomyEntity_AspNetUsers_CreateByUserId] FOREIGN KEY([CreateByUserId])
REFERENCES [AspNetUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyEntity_AspNetUsers_CreateByUserId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyEntity]'))
ALTER TABLE [TaxonomyEntity] CHECK CONSTRAINT [FK_TaxonomyEntity_AspNetUsers_CreateByUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyEntity_AspNetUsers_DeleteByUserId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyEntity]'))
ALTER TABLE [TaxonomyEntity]  WITH CHECK ADD  CONSTRAINT [FK_TaxonomyEntity_AspNetUsers_DeleteByUserId] FOREIGN KEY([DeleteByUserId])
REFERENCES [AspNetUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyEntity_AspNetUsers_DeleteByUserId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyEntity]'))
ALTER TABLE [TaxonomyEntity] CHECK CONSTRAINT [FK_TaxonomyEntity_AspNetUsers_DeleteByUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyEntity_AspNetUsers_LastUpdateByUserId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyEntity]'))
ALTER TABLE [TaxonomyEntity]  WITH CHECK ADD  CONSTRAINT [FK_TaxonomyEntity_AspNetUsers_LastUpdateByUserId] FOREIGN KEY([LastUpdateByUserId])
REFERENCES [AspNetUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyEntity_AspNetUsers_LastUpdateByUserId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyEntity]'))
ALTER TABLE [TaxonomyEntity] CHECK CONSTRAINT [FK_TaxonomyEntity_AspNetUsers_LastUpdateByUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyEntity_TaxonomyEntity_ParentId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyEntity]'))
ALTER TABLE [TaxonomyEntity]  WITH CHECK ADD  CONSTRAINT [FK_TaxonomyEntity_TaxonomyEntity_ParentId] FOREIGN KEY([ParentId])
REFERENCES [TaxonomyEntity] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyEntity_TaxonomyEntity_ParentId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyEntity]'))
ALTER TABLE [TaxonomyEntity] CHECK CONSTRAINT [FK_TaxonomyEntity_TaxonomyEntity_ParentId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyEntity_TaxonomyType_TaxonomyTypeId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyEntity]'))
ALTER TABLE [TaxonomyEntity]  WITH CHECK ADD  CONSTRAINT [FK_TaxonomyEntity_TaxonomyType_TaxonomyTypeId] FOREIGN KEY([TaxonomyTypeId])
REFERENCES [TaxonomyType] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyEntity_TaxonomyType_TaxonomyTypeId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyEntity]'))
ALTER TABLE [TaxonomyEntity] CHECK CONSTRAINT [FK_TaxonomyEntity_TaxonomyType_TaxonomyTypeId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyType_AspNetUsers_CreateByUserId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyType]'))
ALTER TABLE [TaxonomyType]  WITH CHECK ADD  CONSTRAINT [FK_TaxonomyType_AspNetUsers_CreateByUserId] FOREIGN KEY([CreateByUserId])
REFERENCES [AspNetUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyType_AspNetUsers_CreateByUserId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyType]'))
ALTER TABLE [TaxonomyType] CHECK CONSTRAINT [FK_TaxonomyType_AspNetUsers_CreateByUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyType_AspNetUsers_DeleteByUserId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyType]'))
ALTER TABLE [TaxonomyType]  WITH CHECK ADD  CONSTRAINT [FK_TaxonomyType_AspNetUsers_DeleteByUserId] FOREIGN KEY([DeleteByUserId])
REFERENCES [AspNetUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyType_AspNetUsers_DeleteByUserId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyType]'))
ALTER TABLE [TaxonomyType] CHECK CONSTRAINT [FK_TaxonomyType_AspNetUsers_DeleteByUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyType_AspNetUsers_LastUpdateByUserId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyType]'))
ALTER TABLE [TaxonomyType]  WITH CHECK ADD  CONSTRAINT [FK_TaxonomyType_AspNetUsers_LastUpdateByUserId] FOREIGN KEY([LastUpdateByUserId])
REFERENCES [AspNetUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyType_AspNetUsers_LastUpdateByUserId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyType]'))
ALTER TABLE [TaxonomyType] CHECK CONSTRAINT [FK_TaxonomyType_AspNetUsers_LastUpdateByUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyType_EntityType_EntityTypeId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyType]'))
ALTER TABLE [TaxonomyType]  WITH CHECK ADD  CONSTRAINT [FK_TaxonomyType_EntityType_EntityTypeId] FOREIGN KEY([EntityTypeId])
REFERENCES [EntityType] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[FK_TaxonomyType_EntityType_EntityTypeId]') AND parent_object_id = OBJECT_ID(N'[TaxonomyType]'))
ALTER TABLE [TaxonomyType] CHECK CONSTRAINT [FK_TaxonomyType_EntityType_EntityTypeId]
GO
USE [master]
GO
ALTER DATABASE [Omi_HomeBuilder] SET  READ_WRITE 
GO
