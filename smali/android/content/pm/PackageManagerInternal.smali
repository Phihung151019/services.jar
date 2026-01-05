.class public abstract Landroid/content/pm/PackageManagerInternal;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public abstract canAccessComponent(IILandroid/content/ComponentName;)Z
.end method

.method public abstract canQueryPackage(ILjava/lang/String;)Z
.end method

.method public abstract filterAppAccess(IILjava/lang/String;Z)Z
.end method

.method public abstract forEachInstalledPackage(ILjava/util/function/Consumer;)V
.end method

.method public abstract forEachPackage(Ljava/util/function/Consumer;)V
.end method

.method public abstract forEachPackageSetting(Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda10;)V
.end method

.method public abstract forEachPackageState(Ljava/util/function/Consumer;)V
.end method

.method public abstract getApplicationInfo(IIJLjava/lang/String;)Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract getIncrementalStatesInfo(IILjava/lang/String;)Landroid/content/pm/IncrementalStatesInfo;
.end method

.method public abstract getInstalledApplications(IIJ)Ljava/util/List;
.end method

.method public abstract getInstantAppPackageName(I)Ljava/lang/String;
.end method

.method public abstract getKnownPackageNames(II)[Ljava/lang/String;
.end method

.method public abstract getLegacyPermissions()Lcom/android/server/pm/permission/LegacyPermissionSettings;
.end method

.method public abstract getNameForUid(I)Ljava/lang/String;
.end method

.method public abstract getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;
.end method

.method public abstract getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;
.end method

.method public abstract getPackageInfo(IIJLjava/lang/String;)Landroid/content/pm/PackageInfo;
.end method

.method public abstract getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;
.end method

.method public abstract getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;
.end method

.method public abstract getPackageUid(Ljava/lang/String;JI)I
.end method

.method public abstract getSharedUserPackagesForPackage(ILjava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getSuspendedDialogInfo(Ljava/lang/String;Landroid/content/pm/UserPackage;I)Landroid/content/pm/SuspendDialogInfo;
.end method

.method public abstract getSuspendedPackageLauncherExtras(ILjava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract getSystemUiServiceComponent()Landroid/content/ComponentName;
.end method

.method public abstract getUidTargetSdkVersion(I)I
.end method

.method public abstract grantImplicitAccess(ILandroid/content/Intent;IIZZ)V
.end method

.method public abstract hasInstantApplicationMetadata(ILjava/lang/String;)Z
.end method

.method public abstract hasSignatureCapability(II)Z
.end method

.method public abstract isInstantApp(Ljava/lang/String;I)Z
.end method

.method public abstract isPackageEphemeral(ILjava/lang/String;)Z
.end method

.method public abstract isPackageFrozen(IILjava/lang/String;)Z
.end method

.method public abstract isPackageSuspended(ILjava/lang/String;)Z
.end method

.method public abstract isPermissionsReviewRequired(ILjava/lang/String;)Z
.end method

.method public abstract isPlatformSigned(Ljava/lang/String;)Z
.end method

.method public abstract isSameApp(IIJLjava/lang/String;)Z
.end method

.method public abstract notifyComponentUsed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onPackageProcessKilledForUninstall(Ljava/lang/String;)V
.end method

.method public abstract queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;
.end method

.method public abstract reconcileAppsData(IIZ)V
.end method

.method public abstract registerInstalledLoadingProgressCallback(Ljava/lang/String;Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;I)Z
.end method

.method public abstract removeIsolatedUid(I)V
.end method

.method public abstract setEnabledOverlayPackages(ILandroid/util/ArrayMap;Ljava/util/Set;Ljava/util/Set;)V
.end method

.method public abstract setPackagesSuspendedByAdmin(IZ[Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract shutdown()V
.end method

.method public abstract snapshot()Lcom/android/server/pm/Computer;
.end method

.method public abstract wasPackageEverLaunched(ILjava/lang/String;)Z
.end method

.method public abstract wasPackageStopped(ILjava/lang/String;)Z
.end method

.method public abstract writePermissionSettings([IZ)V
.end method

.method public abstract writeSettings(Z)V
.end method
