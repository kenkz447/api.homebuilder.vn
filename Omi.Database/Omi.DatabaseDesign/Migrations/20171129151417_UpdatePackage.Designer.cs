﻿// <auto-generated />
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage;
using Microsoft.EntityFrameworkCore.Storage.Internal;
using Omi.DatabaseDesign;
using System;

namespace Omi.DatabaseDesign.Migrations
{
    [DbContext(typeof(OmiDbContext))]
    [Migration("20171129151417_UpdatePackage")]
    partial class UpdatePackage
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "2.0.0-rtm-26452")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRole", b =>
                {
                    b.Property<string>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken();

                    b.Property<string>("Name")
                        .HasMaxLength(256);

                    b.Property<string>("NormalizedName")
                        .HasMaxLength(256);

                    b.HasKey("Id");

                    b.HasIndex("NormalizedName")
                        .IsUnique()
                        .HasName("RoleNameIndex")
                        .HasFilter("[NormalizedName] IS NOT NULL");

                    b.ToTable("AspNetRoles");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<string>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("ClaimType");

                    b.Property<string>("ClaimValue");

                    b.Property<string>("RoleId")
                        .IsRequired();

                    b.HasKey("Id");

                    b.HasIndex("RoleId");

                    b.ToTable("AspNetRoleClaims");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<string>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("ClaimType");

                    b.Property<string>("ClaimValue");

                    b.Property<string>("UserId")
                        .IsRequired();

                    b.HasKey("Id");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserClaims");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<string>", b =>
                {
                    b.Property<string>("LoginProvider");

                    b.Property<string>("ProviderKey");

                    b.Property<string>("ProviderDisplayName");

                    b.Property<string>("UserId")
                        .IsRequired();

                    b.HasKey("LoginProvider", "ProviderKey");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserLogins");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserRole<string>", b =>
                {
                    b.Property<string>("UserId");

                    b.Property<string>("RoleId");

                    b.HasKey("UserId", "RoleId");

                    b.HasIndex("RoleId");

                    b.ToTable("AspNetUserRoles");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<string>", b =>
                {
                    b.Property<string>("UserId");

                    b.Property<string>("LoginProvider");

                    b.Property<string>("Name");

                    b.Property<string>("Value");

                    b.HasKey("UserId", "LoginProvider", "Name");

                    b.ToTable("AspNetUserTokens");
                });

            modelBuilder.Entity("Omi.Data.ApplicationUser", b =>
                {
                    b.Property<string>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("AccessFailedCount");

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken();

                    b.Property<string>("Email")
                        .HasMaxLength(256);

                    b.Property<bool>("EmailConfirmed");

                    b.Property<bool>("LockoutEnabled");

                    b.Property<DateTimeOffset?>("LockoutEnd");

                    b.Property<string>("NormalizedEmail")
                        .HasMaxLength(256);

                    b.Property<string>("NormalizedUserName")
                        .HasMaxLength(256);

                    b.Property<string>("PasswordHash");

                    b.Property<string>("PhoneNumber");

                    b.Property<bool>("PhoneNumberConfirmed");

                    b.Property<string>("SecurityStamp");

                    b.Property<bool>("TwoFactorEnabled");

                    b.Property<string>("UserName")
                        .HasMaxLength(256);

                    b.HasKey("Id");

                    b.HasIndex("NormalizedEmail")
                        .HasName("EmailIndex");

                    b.HasIndex("NormalizedUserName")
                        .IsUnique()
                        .HasName("UserNameIndex")
                        .HasFilter("[NormalizedUserName] IS NOT NULL");

                    b.ToTable("AspNetUsers");
                });

            modelBuilder.Entity("Omi.Modules.FileAndMedia.Entities.FileEntity", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("CreateByUserId");

                    b.Property<DateTime?>("CreateDate");

                    b.Property<string>("DeleteByUserId");

                    b.Property<DateTime?>("DeleteDate");

                    b.Property<int>("FileType");

                    b.Property<string>("LastUpdateByUserId");

                    b.Property<DateTime?>("LastUpdateDate");

                    b.Property<string>("MetaJson");

                    b.Property<long>("Size");

                    b.Property<string>("Src")
                        .IsRequired();

                    b.Property<int>("Status");

                    b.HasKey("Id");

                    b.HasAlternateKey("Src");

                    b.HasIndex("CreateByUserId");

                    b.HasIndex("DeleteByUserId");

                    b.HasIndex("LastUpdateByUserId");

                    b.ToTable("FileEntity");
                });

            modelBuilder.Entity("Omi.Modules.HomeBuilder.Entities.Package", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("CreateByUserId");

                    b.Property<DateTime?>("CreateDate");

                    b.Property<string>("DeleteByUserId");

                    b.Property<DateTime?>("DeleteDate");

                    b.Property<bool?>("IsPerspective");

                    b.Property<string>("LastUpdateByUserId");

                    b.Property<DateTime?>("LastUpdateDate");

                    b.Property<string>("Name");

                    b.Property<long?>("ProjectBlockId");

                    b.Property<int>("Status");

                    b.HasKey("Id");

                    b.HasIndex("CreateByUserId");

                    b.HasIndex("DeleteByUserId");

                    b.HasIndex("LastUpdateByUserId");

                    b.HasIndex("ProjectBlockId")
                        .IsUnique()
                        .HasFilter("[ProjectBlockId] IS NOT NULL");

                    b.ToTable("Package");
                });

            modelBuilder.Entity("Omi.Modules.HomeBuilder.Entities.PackageDetail", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("Area");

                    b.Property<string>("Language");

                    b.Property<long>("PackageId");

                    b.Property<int>("Price");

                    b.Property<string>("SortText");

                    b.Property<string>("Title");

                    b.HasKey("Id");

                    b.HasIndex("PackageId");

                    b.ToTable("PackageDetail");
                });

            modelBuilder.Entity("Omi.Modules.HomeBuilder.Entities.PackageFile", b =>
                {
                    b.Property<long>("EntityId");

                    b.Property<long>("FileEntityId");

                    b.Property<int>("UsingType");

                    b.HasKey("EntityId", "FileEntityId");

                    b.HasIndex("FileEntityId");

                    b.ToTable("PackageFile");
                });

            modelBuilder.Entity("Omi.Modules.HomeBuilder.Entities.PackageTaxonomy", b =>
                {
                    b.Property<long>("EntityId");

                    b.Property<long>("TaxonomyId");

                    b.HasKey("EntityId", "TaxonomyId");

                    b.HasIndex("TaxonomyId");

                    b.ToTable("PackageTaxonomy");
                });

            modelBuilder.Entity("Omi.Modules.HomeBuilder.Entities.Project", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<long>("CityId");

                    b.Property<string>("CreateByUserId");

                    b.Property<DateTime?>("CreateDate");

                    b.Property<string>("DeleteByUserId");

                    b.Property<DateTime?>("DeleteDate");

                    b.Property<string>("LastUpdateByUserId");

                    b.Property<DateTime?>("LastUpdateDate");

                    b.Property<string>("Name");

                    b.Property<int>("Status");

                    b.HasKey("Id");

                    b.HasIndex("CityId");

                    b.HasIndex("CreateByUserId");

                    b.HasIndex("DeleteByUserId");

                    b.HasIndex("LastUpdateByUserId");

                    b.ToTable("Project");
                });

            modelBuilder.Entity("Omi.Modules.HomeBuilder.Entities.ProjectBlock", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<long>("EntityTypeId");

                    b.Property<long?>("PackageId");

                    b.Property<long?>("ParentId");

                    b.Property<long?>("ProjectId");

                    b.HasKey("Id");

                    b.HasIndex("EntityTypeId");

                    b.HasIndex("ParentId");

                    b.HasIndex("ProjectId");

                    b.ToTable("ProjectBlock");
                });

            modelBuilder.Entity("Omi.Modules.HomeBuilder.Entities.ProjectBlockDetail", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("Area");

                    b.Property<int>("BedRoomCount");

                    b.Property<string>("Label");

                    b.Property<string>("Language");

                    b.Property<long?>("ProjectBlockId");

                    b.Property<int>("ToiletCount");

                    b.Property<int>("TotalRoomOfLayout");

                    b.HasKey("Id");

                    b.HasIndex("ProjectBlockId");

                    b.ToTable("ProjectBlockDetail");
                });

            modelBuilder.Entity("Omi.Modules.HomeBuilder.Entities.ProjectBlockFile", b =>
                {
                    b.Property<long>("EntityId");

                    b.Property<long>("FileEntityId");

                    b.Property<string>("JsonData");

                    b.Property<int>("UsingType");

                    b.HasKey("EntityId", "FileEntityId");

                    b.HasIndex("FileEntityId");

                    b.ToTable("ProjectBlockFile");
                });

            modelBuilder.Entity("Omi.Modules.HomeBuilder.Entities.ProjectDetail", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("Area");

                    b.Property<string>("Investor");

                    b.Property<string>("Language");

                    b.Property<string>("MapLatitude");

                    b.Property<string>("MapLongitude");

                    b.Property<long>("ProjectId");

                    b.Property<int>("StartedYear");

                    b.Property<string>("Street");

                    b.Property<string>("Title");

                    b.Property<int>("TotalApartment");

                    b.Property<string>("Website");

                    b.HasKey("Id");

                    b.HasIndex("ProjectId");

                    b.ToTable("ProjectDetail");
                });

            modelBuilder.Entity("Omi.Modules.HomeBuilder.Entities.ProjectFile", b =>
                {
                    b.Property<long>("EntityId");

                    b.Property<long>("FileEntityId");

                    b.Property<int>("UsingType");

                    b.HasKey("EntityId", "FileEntityId");

                    b.HasIndex("FileEntityId");

                    b.ToTable("ProjectFile");
                });

            modelBuilder.Entity("Omi.Modules.HomeBuilder.Entities.ProjectTaxonomy", b =>
                {
                    b.Property<long>("EntityId");

                    b.Property<long>("TaxonomyId");

                    b.HasKey("EntityId", "TaxonomyId");

                    b.HasIndex("TaxonomyId");

                    b.ToTable("ProjectTaxonomy");
                });

            modelBuilder.Entity("Omi.Modules.Location.Entities.GeographicaLocation", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("JsonOptions");

                    b.Property<string>("Label")
                        .IsRequired();

                    b.Property<int>("LocationType");

                    b.Property<string>("Name")
                        .IsRequired();

                    b.Property<long?>("ParentId");

                    b.HasKey("Id");

                    b.HasIndex("ParentId");

                    b.ToTable("GeographicaLocation");
                });

            modelBuilder.Entity("Omi.Modules.ModuleBase.Entities.EntityType", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("CreateByUserId");

                    b.Property<DateTime?>("CreateDate");

                    b.Property<string>("DeleteByUserId");

                    b.Property<DateTime?>("DeleteDate");

                    b.Property<string>("LastUpdateByUserId");

                    b.Property<DateTime?>("LastUpdateDate");

                    b.Property<string>("Name")
                        .IsRequired();

                    b.Property<int>("Status");

                    b.HasKey("Id");

                    b.HasAlternateKey("Name");

                    b.HasIndex("CreateByUserId");

                    b.HasIndex("DeleteByUserId");

                    b.HasIndex("LastUpdateByUserId");

                    b.ToTable("EntityType");
                });

            modelBuilder.Entity("Omi.Modules.ModuleBase.Entities.TaxonomyDetail", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("CreateByUserId");

                    b.Property<DateTime?>("CreateDate");

                    b.Property<long>("EntityId");

                    b.Property<string>("Icon");

                    b.Property<string>("Label");

                    b.Property<string>("Language");

                    b.HasKey("Id");

                    b.HasIndex("CreateByUserId");

                    b.HasIndex("EntityId");

                    b.ToTable("TaxonomyDetail");
                });

            modelBuilder.Entity("Omi.Modules.ModuleBase.Entities.TaxonomyEntity", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("CreateByUserId");

                    b.Property<DateTime?>("CreateDate");

                    b.Property<string>("DeleteByUserId");

                    b.Property<DateTime?>("DeleteDate");

                    b.Property<string>("LastUpdateByUserId");

                    b.Property<DateTime?>("LastUpdateDate");

                    b.Property<string>("Name")
                        .IsRequired();

                    b.Property<long?>("ParentId");

                    b.Property<int>("Status");

                    b.Property<long>("TaxonomyTypeId");

                    b.HasKey("Id");

                    b.HasAlternateKey("Name");

                    b.HasIndex("CreateByUserId");

                    b.HasIndex("DeleteByUserId");

                    b.HasIndex("LastUpdateByUserId");

                    b.HasIndex("ParentId");

                    b.HasIndex("TaxonomyTypeId");

                    b.ToTable("TaxonomyEntity");
                });

            modelBuilder.Entity("Omi.Modules.ModuleBase.Entities.TaxonomyType", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("CreateByUserId");

                    b.Property<DateTime?>("CreateDate");

                    b.Property<string>("DeleteByUserId");

                    b.Property<DateTime?>("DeleteDate");

                    b.Property<long?>("EntityTypeId");

                    b.Property<string>("LastUpdateByUserId");

                    b.Property<DateTime?>("LastUpdateDate");

                    b.Property<string>("Name")
                        .IsRequired();

                    b.Property<int>("Status");

                    b.HasKey("Id");

                    b.HasAlternateKey("Name");

                    b.HasIndex("CreateByUserId");

                    b.HasIndex("DeleteByUserId");

                    b.HasIndex("EntityTypeId");

                    b.HasIndex("LastUpdateByUserId");

                    b.ToTable("TaxonomyType");
                });

            modelBuilder.Entity("Omi.Modules.Setting.Entities.SettingEntity", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("CreateByUserId");

                    b.Property<DateTime?>("CreateDate");

                    b.Property<string>("DeleteByUserId");

                    b.Property<DateTime?>("DeleteDate");

                    b.Property<string>("LastUpdateByUserId");

                    b.Property<DateTime?>("LastUpdateDate");

                    b.Property<string>("Name")
                        .IsRequired();

                    b.Property<int>("Status");

                    b.HasKey("Id");

                    b.HasAlternateKey("Name");

                    b.HasIndex("CreateByUserId");

                    b.HasIndex("DeleteByUserId");

                    b.HasIndex("LastUpdateByUserId");

                    b.ToTable("SettingEntity");
                });

            modelBuilder.Entity("Omi.Modules.Setting.Entities.SettingValue", b =>
                {
                    b.Property<long>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Language");

                    b.Property<string>("Name");

                    b.Property<long>("SettingEntityId");

                    b.Property<string>("Value");

                    b.HasKey("Id");

                    b.HasIndex("SettingEntityId");

                    b.ToTable("SettingValue");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<string>", b =>
                {
                    b.HasOne("Microsoft.AspNetCore.Identity.IdentityRole")
                        .WithMany()
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<string>", b =>
                {
                    b.HasOne("Omi.Data.ApplicationUser")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<string>", b =>
                {
                    b.HasOne("Omi.Data.ApplicationUser")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserRole<string>", b =>
                {
                    b.HasOne("Microsoft.AspNetCore.Identity.IdentityRole")
                        .WithMany()
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("Omi.Data.ApplicationUser")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<string>", b =>
                {
                    b.HasOne("Omi.Data.ApplicationUser")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Omi.Modules.FileAndMedia.Entities.FileEntity", b =>
                {
                    b.HasOne("Omi.Data.ApplicationUser", "CreateByUser")
                        .WithMany()
                        .HasForeignKey("CreateByUserId");

                    b.HasOne("Omi.Data.ApplicationUser", "DeleteByUser")
                        .WithMany()
                        .HasForeignKey("DeleteByUserId");

                    b.HasOne("Omi.Data.ApplicationUser", "LastUpdateByUser")
                        .WithMany()
                        .HasForeignKey("LastUpdateByUserId");
                });

            modelBuilder.Entity("Omi.Modules.HomeBuilder.Entities.Package", b =>
                {
                    b.HasOne("Omi.Data.ApplicationUser", "CreateByUser")
                        .WithMany()
                        .HasForeignKey("CreateByUserId");

                    b.HasOne("Omi.Data.ApplicationUser", "DeleteByUser")
                        .WithMany()
                        .HasForeignKey("DeleteByUserId");

                    b.HasOne("Omi.Data.ApplicationUser", "LastUpdateByUser")
                        .WithMany()
                        .HasForeignKey("LastUpdateByUserId");

                    b.HasOne("Omi.Modules.HomeBuilder.Entities.ProjectBlock", "ProjectBlock")
                        .WithOne("Package")
                        .HasForeignKey("Omi.Modules.HomeBuilder.Entities.Package", "ProjectBlockId");
                });

            modelBuilder.Entity("Omi.Modules.HomeBuilder.Entities.PackageDetail", b =>
                {
                    b.HasOne("Omi.Modules.HomeBuilder.Entities.Package", "Package")
                        .WithMany("Details")
                        .HasForeignKey("PackageId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Omi.Modules.HomeBuilder.Entities.PackageFile", b =>
                {
                    b.HasOne("Omi.Modules.HomeBuilder.Entities.Package", "Entity")
                        .WithMany("EnitityFiles")
                        .HasForeignKey("EntityId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("Omi.Modules.FileAndMedia.Entities.FileEntity", "FileEntity")
                        .WithMany()
                        .HasForeignKey("FileEntityId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Omi.Modules.HomeBuilder.Entities.PackageTaxonomy", b =>
                {
                    b.HasOne("Omi.Modules.HomeBuilder.Entities.Package", "Entity")
                        .WithMany("EntityTaxonomies")
                        .HasForeignKey("EntityId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("Omi.Modules.ModuleBase.Entities.TaxonomyEntity", "Taxonomy")
                        .WithMany()
                        .HasForeignKey("TaxonomyId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Omi.Modules.HomeBuilder.Entities.Project", b =>
                {
                    b.HasOne("Omi.Modules.Location.Entities.GeographicaLocation", "City")
                        .WithMany()
                        .HasForeignKey("CityId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("Omi.Data.ApplicationUser", "CreateByUser")
                        .WithMany()
                        .HasForeignKey("CreateByUserId");

                    b.HasOne("Omi.Data.ApplicationUser", "DeleteByUser")
                        .WithMany()
                        .HasForeignKey("DeleteByUserId");

                    b.HasOne("Omi.Data.ApplicationUser", "LastUpdateByUser")
                        .WithMany()
                        .HasForeignKey("LastUpdateByUserId");
                });

            modelBuilder.Entity("Omi.Modules.HomeBuilder.Entities.ProjectBlock", b =>
                {
                    b.HasOne("Omi.Modules.ModuleBase.Entities.EntityType", "EntityType")
                        .WithMany()
                        .HasForeignKey("EntityTypeId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("Omi.Modules.HomeBuilder.Entities.ProjectBlock", "Parent")
                        .WithMany("Children")
                        .HasForeignKey("ParentId");

                    b.HasOne("Omi.Modules.HomeBuilder.Entities.Project", "Project")
                        .WithMany("ProjectBlocks")
                        .HasForeignKey("ProjectId");
                });

            modelBuilder.Entity("Omi.Modules.HomeBuilder.Entities.ProjectBlockDetail", b =>
                {
                    b.HasOne("Omi.Modules.HomeBuilder.Entities.ProjectBlock", "ProjectBlock")
                        .WithMany("ProjectBlockDetails")
                        .HasForeignKey("ProjectBlockId");
                });

            modelBuilder.Entity("Omi.Modules.HomeBuilder.Entities.ProjectBlockFile", b =>
                {
                    b.HasOne("Omi.Modules.HomeBuilder.Entities.ProjectBlock", "Entity")
                        .WithMany("ProjectBlockFiles")
                        .HasForeignKey("EntityId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("Omi.Modules.FileAndMedia.Entities.FileEntity", "FileEntity")
                        .WithMany()
                        .HasForeignKey("FileEntityId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Omi.Modules.HomeBuilder.Entities.ProjectDetail", b =>
                {
                    b.HasOne("Omi.Modules.HomeBuilder.Entities.Project", "Project")
                        .WithMany("Details")
                        .HasForeignKey("ProjectId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Omi.Modules.HomeBuilder.Entities.ProjectFile", b =>
                {
                    b.HasOne("Omi.Modules.HomeBuilder.Entities.Project", "Entity")
                        .WithMany("EnitityFiles")
                        .HasForeignKey("EntityId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("Omi.Modules.FileAndMedia.Entities.FileEntity", "FileEntity")
                        .WithMany()
                        .HasForeignKey("FileEntityId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Omi.Modules.HomeBuilder.Entities.ProjectTaxonomy", b =>
                {
                    b.HasOne("Omi.Modules.HomeBuilder.Entities.Project", "Entity")
                        .WithMany("EntityTaxonomies")
                        .HasForeignKey("EntityId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("Omi.Modules.ModuleBase.Entities.TaxonomyEntity", "Taxonomy")
                        .WithMany()
                        .HasForeignKey("TaxonomyId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Omi.Modules.Location.Entities.GeographicaLocation", b =>
                {
                    b.HasOne("Omi.Modules.Location.Entities.GeographicaLocation", "Parent")
                        .WithMany()
                        .HasForeignKey("ParentId");
                });

            modelBuilder.Entity("Omi.Modules.ModuleBase.Entities.EntityType", b =>
                {
                    b.HasOne("Omi.Data.ApplicationUser", "CreateByUser")
                        .WithMany()
                        .HasForeignKey("CreateByUserId");

                    b.HasOne("Omi.Data.ApplicationUser", "DeleteByUser")
                        .WithMany()
                        .HasForeignKey("DeleteByUserId");

                    b.HasOne("Omi.Data.ApplicationUser", "LastUpdateByUser")
                        .WithMany()
                        .HasForeignKey("LastUpdateByUserId");
                });

            modelBuilder.Entity("Omi.Modules.ModuleBase.Entities.TaxonomyDetail", b =>
                {
                    b.HasOne("Omi.Data.ApplicationUser", "CreateByUser")
                        .WithMany()
                        .HasForeignKey("CreateByUserId");

                    b.HasOne("Omi.Modules.ModuleBase.Entities.TaxonomyEntity", "Entity")
                        .WithMany("Details")
                        .HasForeignKey("EntityId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Omi.Modules.ModuleBase.Entities.TaxonomyEntity", b =>
                {
                    b.HasOne("Omi.Data.ApplicationUser", "CreateByUser")
                        .WithMany()
                        .HasForeignKey("CreateByUserId");

                    b.HasOne("Omi.Data.ApplicationUser", "DeleteByUser")
                        .WithMany()
                        .HasForeignKey("DeleteByUserId");

                    b.HasOne("Omi.Data.ApplicationUser", "LastUpdateByUser")
                        .WithMany()
                        .HasForeignKey("LastUpdateByUserId");

                    b.HasOne("Omi.Modules.ModuleBase.Entities.TaxonomyEntity", "Parent")
                        .WithMany("Children")
                        .HasForeignKey("ParentId");

                    b.HasOne("Omi.Modules.ModuleBase.Entities.TaxonomyType", "TaxonomyType")
                        .WithMany()
                        .HasForeignKey("TaxonomyTypeId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Omi.Modules.ModuleBase.Entities.TaxonomyType", b =>
                {
                    b.HasOne("Omi.Data.ApplicationUser", "CreateByUser")
                        .WithMany()
                        .HasForeignKey("CreateByUserId");

                    b.HasOne("Omi.Data.ApplicationUser", "DeleteByUser")
                        .WithMany()
                        .HasForeignKey("DeleteByUserId");

                    b.HasOne("Omi.Modules.ModuleBase.Entities.EntityType", "EntityType")
                        .WithMany("TaxonomyTypes")
                        .HasForeignKey("EntityTypeId");

                    b.HasOne("Omi.Data.ApplicationUser", "LastUpdateByUser")
                        .WithMany()
                        .HasForeignKey("LastUpdateByUserId");
                });

            modelBuilder.Entity("Omi.Modules.Setting.Entities.SettingEntity", b =>
                {
                    b.HasOne("Omi.Data.ApplicationUser", "CreateByUser")
                        .WithMany()
                        .HasForeignKey("CreateByUserId");

                    b.HasOne("Omi.Data.ApplicationUser", "DeleteByUser")
                        .WithMany()
                        .HasForeignKey("DeleteByUserId");

                    b.HasOne("Omi.Data.ApplicationUser", "LastUpdateByUser")
                        .WithMany()
                        .HasForeignKey("LastUpdateByUserId");
                });

            modelBuilder.Entity("Omi.Modules.Setting.Entities.SettingValue", b =>
                {
                    b.HasOne("Omi.Modules.Setting.Entities.SettingEntity", "SettingEntity")
                        .WithMany("SettingValues")
                        .HasForeignKey("SettingEntityId")
                        .OnDelete(DeleteBehavior.Cascade);
                });
#pragma warning restore 612, 618
        }
    }
}
