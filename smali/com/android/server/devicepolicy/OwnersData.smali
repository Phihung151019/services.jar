.class public final Lcom/android/server/devicepolicy/OwnersData;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

.field public mDeviceOwnerProtectedPackages:Landroid/util/ArrayMap;

.field public final mDeviceOwnerTypes:Landroid/util/ArrayMap;

.field public mDeviceOwnerUserId:I

.field public mEasMigratedToPolicyEngine:Z

.field public mMemoryTaggingMigrated:Z

.field public mMigratedToPolicyEngine:Z

.field public final mPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

.field public mPoliciesMigratedPostUpdate:Z

.field public final mProfileOwners:Landroid/util/ArrayMap;

.field public mSecurityLoggingMigrated:Z

.field public mSuspendedPackagesMigrated:Z

.field public mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

.field public mSystemUpdateFreezeStart:Ljava/time/LocalDate;

.field public mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

.field public mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/PolicyPathProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mMigratedToPolicyEngine:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSecurityLoggingMigrated:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSuspendedPackagesMigrated:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mMemoryTaggingMigrated:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mEasMigratedToPolicyEngine:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mPoliciesMigratedPostUpdate:Z

    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "Device Owner: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->dump(Landroid/util/IndentingPrintWriter;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "User ID: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "System Update Policy: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move v0, v1

    :cond_2
    iget-object v2, p0, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Profile Owner (User "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    if-eqz v2, :cond_6

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Pending System Update: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    return-void

    :cond_8
    :goto_3
    if-eqz v1, :cond_9

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "System update freeze record: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OwnersData;->getSystemUpdateFreezePeriodRecordAsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getDeviceOwnerFile()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "device_owner_2.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getProfileOwnerFile(I)Ljava/io/File;
    .locals 1

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo p1, "profile_owner.xml"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSystemUpdateFreezePeriodRecordAsString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "start: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    const-string/jumbo v2, "null"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "; end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final load([I)V
    .locals 4

    new-instance v0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/OwnersData;)V

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->readFromFileLocked()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    new-instance v3, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;

    invoke-direct {v3, p0, v2}, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/OwnersData;I)V

    invoke-virtual {v3}, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->readFromFileLocked()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    iget v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "User %d has both DO and PO, which is not supported"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "DevicePolicyManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public final writeDeviceOwner()Z
    .locals 1

    new-instance v0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/OwnersData;)V

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->writeToFileLocked()Z

    move-result p0

    return p0
.end method
