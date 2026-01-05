.class public final Lcom/android/server/am/ContentProviderHelper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final PROCESS_STATE_STATS_FORMAT:[I


# instance fields
.field public final mCloneProfileAuthorityRedirectionCache:Ljava/util/Map;

.field public final mLaunchingProviders:Ljava/util/ArrayList;

.field public final mProcessStateStatsLongs:[J

.field public final mProviderMap:Lcom/android/server/am/ProviderMap;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public mSystemProvidersInstalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x220

    const/16 v1, 0x2820

    const/16 v2, 0x20

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ContentProviderHelper;->PROCESS_STATE_STATS_FORMAT:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mCloneProfileAuthorityRedirectionCache:Ljava/util/Map;

    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mProcessStateStatsLongs:[J

    iput-object p1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz p2, :cond_0

    new-instance p2, Lcom/android/server/am/ProviderMap;

    invoke-direct {p2, p1}, Lcom/android/server/am/ProviderMap;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    return-void
.end method

.method public static checkTime(JLjava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x32

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Slow operation: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms so far, now at "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContentProviderHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static hasProviderConnectionLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessProviderRecord;->getProviderAt(I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final checkAssociationAndPermissionLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;IIZLjava/lang/String;J)V
    .locals 9

    move-wide/from16 v7, p7

    const/4 v3, 0x0

    if-nez p1, :cond_1

    iget-object v4, p2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v5, p3, v4, v3}, Lcom/android/server/am/ActivityManagerService;->validateAssociationAllowedLocked(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    const-string v4, "<null>"

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;)V

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v5, v4}, Lcom/android/server/am/PackageList;->searchEachPackage(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_0
    if-nez v4, :cond_4

    const-string/jumbo v4, "getContentProviderImpl: before checkContentProviderPermission"

    invoke-static {v7, v8, v4}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    move-object v4, v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    move-object v0, p0

    move v4, p4

    move v5, p5

    move-object v1, p2

    goto :goto_1

    :cond_2
    move-object v6, v4

    move-object v0, p0

    move-object v1, p2

    move v5, p5

    move v4, p4

    :goto_1
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ContentProviderHelper;->checkContentProviderPermission(Landroid/content/pm/ProviderInfo;IIIZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "getContentProviderImpl: after checkContentProviderPermission"

    invoke-static {v7, v8, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    return-void

    :cond_3
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Content provider lookup "

    const-string v2, " failed: association not allowed with package "

    move-object v3, p6

    invoke-static {v1, p6, v2, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final checkContentProviderPermission(Landroid/content/pm/ProviderInfo;IIIZLjava/lang/String;)Ljava/lang/String;
    .locals 12

    move/from16 v3, p4

    move/from16 v8, p5

    invoke-static {p3}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const-class v0, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;

    if-eqz v0, :cond_11

    invoke-interface {v0, p1}, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;->canAccessContentProviderFromSdkSandbox(Landroid/content/pm/ProviderInfo;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "ContentProvider access not allowed from sdk sandbox UID. ProviderInfo: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/pm/ProviderInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v9, 0x0

    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v8, :cond_7

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, -0x2

    if-eq v3, v4, :cond_3

    const/4 v4, -0x3

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    move v10, v3

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    move v10, v0

    :goto_2
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eq v10, v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    check-cast v0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    invoke-virtual {v0, p3, p1, v10, v8}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_6

    :cond_4
    move v11, v2

    goto :goto_3

    :cond_5
    move v11, v9

    :goto_3
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "checkContentProviderPermissionLocked "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v6, v0

    if-eq v0, v10, :cond_6

    goto :goto_4

    :cond_6
    move v9, v11

    goto :goto_4

    :cond_7
    move/from16 v6, p4

    :goto_4
    iget-object v2, p1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v5, p1, Landroid/content/pm/ProviderInfo;->exported:Z

    const/4 v3, 0x0

    move v0, p2

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    move-result v2

    if-nez v2, :cond_8

    goto :goto_6

    :cond_8
    iget-object v2, p1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v5, p1, Landroid/content/pm/ProviderInfo;->exported:Z

    const/4 v3, 0x0

    move v0, p2

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    move-result v2

    if-nez v2, :cond_9

    goto :goto_6

    :cond_9
    iget-object v7, p1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-eqz v7, :cond_c

    array-length v0, v7

    :goto_5
    if-lez v0, :cond_c

    add-int/lit8 v10, v0, -0x1

    aget-object v11, v7, v10

    invoke-virtual {v11}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v5, p1, Landroid/content/pm/ProviderInfo;->exported:Z

    const/4 v3, 0x0

    move v0, p2

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    move-result v2

    if-nez v2, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v11}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v5, p1, Landroid/content/pm/ProviderInfo;->exported:Z

    const/4 v3, 0x0

    move v0, p2

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    move-result v2

    if-nez v2, :cond_b

    goto :goto_6

    :cond_b
    move v0, v10

    goto :goto_5

    :cond_c
    if-nez v9, :cond_d

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    check-cast p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    invoke-virtual {p0, p3, p1, v6, v8}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result p0

    if-eqz p0, :cond_d

    :goto_6
    const/4 p0, 0x0

    return-object p0

    :cond_d
    iget-boolean p0, p1, Landroid/content/pm/ProviderInfo;->exported:Z

    if-nez p0, :cond_e

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, " that is not exported from UID "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :cond_e
    const-string/jumbo p0, "android.permission.MANAGE_DOCUMENTS"

    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const-string p0, " requires that you obtain access using ACTION_OPEN_DOCUMENT or related APIs"

    goto :goto_7

    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, " requires "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " or "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Permission Denial: opening provider "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_10

    move-object/from16 p1, p6

    goto :goto_8

    :cond_10
    const-string p1, "(null)"

    :goto_8
    const-string v2, " (pid="

    const-string v3, ", uid="

    invoke-static {p2, p1, v2, v3, v0}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContentProviderHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "SdkSandboxManagerLocal not found when checking whether SDK sandbox uid may access the contentprovider."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final cleanupAppInLaunchingProvidersLocked(Lcom/android/server/am/ProcessRecord;Z)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ContentProviderRecord;

    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-eq v4, p1, :cond_0

    goto :goto_1

    :cond_0
    iget v4, v3, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    add-int/2addr v4, v1

    iput v4, v3, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_1

    move p2, v1

    :cond_1
    if-nez p2, :cond_3

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    iget-boolean v4, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    if-nez v4, :cond_3

    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/am/ContentProviderHelper;->removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public final decProviderCountLocked(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ZZZ)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p3}, Lcom/android/server/am/ProcessStateController;->removeExternalProviderClient(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;)Z

    return v0

    :cond_0
    iget-object p2, p1, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget p3, p1, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    iget v1, p1, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    add-int/2addr p3, v1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x1

    if-le p3, p2, :cond_1

    invoke-virtual {p1, p4}, Lcom/android/server/am/ContentProviderConnection;->decrementCount(Z)I

    return v0

    :cond_1
    if-eqz p5, :cond_2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    new-instance p5, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;

    invoke-direct {p5, p0, p1, p4, p6}, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ContentProviderConnection;ZZ)V

    const-wide/16 p0, 0x1388

    invoke-virtual {p3, p5, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return p2

    :cond_2
    invoke-virtual {p0, p1, p4, p6}, Lcom/android/server/am/ContentProviderHelper;->handleProviderRemoval(Lcom/android/server/am/ContentProviderConnection;ZZ)V

    return p2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final dumpProvidersLocked(Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V
    .locals 10

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move v3, p3

    :goto_0
    array-length v7, p2

    if-ge v3, v7, :cond_5

    aget-object v7, p2, v3

    const-string v8, "--"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_2

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/16 v8, 0x10

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    if-nez v5, :cond_3

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v9

    :cond_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    if-nez v6, :cond_4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    const-string v2, "ACTIVITY MANAGER CONTENT PROVIDERS (dumpsys activity providers)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    iget-object v2, v7, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v5, 0x0

    if-lez v2, :cond_6

    iget-object v6, v7, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    const-string v4, "  Published single-user content providers (by class):"

    move-object v1, p1

    move v2, p4

    move-object v3, p5

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProviderMap;->dumpProvidersByClassLocked(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z

    move-result v5

    :cond_6
    const/4 v8, 0x0

    move v9, v8

    :goto_3
    iget-object v1, v7, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v9, v1, :cond_7

    iget-object v1, v7, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Published user "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " content providers (by class):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move v2, p4

    move-object v3, p5

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProviderMap;->dumpProvidersByClassLocked(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z

    move-result v4

    or-int/2addr v5, v4

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    if-eqz p4, :cond_8

    iget-object v2, v7, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    const-string v4, "  Single-user authority to provider mappings:"

    invoke-static {p1, p5, v4, v5, v2}, Lcom/android/server/am/ProviderMap;->dumpProvidersByNameLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z

    move-result v2

    or-int/2addr v2, v5

    move v5, v2

    move v2, v8

    :goto_4
    iget-object v4, v7, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "  User "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v7, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " authority to provider mappings:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v7, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-static {p1, p5, v4, v5, v6}, Lcom/android/server/am/ProviderMap;->dumpProvidersByNameLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Z

    move-result v4

    or-int/2addr v5, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_c

    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    move v6, v5

    :goto_5
    if-ltz v2, :cond_c

    iget-object v7, p0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ContentProviderRecord;

    if-eqz p5, :cond_9

    iget-object v9, v7, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_6

    :cond_9
    if-nez v8, :cond_b

    if-eqz v6, :cond_a

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_a
    const-string v5, "  Launching content providers:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v5, v4

    move v6, v5

    move v8, v6

    :cond_b
    const-string v9, "  Launching #"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v9, ": "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_c
    if-nez v5, :cond_d

    const-string v0, "  (nothing)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public final generateApplicationProvidersLocked(Lcom/android/server/am/ProcessRecord;)Ljava/util/List;
    .locals 13

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const-wide/32 v3, 0x10000c00

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryContentProviders(Ljava/lang/String;IJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    iget-object v3, v2, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, v2, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_a

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/content/pm/ProviderInfo;

    iget-object v5, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v8, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v7, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v8, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget v10, v8, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v7, v9, v10}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v11

    iget v5, v8, Landroid/content/pm/ProviderInfo;->flags:I

    iget-object v6, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v6, 0x20000000

    and-int/2addr v5, v6

    const/4 v12, 0x1

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, v8, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v6, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v8, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget v9, v8, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-static {v5, v6, v7, v9}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    move v5, v12

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    if-eqz v5, :cond_3

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eqz v5, :cond_3

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_6

    :cond_3
    iget-object v5, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v5

    iget-object v6, v8, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v7, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    move v6, v3

    goto :goto_5

    :cond_5
    :goto_4
    move v6, v12

    :goto_5
    if-eqz v5, :cond_6

    if-nez v6, :cond_6

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    new-instance v10, Landroid/content/ComponentName;

    iget-object v5, v8, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v6, v8, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v5, v6, v10}, Lcom/android/server/am/ProviderMap;->getProviderByClass(ILandroid/content/ComponentName;)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v5

    if-nez v5, :cond_7

    new-instance v6, Lcom/android/server/am/ContentProviderRecord;

    iget-object v7, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct/range {v6 .. v11}, Lcom/android/server/am/ContentProviderRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ProviderInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;Z)V

    iget-object v5, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v5, v10, v6}, Lcom/android/server/am/ProviderMap;->putProviderByClass(Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;)V

    move-object v5, v6

    :cond_7
    iget-object v6, v8, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v5, v8, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-eqz v5, :cond_8

    const-string/jumbo v5, "android"

    iget-object v6, v8, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_8
    iget-object v5, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v9, v5, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v5, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p1, v6, v9, v10, v5}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)V

    :cond_9
    iget-object v5, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    :goto_6
    add-int/2addr v4, v12

    goto/16 :goto_0

    :cond_a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_7

    :cond_b
    return-object v0

    :catch_0
    :goto_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/ContentProviderHolder;
    .locals 9

    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "getContentProvider"

    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eqz p2, :cond_1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v1, v4, p2}, Lcom/android/server/appop/AppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Given calling package "

    const-string v2, " does not match caller\'s uid "

    invoke-static {v4, v1, p2, v2}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v2, p3

    move v8, p4

    move v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderImpl(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZI)Landroid/app/ContentProviderHolder;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "null IApplicationThread when getting content provider "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentProviderHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getContentProviderImpl(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZI)Landroid/app/ContentProviderHolder;
    .locals 10

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/ContentProviderHelper;->getContentProviderImpl(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZII)Landroid/app/ContentProviderHolder;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p1, p0, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    sget-object p2, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    invoke-static/range {p8 .. p8}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getPersonaManager()Lcom/android/server/pm/PersonaManagerService;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getPersonaManager()Lcom/android/server/pm/PersonaManagerService;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationPresent()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getPersonaManager()Lcom/android/server/pm/PersonaManagerService;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/pm/PersonaManagerService;->isInSeparatedAppsOnly(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "blocking ContentProvider: "

    const-string/jumbo p2, "from caller: "

    const-string/jumbo p3, "from targetPackage: "

    move/from16 v8, p8

    invoke-static {v8, p1, p2, p5, p3}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const-string p2, " for appseparation"

    const-string p3, "KNOX: AppSeparation"

    invoke-static {p1, p0, p2, p3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final getContentProviderImpl(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZII)Landroid/app/ContentProviderHolder;
    .locals 51

    move-object/from16 v1, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move/from16 v13, p8

    move/from16 v0, p9

    const-string/jumbo v10, "No package info for content provider "

    const-string/jumbo v11, "Unable to launch app "

    const-string v12, "Cannot access system provider: \'"

    const-string v2, "Existing provider "

    const-string/jumbo v3, "Unable to find app for caller "

    iget-object v4, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v5

    if-eqz v14, :cond_1

    const/16 v16, 0x0

    iget-object v7, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v14}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") when getting content provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    move-object/from16 v16, v4

    goto/16 :goto_41

    :cond_1
    const/16 v16, 0x0

    move-object/from16 v7, v16

    :goto_0
    const/4 v3, -0x1

    if-nez v14, :cond_2

    if-eq v0, v3, :cond_2

    iget-object v3, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v18, v2

    :try_start_1
    iget-object v2, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    monitor-exit v3

    move-object v2, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw v0

    :cond_2
    move-object/from16 v18, v2

    move-object v2, v7

    :goto_1
    const-string/jumbo v0, "getContentProviderImpl: getProviderByName"

    invoke-static {v8, v9, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, v13}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/content/pm/UserProperties;->isMediaSharedWithParent()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1, v15}, Lcom/android/server/am/ContentProviderHelper;->isAuthorityRedirectedForCloneProfileCached(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v20, v3

    move-object/from16 v14, v16

    :cond_5
    :goto_3
    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    :goto_4
    iget-object v14, v1, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v14, v13, v15}, Lcom/android/server/am/ProviderMap;->getProviderByName(ILjava/lang/String;)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v14

    invoke-virtual {v1, v15}, Lcom/android/server/am/ContentProviderHelper;->isAuthorityRedirectedForCloneProfileCached(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    move/from16 v20, v3

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object v21

    if-eqz v21, :cond_5

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/UserProperties;->isMediaSharedWithParent()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v3

    if-ne v3, v13, :cond_5

    const/4 v3, 0x0

    goto :goto_5

    :cond_7
    move/from16 v20, v3

    goto :goto_3

    :goto_5
    if-nez v14, :cond_c

    if-eqz v13, :cond_c

    iget-object v14, v1, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    move/from16 v21, v3

    const/4 v3, 0x0

    invoke-virtual {v14, v3, v15}, Lcom/android/server/am/ProviderMap;->getProviderByName(ILjava/lang/String;)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v14

    if-eqz v14, :cond_b

    iget-object v3, v14, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    move-wide/from16 v22, v5

    iget-object v5, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v3, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move-object/from16 v24, v5

    iget-object v5, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-wide/from16 v25, v8

    iget-object v8, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget v9, v3, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v5, v8, v9}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    if-nez v7, :cond_8

    move/from16 v6, p4

    goto :goto_6

    :cond_8
    iget v6, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    :goto_6
    iget-object v8, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v8}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x0

    :goto_7
    const/4 v6, 0x0

    goto :goto_a

    :cond_9
    invoke-virtual {v1, v15}, Lcom/android/server/am/ContentProviderHelper;->isAuthorityRedirectedForCloneProfileCached(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz v20, :cond_a

    invoke-virtual {v0, v13}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    move v5, v0

    goto :goto_7

    :cond_a
    move v5, v13

    move-object/from16 v3, v16

    move-object v14, v3

    :goto_8
    move/from16 v6, v21

    goto :goto_a

    :cond_b
    :goto_9
    move-wide/from16 v22, v5

    move-wide/from16 v25, v8

    move v5, v13

    move-object/from16 v3, v16

    goto :goto_8

    :cond_c
    move/from16 v21, v3

    goto :goto_9

    :goto_a
    if-eqz v14, :cond_e

    iget-object v0, v14, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_e

    iget-boolean v8, v0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    xor-int/lit8 v9, v8, 0x1

    if-eqz v8, :cond_d

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "ContentProviderHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v3

    iget-object v3, v14, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was killed by AM but isn\'t really dead"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v14, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v21, v0

    move/from16 v24, v9

    goto :goto_b

    :cond_d
    move-object/from16 v20, v3

    move/from16 v24, v9

    move-object/from16 v21, v16

    goto :goto_b

    :cond_e
    move-object/from16 v20, v3

    move-object/from16 v21, v16

    const/16 v24, 0x0

    :goto_b
    if-eqz v7, :cond_f

    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    move/from16 v17, v3

    goto :goto_c

    :cond_f
    const/16 v17, -0x1

    :goto_c
    const/4 v3, 0x7

    if-eqz v24, :cond_1b

    move/from16 v39, v3

    iget-object v3, v14, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v0, :cond_13

    if-eqz v3, :cond_13

    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-eqz v2, :cond_10

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_10

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v9

    move/from16 v33, v5

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    move-object/from16 v29, v0

    move/from16 v30, v8

    move/from16 v37, v9

    goto :goto_d

    :cond_10
    move/from16 v33, v5

    move/from16 v30, v0

    move-object/from16 v5, v16

    move-object/from16 v29, v5

    const/16 v37, 0x0

    :goto_d
    if-eqz v5, :cond_11

    invoke-virtual {v5}, Lcom/android/server/am/HostingRecord;->toStringForTracker()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v36, v0

    goto :goto_e

    :cond_11
    move-object/from16 v36, v16

    :goto_e
    sget-object v27, Lcom/android/server/am/BaseRestrictionMgr$BaseRestrictionMgrHolder;->INSTANCE:Lcom/android/server/am/BaseRestrictionMgr;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v8, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v5, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v31, "provider"

    iget-object v5, v14, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    move/from16 v38, v5

    goto :goto_f

    :cond_12
    const/16 v38, 0x0

    :goto_f
    const/16 v35, 0x0

    const/16 v34, 0x0

    const/16 v32, 0x0

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v38}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;IZLandroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_14

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v16

    :cond_13
    move/from16 v33, v5

    :cond_14
    if-eqz v7, :cond_15

    :try_start_3
    invoke-virtual {v14, v7}, Lcom/android/server/am/ContentProviderRecord;->canRunHere(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, v14, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v7

    move-object/from16 v10, v16

    move-wide/from16 v8, v25

    move/from16 v5, v33

    move-object v7, v0

    move-object/from16 v16, v4

    move/from16 v4, p4

    :try_start_4
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ContentProviderHelper;->checkAssociationAndPermissionLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;IIZLjava/lang/String;J)V

    move-object v7, v2

    const/4 v1, 0x1

    invoke-virtual {v14, v10, v1}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v12

    iput-object v10, v12, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    iget v1, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/16 v0, 0x1dd

    move/from16 v8, v17

    move/from16 v2, p4

    move-object/from16 v6, p5

    move/from16 v7, v17

    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIILjava/lang/String;Ljava/lang/String;IIZJ)V

    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v12

    :catchall_2
    move-exception v0

    goto/16 :goto_41

    :cond_15
    move-object/from16 v1, v16

    move-wide/from16 v8, v25

    move/from16 v5, v33

    move-object/from16 v16, v4

    :try_start_5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v20, v1

    move-object v4, v2

    const-wide/16 v1, 0x0

    :try_start_6
    invoke-interface {v0, v15, v1, v2, v5}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-nez v0, :cond_16

    :try_start_7
    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v20

    :catch_0
    move-object/from16 v20, v1

    move-object v4, v2

    const-wide/16 v1, 0x0

    :catch_1
    :cond_16
    :try_start_8
    iget-object v0, v14, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    move-object/from16 v44, v4

    move-object v2, v7

    move-wide/from16 v41, v22

    move/from16 v15, v39

    move/from16 v4, p4

    move-object v7, v0

    move-object/from16 v0, v18

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ContentProviderHelper;->checkAssociationAndPermissionLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;IIZLjava/lang/String;J)V

    move/from16 v33, v5

    iget-object v4, v14, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v18

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    const-string/jumbo v4, "getContentProviderImpl: incProviderCountLocked"

    invoke-static {v8, v9, v4}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    move-wide/from16 v25, v8

    const/4 v9, 0x1

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v48, v3

    move-object/from16 v45, v11

    move-object/from16 v46, v12

    move-object v3, v14

    move/from16 v47, v33

    move-object v12, v4

    move-object v14, v10

    move-wide/from16 v10, v25

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/am/ContentProviderHelper;->incProviderCountLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZZJLcom/android/server/am/ProcessList;I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v9

    move-object v8, v2

    move-wide v12, v10

    const-string/jumbo v2, "getContentProviderImpl: before updateOomAdj"

    invoke-static {v12, v13, v2}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    iget-object v2, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getVerifiedAdj()I

    move-result v2

    iget-object v4, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v5, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v8, v5}, Lcom/android/server/am/OomAdjuster;->evaluateProviderConnectionAdd(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget-object v5, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v15, v5}, Lcom/android/server/am/ProcessStateController;->runUpdate(ILcom/android/server/am/ProcessRecord;)Z

    goto :goto_10

    :catchall_3
    move-exception v0

    goto/16 :goto_14

    :cond_17
    :goto_10
    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v5, v5, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    if-eq v2, v5, :cond_18

    invoke-virtual {v1, v4}, Lcom/android/server/am/ContentProviderHelper;->isProcessAliveLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-nez v2, :cond_18

    const/4 v2, 0x0

    goto :goto_11

    :cond_18
    const/4 v2, 0x1

    :goto_11
    iget-object v4, v3, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object/from16 v10, p2

    invoke-virtual {v1, v8, v4, v10}, Lcom/android/server/am/ContentProviderHelper;->maybeUpdateProviderUsageStatsLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "getContentProviderImpl: after updateOomAdj"

    invoke-static {v12, v13, v4}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    if-nez v2, :cond_1a

    const-string v2, "ContentProviderHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is crashing; detaching "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p3

    move/from16 v5, p7

    move-object v2, v9

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ContentProviderHelper;->decProviderCountLocked(Lcom/android/server/am/ContentProviderConnection;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ZZZ)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object v1, v3

    if-nez v0, :cond_19

    :try_start_a
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v16
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    :goto_12
    const/16 v43, 0x0

    return-object v43

    :cond_19
    const/16 v43, 0x0

    :try_start_b
    iget-object v0, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v15, p0

    move/from16 v2, p4

    move-object/from16 v21, v0

    move-object/from16 v18, v1

    move-object/from16 v49, v8

    move/from16 v11, v17

    move-object/from16 v7, v43

    const/16 v24, 0x0

    move-object/from16 v17, v14

    move-object v14, v10

    move-object/from16 v10, p5

    goto :goto_13

    :cond_1a
    move-object v1, v3

    move-object/from16 v20, v9

    const/16 v43, 0x0

    iget-object v0, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v2, v0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessStateRecord;->setVerifiedAdj(I)V

    iget-object v0, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    move-object/from16 v2, v48

    iget-object v5, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v6, v1

    move v1, v0

    const/16 v0, 0x1dd

    move-object/from16 v15, p0

    move-object/from16 v48, v2

    move-object/from16 v49, v8

    move/from16 v7, v17

    move/from16 v8, v18

    move/from16 v2, p4

    move-object/from16 v18, v6

    move-object/from16 v17, v14

    move-object/from16 v14, p2

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIILjava/lang/String;Ljava/lang/String;IIZJ)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-object v10, v6

    move v11, v7

    move-object/from16 v7, v20

    :goto_13
    :try_start_c
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v3, v48

    goto :goto_15

    :goto_14
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :cond_1b
    move-object/from16 v44, v2

    move-object/from16 v16, v4

    move/from16 v47, v5

    move-object/from16 v49, v7

    move-object/from16 v45, v11

    move-object/from16 v46, v12

    move-object/from16 v18, v14

    move-object v14, v15

    move/from16 v11, v17

    move-wide/from16 v41, v22

    move-wide/from16 v12, v25

    move/from16 v2, p4

    move-object v15, v1

    move-object/from16 v17, v10

    move-object/from16 v10, p5

    move-object/from16 v3, v20

    const/4 v7, 0x0

    :goto_15
    if-nez v24, :cond_41

    const-wide/16 v0, 0xc00

    :try_start_d
    const-string/jumbo v4, "getContentProviderImpl: before resolveContentProvider"

    invoke-static {v12, v13, v4}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move/from16 v5, v47

    :try_start_e
    invoke-interface {v4, v14, v0, v1, v5}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    const-string/jumbo v4, "getContentProviderImpl: after resolveContentProvider"

    invoke-static {v12, v13, v4}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_16

    :catch_2
    move/from16 v5, v47

    :catch_3
    :goto_16
    :try_start_f
    invoke-static {v5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-nez v4, :cond_1c

    const/16 v4, 0x3e8

    if-ne v2, v4, :cond_1d

    :cond_1c
    if-nez v3, :cond_1d

    :try_start_10
    const-string/jumbo v4, "getContentProviderImpl: before resolveContentProvider - dualApp"

    invoke-static {v12, v13, v4}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v4, v14, v0, v1, v6}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    const-string/jumbo v0, "getContentProviderImpl: after resolveContentProvider - dualApp"

    invoke-static {v12, v13, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    const/4 v5, 0x0

    :catch_4
    :cond_1d
    if-nez v3, :cond_1e

    :try_start_11
    monitor-exit v16
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_12

    :cond_1e
    const/16 v43, 0x0

    :try_start_12
    iget-object v0, v15, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v3, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget v7, v3, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v4, v6, v7}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, v15, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v7, v49

    if-nez v7, :cond_1f

    move v1, v2

    goto :goto_17

    :cond_1f
    iget v1, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    :goto_17
    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v4}, Lcom/android/server/am/ActivityManagerService;->isValidSingletonCall(II)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    goto :goto_18

    :cond_20
    move-object/from16 v7, v49

    :cond_21
    const/4 v0, 0x0

    :goto_18
    if-eqz v0, :cond_22

    const/4 v5, 0x0

    :cond_22
    iget-object v1, v15, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v4, :cond_23

    move-object/from16 v1, v43

    goto :goto_19

    :cond_23
    new-instance v1, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, v4}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v1, v5}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    :goto_19
    iput-object v1, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string/jumbo v1, "getContentProviderImpl: got app info for user"

    invoke-static {v12, v13, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    xor-int/lit8 v6, v0, 0x1

    move v4, v2

    move-object v2, v7

    move-wide v8, v12

    move-object v7, v14

    move-object v1, v15

    move-object/from16 v12, v21

    move/from16 v15, v24

    move-object/from16 v14, v43

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ContentProviderHelper;->checkAssociationAndPermissionLocked(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ProviderInfo;IIZLjava/lang/String;J)V

    move-object v13, v1

    move-object v1, v2

    iget-object v2, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v2, :cond_25

    iget-object v2, v3, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    const-string/jumbo v4, "system"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_1a

    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempt to launch content provider before system ready"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    :goto_1a
    monitor-enter p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :try_start_13
    iget-boolean v2, v13, Lcom/android/server/am/ContentProviderHelper;->mSystemProvidersInstalled:Z

    if-nez v2, :cond_27

    iget-object v2, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_27

    const-string/jumbo v2, "system"

    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_1b

    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v46

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' before system providers are installed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_4
    move-exception v0

    move-object v1, v13

    goto/16 :goto_33

    :cond_27
    :goto_1b
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :try_start_14
    iget-object v2, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v0, "ContentProviderHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v45

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is stopped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v16
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v14

    :cond_28
    :try_start_15
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v2, :cond_2b

    iget-object v2, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    move-object/from16 v4, v44

    if-eqz v4, :cond_29

    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_29

    iget-object v2, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v18

    move-object/from16 v20, v14

    iget-object v14, v4, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    move-object/from16 v27, v2

    move/from16 v28, v6

    move/from16 v35, v18

    goto :goto_1c

    :cond_29
    move-object/from16 v20, v14

    move/from16 v28, v2

    move-object/from16 v14, v20

    move-object/from16 v27, v14

    const/16 v35, 0x0

    :goto_1c
    if-eqz v14, :cond_2a

    invoke-virtual {v14}, Lcom/android/server/am/HostingRecord;->toStringForTracker()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v34, v2

    goto :goto_1d

    :cond_2a
    move-object/from16 v34, v20

    :goto_1d
    sget-object v25, Lcom/android/server/am/BaseRestrictionMgr$BaseRestrictionMgrHolder;->INSTANCE:Lcom/android/server/am/BaseRestrictionMgr;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v14, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v6, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v29, "provider"

    const/16 v33, 0x0

    const/16 v32, 0x0

    const/16 v30, 0x0

    const/16 v36, 0x0

    move-object/from16 v26, v2

    move/from16 v31, v5

    invoke-virtual/range {v25 .. v36}, Lcom/android/server/am/BaseRestrictionMgr;->isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;IZLandroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z

    move-result v2

    move/from16 v14, v31

    if-eqz v2, :cond_2c

    monitor-exit v16
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v20

    :cond_2b
    move-object/from16 v20, v14

    move-object/from16 v4, v44

    move v14, v5

    :cond_2c
    :try_start_16
    new-instance v5, Landroid/content/ComponentName;

    iget-object v2, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v2, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "getContentProviderImpl: before getProviderByClass"

    invoke-static {v8, v9, v2}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    iget-object v2, v13, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v2, v14, v5}, Lcom/android/server/am/ProviderMap;->getProviderByClass(ILandroid/content/ComponentName;)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v2

    const-string/jumbo v6, "getContentProviderImpl: after getProviderByClass"

    invoke-static {v8, v9, v6}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    if-eqz v2, :cond_2e

    iget-object v6, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-ne v12, v6, :cond_2d

    if-eqz v12, :cond_2d

    goto :goto_1e

    :cond_2d
    const/16 v18, 0x0

    goto :goto_1f

    :cond_2e
    :goto_1e
    const/16 v18, 0x1

    :goto_1f
    if-eqz v18, :cond_31

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21

    iget-object v6, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v3, v1, v14, v6}, Lcom/android/server/am/ContentProviderHelper;->requestTargetProviderPermissionsReviewIfNeededLocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/am/ProcessRecord;ILandroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2f

    monitor-exit v16
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v20

    :cond_2f
    :try_start_17
    const-string/jumbo v6, "getContentProviderImpl: before getApplicationInfo"

    invoke-static {v8, v9, v6}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_9
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    move-object/from16 v49, v1

    :try_start_18
    iget-object v1, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_8
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    move-object/from16 v44, v4

    move-object/from16 v23, v5

    const-wide/16 v4, 0x400

    :try_start_19
    invoke-interface {v6, v1, v4, v5, v14}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const-string/jumbo v4, "getContentProviderImpl: after getApplicationInfo"

    invoke-static {v8, v9, v4}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    if-nez v1, :cond_30

    const-string v0, "ContentProviderHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v4, v17

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_5
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    :try_start_1a
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v16
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v20

    :catchall_5
    move-exception v0

    goto/16 :goto_22

    :catch_5
    move-object v0, v2

    move-object v2, v3

    :goto_20
    move/from16 v17, v11

    move-object/from16 v5, v23

    move-object/from16 v11, v49

    move/from16 v23, v15

    move-object/from16 v15, v44

    goto :goto_23

    :cond_30
    :try_start_1b
    iget-object v4, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v4, v1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v4, v14}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    new-instance v1, Lcom/android/server/am/ContentProviderRecord;
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_5
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    move-object v5, v2

    :try_start_1c
    iget-object v2, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_7
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    move v6, v0

    move-object v0, v5

    move/from16 v17, v11

    move-object/from16 v5, v23

    move-object/from16 v11, v49

    move/from16 v23, v15

    move-object/from16 v15, v44

    :try_start_1d
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/ContentProviderRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ProviderInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;Z)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_6
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    move-object v2, v3

    :try_start_1e
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_25

    :catch_6
    move-object v2, v3

    goto :goto_23

    :catch_7
    move-object v2, v3

    move-object v0, v5

    goto :goto_20

    :catch_8
    move-object v0, v2

    move-object v2, v3

    move/from16 v17, v11

    move/from16 v23, v15

    move-object/from16 v11, v49

    :goto_21
    move-object v15, v4

    goto :goto_23

    :catch_9
    move-object v0, v2

    move-object v2, v3

    move/from16 v17, v11

    move/from16 v23, v15

    move-object v11, v1

    goto :goto_21

    :goto_22
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_23
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_24

    :cond_31
    move-object v0, v2

    move-object v2, v3

    move/from16 v17, v11

    move/from16 v23, v15

    move-object v11, v1

    move-object v15, v4

    :goto_24
    move-object v1, v0

    :goto_25
    const-string/jumbo v0, "getContentProviderImpl: now have ContentProviderRecord"

    invoke-static {v8, v9, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    if-eqz v11, :cond_32

    invoke-virtual {v1, v11}, Lcom/android/server/am/ContentProviderRecord;->canRunHere(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_32

    move-object/from16 v3, v20

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v0

    monitor-exit v16
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    :cond_32
    :try_start_1f
    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_26
    if-ge v3, v0, :cond_34

    iget-object v4, v13, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_33

    goto :goto_27

    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_34
    :goto_27
    if-lt v3, v0, :cond_3c

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    :try_start_20
    iget-object v0, v1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v3, v1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v4, 0x1f

    invoke-virtual {v0, v14, v4, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(IILjava/lang/String;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    goto :goto_28

    :catchall_6
    move-exception v0

    goto/16 :goto_2f

    :cond_35
    :goto_28
    :try_start_21
    const-string/jumbo v0, "getContentProviderImpl: before set stopped state"

    invoke-static {v8, v9, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, v1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/am/ContentProviderRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v14, v3, v10, v4}, Landroid/content/pm/PackageManagerInternal;->notifyComponentUsed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "getContentProviderImpl: after set stopped state"

    invoke-static {v8, v9, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_21} :catch_a
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    goto :goto_29

    :catch_a
    move-exception v0

    :try_start_22
    const-string v3, "ContentProviderHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed trying to unstop package "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    const-string/jumbo v0, "getContentProviderImpl: looking for process record"

    invoke-static {v8, v9, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0, v4, v3}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    if-eqz v3, :cond_38

    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v0, :cond_38

    iget-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    if-nez v4, :cond_38

    if-eq v12, v3, :cond_38

    iget-object v4, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget-object v6, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v6, v1}, Lcom/android/server/am/ProcessStateController;->addPublishedProvider(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ContentProviderRecord;)Z

    move-result v4

    if-eqz v4, :cond_37

    const-string/jumbo v4, "getContentProviderImpl: scheduling install"

    invoke-static {v8, v9, v4}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    iget-object v4, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    const/4 v6, 0x7

    invoke-virtual {v4, v6, v3}, Lcom/android/server/am/OomAdjuster;->unfreezeTemporarily(ILcom/android/server/am/ProcessRecord;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_6

    :try_start_23
    invoke-virtual {v0, v2}, Landroid/app/IApplicationThread$Delegator;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_b
    .catchall {:try_start_23 .. :try_end_23} :catchall_6

    goto :goto_2a

    :catch_b
    move-exception v0

    :try_start_24
    const-string v4, "ContentProviderHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to schedule install provider "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2a
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isActiveLaunch()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->setActiveLaunch()V

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->setActiveLaunchTime()V

    const-string v0, "ContentProviderHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " reset AL flag for provider call"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getIpmLaunchtype()I

    move-result v0

    if-nez v0, :cond_37

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->setIpmLaunchType()V

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->setMlLaunchTime()V

    const-string v0, "ContentProviderHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " reset ML flag for provider call"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    move-object v4, v1

    iget v1, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    move-object v6, v5

    iget-object v5, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    move-object v12, v3

    const/4 v3, 0x1

    move-object/from16 v24, v4

    const/4 v4, 0x1

    move-wide/from16 v25, v8

    const/4 v9, 0x0

    move-object/from16 v49, v11

    const-wide/16 v10, 0x0

    move v8, v0

    const/16 v0, 0x1dd

    move-object/from16 v50, v6

    move/from16 v31, v14

    move-object/from16 v44, v15

    move/from16 v7, v17

    move-wide/from16 v14, v25

    move-object/from16 v6, p5

    move-object/from16 v17, v12

    move-object/from16 v12, v24

    move-object/from16 v24, v2

    move/from16 v2, p4

    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIILjava/lang/String;Ljava/lang/String;IIZJ)V

    move-wide/from16 v25, v14

    move-object/from16 v3, v17

    goto/16 :goto_2e

    :cond_38
    move-object v7, v12

    move-object v12, v1

    move-object v1, v7

    move-object/from16 v24, v2

    move-object v2, v3

    move-object/from16 v50, v5

    move-object/from16 v49, v11

    move/from16 v31, v14

    move-object/from16 v44, v15

    move/from16 v7, v17

    move-wide v14, v8

    iget-object v0, v12, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x2

    move v4, v0

    goto :goto_2b

    :cond_39
    const/4 v4, 0x1

    :goto_2b
    iget-object v0, v12, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isNotLaunched()Z

    move-result v9

    const-string/jumbo v0, "getContentProviderImpl: before start process"

    invoke-static {v14, v15, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v3, v24

    iget-object v5, v3, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v6, v12, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_3a

    if-ne v2, v1, :cond_3a

    const/16 v35, 0x1

    goto :goto_2c

    :cond_3a
    const/16 v35, 0x0

    :goto_2c
    new-instance v1, Lcom/android/server/am/HostingRecord;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v8, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v10, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v8, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/server/am/HostingRecord;-><init>(Landroid/content/ComponentName;)V

    const/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v32, v0

    move-object/from16 v37, v1

    move-object/from16 v33, v5

    move-object/from16 v34, v6

    invoke-virtual/range {v32 .. v40}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    const-string/jumbo v1, "getContentProviderImpl: after start process"

    invoke-static {v14, v15, v1}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    if-nez v0, :cond_3b

    const-string v0, "ContentProviderHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to launch app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": process is bad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_6

    :try_start_25
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v16
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    :goto_2d
    const/16 v20, 0x0

    return-object v20

    :cond_3b
    move-object/from16 v2, p2

    :try_start_26
    iget v1, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object v6, v0

    const/16 v0, 0x1dd

    move-object/from16 v24, v3

    const/4 v3, 0x3

    const/16 v8, 0x14

    const-wide/16 v10, 0x0

    move/from16 v2, p4

    move-wide/from16 v25, v14

    move-object v14, v6

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIILjava/lang/String;Ljava/lang/String;IIZJ)V

    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getAppStartInfoTracker()Lcom/android/server/am/AppStartInfoTracker;

    move-result-object v0

    move-wide/from16 v1, v41

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/server/am/AppStartInfoTracker;->handleProcessContentProviderStart(Lcom/android/server/am/ProcessRecord;J)V

    move-object v3, v14

    :goto_2e
    iput-object v3, v12, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_6

    :try_start_27
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_30

    :goto_2f
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_3c
    move-object v12, v1

    move-object/from16 v24, v2

    move-object/from16 v50, v5

    move-wide/from16 v25, v8

    move-object/from16 v49, v11

    move/from16 v31, v14

    move-object/from16 v44, v15

    :goto_30
    const-string/jumbo v0, "getContentProviderImpl: updating data structures"

    move-wide/from16 v8, v25

    invoke-static {v8, v9, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    if-eqz v18, :cond_3d

    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    move-object/from16 v5, v50

    invoke-virtual {v0, v5, v12}, Lcom/android/server/am/ProviderMap;->putProviderByClass(Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;)V

    :cond_3d
    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, v12, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    if-eqz v1, :cond_3e

    iget-object v0, v0, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    move-object/from16 v14, p2

    invoke-virtual {v0, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    :cond_3e
    move-object/from16 v14, p2

    iget-object v1, v12, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProviderMap;->getProvidersByName(I)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_31
    iget-object v0, v13, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    move-wide/from16 v25, v8

    const/4 v9, 0x0

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object v3, v12

    move-object v1, v13

    move-wide/from16 v10, v25

    move-object/from16 v2, v49

    move/from16 v13, p8

    move-object v12, v0

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/am/ContentProviderHelper;->incProviderCountLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZZJLcom/android/server/am/ProcessList;I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v7

    move-object v12, v3

    move v2, v5

    move-wide v8, v10

    if-eqz v7, :cond_3f

    const/4 v4, 0x1

    iput-boolean v4, v7, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    :cond_3f
    iget-object v0, v12, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_32
    if-ge v5, v3, :cond_40

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/server/am/ContentProviderConnection;

    invoke-virtual {v6}, Lcom/android/server/am/ContentProviderConnection;->getStableCount()I

    move-result v10

    invoke-virtual {v6}, Lcom/android/server/am/ContentProviderConnection;->getUnstableCount()I

    move-result v6
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_2

    add-int/2addr v10, v6

    add-int/2addr v4, v10

    goto :goto_32

    :cond_40
    move-object/from16 v3, v24

    move/from16 v5, v31

    goto :goto_34

    :goto_33
    :try_start_28
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_7

    :try_start_29
    throw v0

    :catchall_7
    move-exception v0

    goto :goto_33

    :cond_41
    move-wide v8, v12

    move-object v1, v15

    move/from16 v23, v24

    move/from16 v5, v47

    move-object/from16 v12, v18

    const/4 v4, 0x0

    :goto_34
    const-string/jumbo v0, "getContentProviderImpl: done!"

    invoke-static {v8, v9, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    const/4 v10, 0x0

    invoke-virtual {v0, v5, v10, v2, v6}, Lcom/android/server/am/ActivityManagerService;->grantImplicitAccess(ILandroid/content/Intent;II)V

    const/16 v0, 0x7554

    if-eqz p1, :cond_46

    monitor-enter v12
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_2

    :try_start_2a
    iget-object v2, v12, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    if-nez v2, :cond_45

    iget-object v2, v12, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_42

    const-string v1, "ContentProviderHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to launch app "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for provider "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": launching app became null"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v3, v2, v14}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    monitor-exit v12
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_8

    :try_start_2b
    monitor-exit v16
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_2d

    :catchall_8
    move-exception v0

    goto :goto_35

    :cond_42
    const/4 v2, 0x1

    if-le v4, v2, :cond_43

    :try_start_2c
    const-string v0, "ContentProviderHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wait for provider publish: waiters="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " callerApp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v44

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " cpr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    if-eqz v7, :cond_44

    const/4 v4, 0x1

    iput-boolean v4, v7, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    :cond_44
    iget-object v0, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/16 v2, 0x49

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    sget v2, Landroid/content/ContentResolver;->CONTENT_PROVIDER_READY_TIMEOUT_MILLIS:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_45
    monitor-exit v12
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_8

    const/4 v6, 0x0

    :try_start_2d
    invoke-virtual {v12, v7, v6}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v0

    monitor-exit v16
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    :goto_35
    :try_start_2e
    monitor-exit v12
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_8

    :try_start_2f
    throw v0

    :cond_46
    monitor-exit v16
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sget v2, Landroid/content/ContentResolver;->CONTENT_PROVIDER_READY_TIMEOUT_MILLIS:I

    int-to-long v8, v2

    add-long/2addr v4, v8

    monitor-enter v12

    :cond_47
    :goto_36
    :try_start_30
    iget-object v2, v12, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    if-nez v2, :cond_4e

    iget-object v2, v12, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_48

    const-string v1, "ContentProviderHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to launch app "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for provider "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": launching app became null"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v3, v2, v14}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    monitor-exit v12
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_9

    const/16 v20, 0x0

    return-object v20

    :catchall_9
    move-exception v0

    goto/16 :goto_40

    :cond_48
    :try_start_31
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_31} :catch_e
    .catchall {:try_start_31 .. :try_end_31} :catchall_a

    sub-long v8, v4, v8

    const-wide/16 v10, 0x0

    :try_start_32
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_32} :catch_d
    .catchall {:try_start_32 .. :try_end_32} :catchall_a

    if-eqz v7, :cond_49

    const/4 v2, 0x1

    :try_start_33
    iput-boolean v2, v7, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    goto :goto_38

    :catchall_a
    move-exception v0

    goto :goto_3a

    :catch_c
    :goto_37
    const/4 v6, 0x0

    goto :goto_3b

    :cond_49
    const/4 v2, 0x1

    :goto_38
    cmp-long v6, v8, v10

    if-lez v6, :cond_4a

    invoke-virtual {v12, v8, v9}, Ljava/lang/Object;->wait(J)V

    :cond_4a
    iget-object v6, v12, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_33} :catch_c
    .catchall {:try_start_33 .. :try_end_33} :catchall_a

    if-nez v6, :cond_4c

    if-eqz v7, :cond_4b

    const/4 v6, 0x0

    :try_start_34
    iput-boolean v6, v7, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    goto :goto_3c

    :cond_4b
    const/4 v6, 0x0

    goto :goto_3c

    :cond_4c
    const/4 v6, 0x0

    if-eqz v7, :cond_47

    :goto_39
    iput-boolean v6, v7, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    goto/16 :goto_36

    :catch_d
    const/4 v2, 0x1

    goto :goto_37

    :goto_3a
    if-eqz v7, :cond_4d

    const/4 v6, 0x0

    iput-boolean v6, v7, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    :cond_4d
    throw v0

    :catch_e
    const/4 v2, 0x1

    const/4 v6, 0x0

    const-wide/16 v10, 0x0

    :goto_3b
    if-eqz v7, :cond_47

    goto :goto_39

    :cond_4e
    const/4 v2, 0x0

    :goto_3c
    monitor-exit v12
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_9

    if-eqz v2, :cond_51

    const-string/jumbo v0, "unknown"

    if-eqz p1, :cond_50

    iget-object v2, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v2

    :try_start_35
    iget-object v1, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    move-object/from16 v4, p1

    invoke-virtual {v1, v4}, Lcom/android/server/am/ProcessList;->getLRURecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eqz v1, :cond_4f

    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_3d

    :catchall_b
    move-exception v0

    goto :goto_3e

    :cond_4f
    :goto_3d
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_3f

    :goto_3e
    :try_start_36
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :cond_50
    :goto_3f
    const-string v1, "ContentProviderHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Timeout waiting for provider "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v4, " for provider "

    const-string v5, " providerRunning="

    invoke-static {v3, v4, v14, v5, v2}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    move/from16 v15, v23

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d

    :cond_51
    const/4 v6, 0x0

    invoke-virtual {v12, v7, v6}, Lcom/android/server/am/ContentProviderRecord;->newHolder(Lcom/android/server/am/ContentProviderConnection;Z)Landroid/app/ContentProviderHolder;

    move-result-object v0

    return-object v0

    :goto_40
    :try_start_37
    monitor-exit v12
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_9

    throw v0

    :goto_41
    :try_start_38
    monitor-exit v16
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public final handleProviderRemoval(Lcom/android/server/am/ContentProviderConnection;ZZ)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    if-eqz p1, :cond_7

    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v1, :cond_7

    invoke-virtual {p1, p2}, Lcom/android/server/am/ContentProviderConnection;->decrementCount(Z)I

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p2, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ContentProviderConnection;->stopAssociation()V

    iget-object v1, p2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/android/server/am/ContentProviderHelper;->hasProviderConnectionLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget-object v2, p1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v1, v1, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    const/16 v2, 0xf

    if-ge v1, v2, :cond_2

    iget-object v1, p2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    iput-wide v3, v1, Lcom/android/server/am/ProcessProviderRecord;->mLastProviderTime:J

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v4, p2, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iget-object v5, p2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v5, v5, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v5, p2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iget-object v6, p2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->stopAssociationLocked(Landroid/content/ComponentName;Ljava/lang/String;II)V

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v1, p1, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object p2, p2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p2}, Lcom/android/server/am/OomAdjuster;->evaluateConnectionPrelude(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    iget-object p3, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v2, p3, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v4, v3, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    if-lt v2, v4, :cond_4

    goto :goto_1

    :cond_4
    iget p3, p3, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    iget v2, v3, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    if-lt p3, v2, :cond_5

    goto :goto_1

    :cond_5
    iget-object p2, p2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-boolean p2, p2, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    if-eqz p2, :cond_6

    iget-object p2, v1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-boolean p2, p2, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    if-eqz p2, :cond_6

    :goto_1
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object p1, p1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    const/16 p2, 0x8

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(ILcom/android/server/am/ProcessRecord;)V

    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_7
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final incProviderCountLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;ZZJLcom/android/server/am/ProcessList;I)Lcom/android/server/am/ContentProviderConnection;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p9

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v1, :cond_3

    iget-object v0, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v3, :cond_0

    iget v0, v2, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    add-int/2addr v0, v7

    iput v0, v2, Lcom/android/server/am/ContentProviderRecord;->externalProcessNoHandleCount:I

    return-object v6

    :cond_0
    iget-object v0, v2, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v2, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    :cond_1
    iget-object v0, v2, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;

    move/from16 v1, p4

    move-object/from16 v4, p6

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;-><init>(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;ILjava/lang/String;)V

    iget-object v1, v2, Lcom/android/server/am/ContentProviderRecord;->externalProcessTokenToHandle:Landroid/util/ArrayMap;

    invoke-virtual {v1, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->startAssociationIfNeeded(Lcom/android/server/am/ContentProviderRecord;)V

    :cond_2
    iget v1, v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAcquisitionCount:I

    add-int/2addr v1, v7

    iput v1, v0, Lcom/android/server/am/ContentProviderRecord$ExternalProcessHandle;->mAcquisitionCount:I

    return-object v6

    :cond_3
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    iget-object v8, v3, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v8, :cond_6

    iget-object v11, v3, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ContentProviderConnection;

    iget-object v12, v11, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-ne v12, v2, :cond_5

    iget-object v12, v11, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    monitor-enter v12

    if-eqz p7, :cond_4

    :try_start_0
    iget v0, v11, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    add-int/2addr v0, v7

    iput v0, v11, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    iget v0, v11, Lcom/android/server/am/ContentProviderConnection;->mNumStableIncs:I

    add-int/2addr v0, v7

    iput v0, v11, Lcom/android/server/am/ContentProviderConnection;->mNumStableIncs:I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_4
    iget v0, v11, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    add-int/2addr v0, v7

    iput v0, v11, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    iget v0, v11, Lcom/android/server/am/ContentProviderConnection;->mNumUnstableIncs:I

    add-int/2addr v0, v7

    iput v0, v11, Lcom/android/server/am/ContentProviderConnection;->mNumUnstableIncs:I

    :goto_1
    monitor-exit v12

    return-object v11

    :goto_2
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_6
    new-instance v3, Lcom/android/server/am/ContentProviderConnection;

    move-object/from16 v8, p5

    move/from16 v10, p12

    invoke-direct {v3, v2, v1, v8, v10}, Lcom/android/server/am/ContentProviderConnection;-><init>(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)V

    invoke-virtual {v3}, Lcom/android/server/am/ContentProviderConnection;->startAssociationIfNeeded()V

    iget-object v8, v3, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    monitor-enter v8

    if-eqz p7, :cond_7

    :try_start_1
    iput v7, v3, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    iput v7, v3, Lcom/android/server/am/ContentProviderConnection;->mNumStableIncs:I

    iput v9, v3, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    iput v9, v3, Lcom/android/server/am/ContentProviderConnection;->mNumUnstableIncs:I

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_7
    iput v9, v3, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    iput v9, v3, Lcom/android/server/am/ContentProviderConnection;->mNumStableIncs:I

    iput v7, v3, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    iput v7, v3, Lcom/android/server/am/ContentProviderConnection;->mNumUnstableIncs:I

    :goto_3
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v7, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_8

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 v8, 0x40

    invoke-virtual {v7, v8}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    :cond_8
    iget-object v7, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v11, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v12, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v13, v0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    iget v14, v2, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iget-object v0, v2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v7, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v15, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iget-object v0, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/am/ActivityManagerService;->startAssociationLocked(ILjava/lang/String;IILandroid/content/ComponentName;Ljava/lang/String;)V

    if-eqz p8, :cond_9

    iget-object v0, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    const/16 v1, 0xfa

    if-gt v0, v1, :cond_9

    const-string/jumbo v0, "getContentProviderImpl: before updateLruProcess"

    invoke-static {v4, v5, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    iget-object v0, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v1, p11

    invoke-virtual {v1, v0, v6, v9}, Lcom/android/server/am/ProcessList;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;Z)V

    const-string/jumbo v0, "getContentProviderImpl: after updateLruProcess"

    invoke-static {v4, v5, v0}, Lcom/android/server/am/ContentProviderHelper;->checkTime(JLjava/lang/String;)V

    :cond_9
    return-object v3

    :goto_4
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final installSystemProviders()V
    .locals 11

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    const-string/jumbo v3, "system"

    const/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v2}, Lcom/android/server/am/ContentProviderHelper;->generateApplicationProvidersLocked(Lcom/android/server/am/ProcessRecord;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    :goto_0
    if-ltz v3, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ProviderInfo;

    iget-object v5, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v0

    if-nez v5, :cond_0

    const-string v5, "ContentProviderHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Not installing system proc provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": not system .apk"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mSystemThread:Landroid/app/ActivityThread;

    invoke-virtual {v1, v2}, Landroid/app/ActivityThread;->installSystemProviders(Ljava/util/List;)V

    :cond_2
    monitor-enter p0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/am/ContentProviderHelper;->mSystemProvidersInstalled:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, v2, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_MANAGER_CONSTANTS_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, v2, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, v2, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/am/ActivityManagerConstants;->FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-boolean v1, v2, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpEnabled:Z

    if-eqz v1, :cond_3

    iget-object v1, v2, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_3
    iget-object v1, v2, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/am/ActivityManagerConstants;->FORCE_ENABLE_PSS_PROFILING_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerConstants;->updateConstants()V

    iget-boolean v1, v2, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpEnabled:Z

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerConstants;->updateEnableAutomaticSystemServerHeapDumps()V

    :cond_4
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedListener:Lcom/android/server/am/ActivityManagerConstants$1;

    const-string/jumbo v5, "activity_manager"

    invoke-static {v5, v1, v3}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedForComponentAliasListener:Lcom/android/server/am/ActivityManagerConstants$1;

    const-string/jumbo v6, "activity_manager_ca"

    invoke-static {v6, v1, v3}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    iget-object v1, v2, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedListener:Lcom/android/server/am/ActivityManagerConstants$1;

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v5, v3}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityManagerConstants$1;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    iget-object v1, v2, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedForComponentAliasListener:Lcom/android/server/am/ActivityManagerConstants$1;

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v6, v3}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityManagerConstants$1;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    iget-object v1, v2, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "activity_starts_logging_enabled"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_5

    move v1, v0

    goto :goto_2

    :cond_5
    move v1, v4

    :goto_2
    iput-boolean v1, v2, Lcom/android/server/am/ActivityManagerConstants;->mFlagActivityStartsLoggingEnabled:Z

    iget-object v1, v2, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "foreground_service_starts_logging_enabled"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    iget-object v1, v2, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "force_enable_pss_profiling"

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_6

    move v1, v0

    goto :goto_3

    :cond_6
    move v1, v4

    :goto_3
    iput-boolean v1, v2, Lcom/android/server/am/ActivityManagerConstants;->mForceEnablePssProfiling:Z

    iget-object v1, v2, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mDropboxRateLimiter:Lcom/android/server/am/DropboxRateLimiter;

    invoke-virtual {v1}, Lcom/android/server/am/DropboxRateLimiter;->init()V

    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v2, Lcom/android/server/am/CoreSettingsObserver;

    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/am/CoreSettingsObserver;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mCoreSettingsObserver:Lcom/android/server/am/CoreSettingsObserver;

    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;

    invoke-direct {v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    new-instance v1, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;-><init>(Lcom/android/server/am/ContentProviderHelper;)V

    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/SettingsToPropertiesMapper;

    sget-object v3, Lcom/android/server/am/SettingsToPropertiesMapper;->sGlobalSettings:[Ljava/lang/String;

    sget-object v5, Lcom/android/server/am/SettingsToPropertiesMapper;->sDeviceConfigScopes:[Ljava/lang/String;

    sget-object v6, Lcom/android/server/am/SettingsToPropertiesMapper;->sDeviceConfigAconfigScopes:[Ljava/lang/String;

    invoke-direct {v2, v1, v3, v5, v6}, Lcom/android/server/am/SettingsToPropertiesMapper;-><init>(Landroid/content/ContentResolver;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/am/SettingsToPropertiesMapper;->updatePropertiesFromSettings()V

    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v2, v1, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "activity_manager"

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/am/CachedAppOptimizer;->mOnFlagsChangedListener:Lcom/android/server/am/CachedAppOptimizer$1;

    invoke-static {v3, v5, v6}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const-string/jumbo v3, "activity_manager_native_boot"

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/am/CachedAppOptimizer;->mOnNativeBootFlagsChangedListener:Lcom/android/server/am/CachedAppOptimizer$1;

    invoke-static {v3, v5, v6}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    iget-object v3, v2, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/server/am/CachedAppOptimizer;->CACHED_APP_FREEZER_ENABLED_URI:Landroid/net/Uri;

    iget-object v6, v2, Lcom/android/server/am/CachedAppOptimizer;->mSettingsObserver:Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v3, v2, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/am/CachedAppOptimizer;->updateUseCompaction()V

    invoke-virtual {v2}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactionThrottles()V

    const-string/jumbo v5, "compact_statsd_sample_rate"

    const-string/jumbo v6, "activity_manager"

    const v7, 0x3dcccccd    # 0.1f

    invoke-static {v6, v5, v7}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v5

    iput v5, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    iget v5, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    const-string/jumbo v5, "freeze_statsd_sample_rate"

    const-string/jumbo v9, "activity_manager"

    invoke-static {v9, v5, v7}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v5

    iput v5, v2, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    iget v5, v2, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v2, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    const-string/jumbo v5, "activity_manager"

    const-string/jumbo v6, "compact_full_rss_throttle_kb"

    const-wide/16 v7, 0x2ee0

    invoke-static {v5, v6, v7, v8}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    iget-wide v5, v2, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    const-wide/16 v9, 0x0

    cmp-long v5, v5, v9

    if-gez v5, :cond_7

    iput-wide v7, v2, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    :cond_7
    const-string/jumbo v5, "activity_manager"

    const-string/jumbo v6, "compact_full_delta_rss_throttle_kb"

    const-wide/16 v7, 0x1f40

    invoke-static {v5, v6, v7, v8}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    iget-wide v5, v2, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    cmp-long v5, v5, v9

    if-gez v5, :cond_8

    iput-wide v7, v2, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    :cond_8
    invoke-virtual {v2}, Lcom/android/server/am/CachedAppOptimizer;->updateProcStateThrottle()V

    invoke-virtual {v2}, Lcom/android/server/am/CachedAppOptimizer;->updateUseFreezer()V

    const-string/jumbo v5, "activity_manager"

    const-string/jumbo v6, "compact_throttle_min_oom_adj"

    const-wide/16 v7, 0x352

    invoke-static {v5, v6, v7, v8}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    iget-wide v5, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_9

    iput-wide v7, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    :cond_9
    const-string/jumbo v5, "activity_manager"

    const-string/jumbo v6, "compact_throttle_max_oom_adj"

    const-wide/16 v7, 0x3e7

    invoke-static {v5, v6, v7, v8}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    iget-wide v5, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_a

    iput-wide v7, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    :cond_a
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v2, v1, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    const-string/jumbo v5, "activity_manager"

    iget-object v6, v2, Lcom/android/server/am/CacheOomRanker;->mOnFlagsChangedListener:Lcom/android/server/am/CacheOomRanker$1;

    invoke-static {v5, v3, v6}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    iget-object v5, v2, Lcom/android/server/am/CacheOomRanker;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    const-string/jumbo v3, "use_oom_re_ranking"

    const-string/jumbo v6, "activity_manager"

    invoke-static {v6, v3, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/server/am/CacheOomRanker;->mUseOomReRanking:Z

    invoke-virtual {v2}, Lcom/android/server/am/CacheOomRanker;->updateNumberToReRank()V

    const-string/jumbo v3, "oom_re_ranking_lru_weight"

    const-string/jumbo v6, "activity_manager"

    const v7, 0x3eb33333    # 0.35f

    invoke-static {v6, v3, v7}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v3

    iput v3, v2, Lcom/android/server/am/CacheOomRanker;->mLruWeight:F

    const-string/jumbo v3, "oom_re_ranking_uses_weight"

    const-string/jumbo v6, "activity_manager"

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v6, v3, v7}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v3

    iput v3, v2, Lcom/android/server/am/CacheOomRanker;->mUsesWeight:F

    const-string/jumbo v3, "oom_re_ranking_rss_weight"

    const-string/jumbo v6, "activity_manager"

    const v7, 0x3e19999a    # 0.15f

    invoke-static {v6, v3, v7}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v3

    iput v3, v2, Lcom/android/server/am/CacheOomRanker;->mRssWeight:F

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v2, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_b

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/am/OomAdjuster$1;

    invoke-direct {v5, v1}, Lcom/android/server/am/OomAdjuster$1;-><init>(Lcom/android/server/am/OomAdjuster;)V

    iget-object v1, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v2, v6, v1}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_b
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/server/RescueParty;->LEVEL_ISRB_BOOT:I

    const-string/jumbo v1, "device_config.reset_performed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string/jumbo v1, "device_config.reset_performed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    new-array v1, v4, [Ljava/lang/String;

    goto :goto_6

    :cond_c
    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->getResetFlagsFileContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-array v1, v4, [Ljava/lang/String;

    goto :goto_6

    :cond_d
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    array-length v3, v1

    move v5, v4

    :goto_4
    if-ge v5, v3, :cond_f

    aget-object v6, v1, v5

    const-string/jumbo v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x3

    if-ge v8, v9, :cond_e

    const-string/jumbo v7, "failed to extract category name from property "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/SettingsToPropertiesMapper;->logErr(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    const/4 v6, 0x2

    aget-object v6, v7, v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/2addr v5, v0

    goto :goto_4

    :cond_f
    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :goto_6
    array-length v2, v1

    if-ge v4, v2, :cond_11

    const-string/jumbo v2, "configuration"

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_7

    :cond_10
    const/4 v2, 0x4

    aget-object v3, v1, v4

    invoke-static {v2, v3}, Landroid/provider/DeviceConfig;->resetToDefaults(ILjava/lang/String;)V

    :goto_7
    add-int/2addr v4, v0

    goto :goto_6

    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/android/server/RescueParty$RescuePartyMonitorCallback;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p0, v2, Lcom/android/server/RescueParty$RescuePartyMonitorCallback;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->setMonitorCallback(Landroid/content/ContentResolver;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$MonitorCallback;)V

    return-void

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :goto_8
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final isAuthorityRedirectedForCloneProfileCached(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mCloneProfileAuthorityRedirectionCache:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mCloneProfileAuthorityRedirectionCache:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    invoke-static {p1}, Landroid/content/ContentProvider;->isAuthorityRedirectedForCloneProfile(Ljava/lang/String;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mCloneProfileAuthorityRedirectionCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public final isHolderVisibleToCaller(Landroid/app/ContentProviderHolder;II)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object v1, p1, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ContentProviderHelper;->isAuthorityRedirectedForCloneProfileCached(Ljava/lang/String;)Z

    move-result v1

    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1, p3}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p3}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v1

    goto :goto_1

    :cond_2
    :goto_0
    move v1, p3

    :goto_1
    if-eq v1, p3, :cond_3

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    iget-object p1, p1, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2, p3, p1, v0}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    iget-object p1, p1, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2, p3, p1, v2}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_4
    :goto_2
    return v0
.end method

.method public final isProcessAliveLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 6

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const-string v2, "/proc/"

    const-string v3, "/stat"

    invoke-static {v0, v2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mProcessStateStatsLongs:[J

    aput-wide v3, p0, v1

    sget-object v3, Lcom/android/server/am/ContentProviderHelper;->PROCESS_STATE_STATS_FORMAT:[I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, p0, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    aget-wide v2, p0, v1

    const-wide/16 v4, 0x5a

    cmp-long p0, v2, v4

    if-eqz p0, :cond_2

    const-wide/16 v4, 0x58

    cmp-long p0, v2, v4

    if-eqz p0, :cond_2

    const-wide/16 v4, 0x78

    cmp-long p0, v2, v4

    if-eqz p0, :cond_2

    const-wide/16 v4, 0x4b

    cmp-long p0, v2, v4

    if-eqz p0, :cond_2

    invoke-static {v0}, Landroid/os/Process;->getUidForPid(I)I

    move-result p0

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne p0, p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public final maybeUpdateProviderUsageStatsLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/server/am/UserState;->mProviderLastReportedFg:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    sub-long v5, v1, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v3, :cond_3

    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    check-cast p0, Lcom/android/server/usage/UsageStatsService$LocalService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0, p3, p2, p1}, Lcom/android/server/usage/AppStandbyInternal;->postReportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    iget-object p0, v0, Lcom/android/server/am/UserState;->mProviderLastReportedFg:Landroid/util/ArrayMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    return-void
.end method

.method public final publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v3, "Unable to find app for caller "

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v4, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v5, "publishContentProviders"

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4

    :try_start_0
    iget-object v5, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v8, v1, :cond_a

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ContentProviderHolder;

    if-eqz v10, :cond_1

    iget-object v11, v10, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v11, :cond_1

    iget-object v12, v10, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez v12, :cond_2

    :cond_1
    :goto_1
    move-object v13, v4

    const/4 v3, 0x0

    goto/16 :goto_7

    :cond_2
    iget-object v12, v5, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    iget-object v11, v11, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget-object v12, v12, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ContentProviderRecord;

    if-nez v11, :cond_3

    goto :goto_1

    :cond_3
    new-instance v9, Landroid/content/ComponentName;

    iget-object v12, v11, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v13, v12, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v12, v12, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v13, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v12, v9, v11}, Lcom/android/server/am/ProviderMap;->putProviderByClass(Landroid/content/ComponentName;Lcom/android/server/am/ContentProviderRecord;)V

    iget-object v9, v11, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v12, ";"

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    :goto_2
    array-length v13, v9

    if-ge v12, v13, :cond_5

    iget-object v13, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    aget-object v14, v9, v12

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v15, v11, Lcom/android/server/am/ContentProviderRecord;->singleton:Z

    if-eqz v15, :cond_4

    iget-object v13, v13, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    invoke-virtual {v13, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    iget-object v15, v11, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    invoke-virtual {v13, v15}, Lcom/android/server/am/ProviderMap;->getProvidersByName(I)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :goto_4
    move-object v13, v4

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_5
    iget-object v9, v0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_5
    const/4 v14, 0x1

    if-ge v12, v9, :cond_7

    iget-object v15, v0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v11, :cond_6

    iget-object v13, v0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v9, v9, -0x1

    move v13, v14

    :cond_6
    add-int/2addr v12, v14

    goto :goto_5

    :cond_7
    if-eqz v13, :cond_8

    iget-object v9, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/16 v12, 0x49

    invoke-virtual {v9, v12, v11}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v9, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/16 v12, 0x39

    invoke-virtual {v9, v12, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_8
    iget-object v9, v11, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v13, v4

    :try_start_1
    iget-wide v3, v9, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v9, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v5, v12, v3, v4, v9}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)V

    monitor-enter v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v3, v10, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    iput-object v3, v11, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    invoke-virtual {v11, v5}, Lcom/android/server/am/ContentProviderRecord;->setProcess(Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    invoke-virtual {v11, v14}, Lcom/android/server/am/ContentProviderRecord;->onProviderPublishStatusLocked(Z)V

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v3, 0x0

    :try_start_3
    iput v3, v11, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    invoke-static {v5}, Lcom/android/server/am/ContentProviderHelper;->hasProviderConnectionLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 v9, 0x40

    invoke-virtual {v4, v9}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_a

    :cond_9
    :goto_6
    move v9, v14

    goto :goto_7

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v0

    :goto_7
    add-int/lit8 v8, v8, 0x1

    move-object v4, v13

    goto/16 :goto_0

    :cond_a
    move-object v13, v4

    const/4 v3, 0x0

    if-eqz v9, :cond_d

    iget-object v1, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x7

    invoke-virtual {v1, v4, v5}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(ILcom/android/server/am/ProcessRecord;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    :goto_8
    if-ge v3, v1, :cond_d

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ContentProviderHolder;

    if-eqz v4, :cond_c

    iget-object v8, v4, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v8, :cond_c

    iget-object v4, v4, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-nez v4, :cond_b

    goto :goto_9

    :cond_b
    iget-object v4, v8, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v5, v4, v8}, Lcom/android/server/am/ContentProviderHelper;->maybeUpdateProviderUsageStatsLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_d
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_e
    move-object v13, v4

    :try_start_6
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (pid="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") when publishing content providers"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_a
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "SDK sandbox process not allowed to call publishContentProviders"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final removeContentProviderExternalUnchecked(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 5

    const-string v0, "Attempt to remove content provider: "

    const-string v1, "Attempt to remove content provider "

    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {v3, p1, p3}, Lcom/android/server/am/ProviderMap;->getProviderByName(ILjava/lang/String;)Lcom/android/server/am/ContentProviderRecord;

    move-result-object p3

    if-nez p3, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    new-instance v3, Landroid/content/ComponentName;

    iget-object p3, p3, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, p3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object p3, p3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    invoke-virtual {p3, p1, v3}, Lcom/android/server/am/ProviderMap;->getProviderByClass(ILandroid/content/ComponentName;)Lcom/android/server/am/ContentProviderRecord;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/android/server/am/ProcessStateController;->removeExternalProviderClient(Lcom/android/server/am/ContentProviderRecord;Landroid/os/IBinder;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    const/16 p2, 0x8

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(ILcom/android/server/am/ProcessRecord;)V

    goto :goto_0

    :cond_1
    const-string p0, "ContentProviderHelper"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " with no external reference for token: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p0, "ContentProviderHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " with no external references."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final removeDyingProviderLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;Z)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    if-nez p3, :cond_0

    iget v5, v2, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    add-int/2addr v5, v4

    iput v5, v2, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    const/4 v6, 0x3

    if-le v5, v6, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move/from16 v5, p3

    :goto_0
    const/4 v6, 0x0

    if-eqz v3, :cond_1

    if-eqz v5, :cond_b

    :cond_1
    monitor-enter p2

    const/4 v7, 0x0

    :try_start_0
    iput-object v7, v2, Lcom/android/server/am/ContentProviderRecord;->launchingApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    invoke-virtual {v2, v6}, Lcom/android/server/am/ContentProviderRecord;->onProviderPublishStatusLocked(Z)V

    iget-object v7, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/16 v8, 0x49

    invoke-virtual {v7, v8, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget v7, v2, Lcom/android/server/am/ContentProviderRecord;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    iget-object v8, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    iget-object v9, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v8, v7, v9}, Lcom/android/server/am/ProviderMap;->getProviderByClass(ILandroid/content/ComponentName;)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v8

    if-ne v8, v2, :cond_5

    iget-object v8, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    iget-object v9, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iget-object v10, v8, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v8, v8, Lcom/android/server/am/ProviderMap;->mSingletonByClass:Ljava/util/HashMap;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    if-ltz v7, :cond_4

    invoke-virtual {v8, v7}, Lcom/android/server/am/ProviderMap;->getProvidersByClass(I)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v9

    if-nez v9, :cond_3

    iget-object v8, v8, Lcom/android/server/am/ProviderMap;->mProvidersByClassPerUser:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->remove(I)V

    :cond_3
    :goto_1
    move v8, v4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad user "

    invoke-static {v7, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v8, v6

    :goto_2
    iget-object v9, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move v10, v6

    :goto_3
    array-length v11, v9

    if-ge v10, v11, :cond_a

    iget-object v11, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    aget-object v12, v9, v10

    invoke-virtual {v11, v7, v12}, Lcom/android/server/am/ProviderMap;->getProviderByName(ILjava/lang/String;)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v11

    if-ne v11, v2, :cond_9

    iget-object v8, v0, Lcom/android/server/am/ContentProviderHelper;->mProviderMap:Lcom/android/server/am/ProviderMap;

    aget-object v11, v9, v10

    iget-object v12, v8, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    iget-object v8, v8, Lcom/android/server/am/ProviderMap;->mSingletonByName:Ljava/util/HashMap;

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    if-ltz v7, :cond_8

    invoke-virtual {v8, v7}, Lcom/android/server/am/ProviderMap;->getProvidersByName(I)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v11

    if-nez v11, :cond_7

    iget-object v8, v8, Lcom/android/server/am/ProviderMap;->mProvidersByNamePerUser:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->remove(I)V

    :cond_7
    :goto_4
    move v8, v4

    goto :goto_5

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad user "

    invoke-static {v7, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_a
    if-eqz v8, :cond_b

    iget-object v7, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_b

    iget-object v8, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    iget-object v9, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v9, v9, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessProviderRecord;->mPubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v7, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v4

    :goto_6
    if-ltz v7, :cond_12

    iget-object v8, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ContentProviderConnection;

    iget-boolean v9, v8, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    if-eqz v9, :cond_c

    if-eqz v3, :cond_c

    if-nez v5, :cond_c

    goto/16 :goto_9

    :cond_c
    iget-object v10, v8, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v10, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    iput-boolean v4, v8, Lcom/android/server/am/ContentProviderConnection;->dead:Z

    iget-object v11, v8, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_1
    iget v12, v8, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v12, :cond_f

    iget v8, v10, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget-boolean v11, v10, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-nez v11, :cond_11

    if-eqz v9, :cond_11

    if-eqz v8, :cond_11

    sget v9, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v8, v9, :cond_11

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "depends on provider "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " in dying proc "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_d

    iget-object v9, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_7

    :cond_d
    const-string v9, "??"

    :goto_7
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " (adj "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_e

    iget-object v9, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v9, v9, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_8

    :cond_e
    const-string v9, "??"

    :goto_8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v12, 0x0

    const/4 v15, 0x1

    const/16 v11, 0xc

    const/16 v16, 0x1

    move-object v14, v13

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_9

    :cond_f
    if-eqz v9, :cond_11

    iget-object v11, v8, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v11, v11, Lcom/android/server/am/ContentProviderRecord;->provider:Landroid/content/IContentProvider;

    if-eqz v11, :cond_11

    :try_start_2
    invoke-interface {v11}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/app/IApplicationThread$Delegator;->unstableProviderDied(Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    iget-object v9, v2, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v9, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_10

    invoke-static {v9}, Lcom/android/server/am/ContentProviderHelper;->hasProviderConnectionLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v9

    if-nez v9, :cond_10

    iget-object v9, v2, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    const/16 v11, 0x40

    invoke-virtual {v9, v11}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    :cond_10
    iget-object v9, v8, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessProviderRecord;->mConProviders:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v8, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v9, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v11, v2, Lcom/android/server/am/ContentProviderRecord;->uid:I

    iget-object v12, v2, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v12, v12, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v12, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    iget-object v13, v2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v13, v13, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v12, v10, v9, v11}, Lcom/android/server/am/ActivityManagerService;->stopAssociationLocked(Landroid/content/ComponentName;Ljava/lang/String;II)V

    :cond_11
    :goto_9
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_12
    if-eqz v3, :cond_13

    if-eqz v5, :cond_13

    iget-object v0, v0, Lcom/android/server/am/ContentProviderHelper;->mLaunchingProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput v6, v2, Lcom/android/server/am/ContentProviderRecord;->mRestartCount:I

    move v3, v6

    :cond_13
    return v3

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public final requestTargetProviderPermissionsReviewIfNeededLocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/am/ProcessRecord;ILandroid/content/Context;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget p2, p2, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    if-lez p2, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "u"

    const-string p2, " Instantiating a provider in package "

    invoke-static {p3, p0, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const-string p2, " requires a permissions review"

    const-string p3, "ContentProviderHelper"

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    :goto_0
    const-string/jumbo p2, "android.intent.action.REVIEW_PERMISSIONS"

    const/high16 v1, 0x10800000

    invoke-static {v1, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string/jumbo v1, "android.intent.extra.PACKAGE_NAME"

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p3}, Landroid/os/UserHandle;-><init>(I)V

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance p3, Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;

    invoke-direct {p3, p4, p2, p1}, Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v0
.end method
