.class public final Lcom/android/server/backup/utils/BackupEligibilityRules;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final systemPackagesAllowedForNonSystemUsers:Ljava/util/Set;

.field public static final systemPackagesAllowedForProfileUser:Ljava/util/Set;


# instance fields
.field public final mBackupDestination:I

.field public final mIsProfileUser:Z

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "@pm@"

    const-string/jumbo v1, "android"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/utils/BackupEligibilityRules;->systemPackagesAllowedForProfileUser:Ljava/util/Set;

    const-string/jumbo v1, "com.android.wallpaperbackup"

    const-string/jumbo v2, "com.android.providers.settings"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    sput-object v2, Lcom/android/server/backup/utils/BackupEligibilityRules;->systemPackagesAllowedForNonSystemUsers:Ljava/util/Set;

    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.android.providers.telephony"

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;ILandroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mIsProfileUser:Z

    iput-object p1, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iput p3, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserId:I

    iput p5, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mBackupDestination:I

    const-class p1, Landroid/os/UserManager;

    invoke-virtual {p4, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isProfile()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mIsProfileUser:Z

    return-void
.end method


# virtual methods
.method public appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z
    .locals 1

    iget-object p0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 p1, 0x4000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public appIsDisabled(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserId:I

    invoke-interface {v0, p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result p0

    :goto_0
    const/4 v0, 0x1

    if-eqz p0, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    return v0

    :cond_2
    iget-boolean p0, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    xor-int/2addr p0, v0

    return p0
.end method

.method public appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->isAppBackupAllowed(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserId:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mIsProfileUser:Z

    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/server/backup/utils/BackupEligibilityRules;->systemPackagesAllowedForProfileUser:Ljava/util/Set;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    if-nez v0, :cond_2

    sget-object v0, Lcom/android/server/backup/utils/BackupEligibilityRules;->systemPackagesAllowedForNonSystemUsers:Ljava/util/Set;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "com.android.sharedstoragebackup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsDisabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final appIsRunningAndEligibleForBackupWithTransport(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)Z
    .locals 5

    const-string/jumbo v0, "Unable to ask about eligibility: "

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v3, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserId:I

    const/high16 v4, 0x8000000

    invoke-virtual {v2, p2, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p2

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v2}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-nez v3, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsDisabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    const-string v2, "AppBackupUtils.appIsRunningAndEligibleForBackupWithTransport"

    invoke-virtual {p1, v2}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result p0

    iget-object v2, p1, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    invoke-virtual {v2}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3, p2, p0, v2}, Lcom/android/internal/backup/IBackupTransport;->isAppEligibleForBackup(Landroid/content/pm/PackageInfo;ZLcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {p1, v2}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_3

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "BackupManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_1
    return v4

    :catch_1
    :cond_3
    :goto_2
    return v1
.end method

.method public final isAppBackupAllowed(Landroid/content/pm/ApplicationInfo;)Z
    .locals 10

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, 0x8000

    and-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v4, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mBackupDestination:I

    if-eqz v4, :cond_d

    iget v5, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserId:I

    if-eq v4, v3, :cond_9

    const/4 v0, 0x2

    const-string v6, "BackupManagerService"

    if-eq v4, v0, :cond_1

    const-string/jumbo p0, "Unknown operation type:"

    invoke-static {v4, p0, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v4, :cond_2

    const-string p0, "Invalid ApplicationInfo object"

    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const-wide/32 v7, 0xa31bf12

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    invoke-static {v7, v8, v4, v9}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_5

    :cond_3
    const-string/jumbo v7, "android"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    return v3

    :cond_4
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v7, 0x8

    if-eqz v8, :cond_5

    move v8, v3

    goto :goto_1

    :cond_5
    move v8, v2

    :goto_1
    and-int/2addr v0, v7

    if-eqz v0, :cond_6

    move v2, v3

    :cond_6
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result p1

    if-nez p1, :cond_8

    if-eqz v8, :cond_7

    goto :goto_2

    :cond_7
    return v2

    :cond_8
    :goto_2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo p1, "android.backup.ALLOW_ADB_BACKUP"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v4, v0, v5}, Landroid/content/pm/PackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "Failed to read allowAdbBackup property for + "

    invoke-virtual {p0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_9
    and-int/lit8 p0, v0, 0x1

    if-eqz p0, :cond_a

    goto :goto_3

    :cond_a
    iget-object p0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const-wide/32 v4, 0xaea9af1

    invoke-static {v4, v5, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_4

    :cond_b
    :goto_3
    if-eqz v1, :cond_c

    :goto_4
    return v3

    :cond_c
    return v2

    :cond_d
    :goto_5
    return v1
.end method

.method public final signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    .locals 7

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    const-string v3, "BackupManagerService"

    if-nez v0, :cond_3

    const-string/jumbo p0, "signingInfo is empty, app was either unsigned or the flag PackageManager#GET_SIGNING_CERTIFICATES was not specified"

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "signaturesMatch(): stored="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " device="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v3, p1

    if-ne v3, v2, :cond_5

    aget-object p1, p1, v1

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    check-cast p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/android/server/pm/Computer;->getSigningDetails(Ljava/lang/String;)Landroid/content/pm/SigningDetails;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/SigningDetails;->hasCertificate(Landroid/content/pm/Signature;I)Z

    move-result p0

    return p0

    :cond_5
    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    array-length p2, p0

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_8

    move v4, v1

    :goto_1
    if-ge v4, p2, :cond_7

    aget-object v5, p1, v0

    aget-object v6, p0, v4

    invoke-virtual {v5, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    return v1

    :cond_8
    :goto_3
    return v2
.end method
