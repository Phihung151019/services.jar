.class public final Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;
.super Landroid/os/Binder;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/net/IDomainFilterEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/firewall/DomainFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo p1, "com.android.internal.net.IDomainFilterEventListener"

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string/jumbo v2, "com.android.internal.net.IDomainFilterEventListener"

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    const v4, 0xffffff

    if-gt v1, v4, :cond_0

    move-object/from16 v4, p2

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    :goto_0
    const v5, 0x5f4e5446

    if-ne v1, v5, :cond_1

    move-object/from16 v5, p3

    invoke-virtual {v5, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    :cond_1
    move-object/from16 v5, p3

    if-eq v1, v3, :cond_2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :cond_2
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Landroid/os/Parcel;->enforceNoDataAvail()V

    iget-object v4, v0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v8, "packageName"

    const-string/jumbo v9, "activity"

    const-string v10, "DomainFilter"

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-gez v2, :cond_3

    const-string/jumbo v4, "getPackageFromRunningProcesses() - Invalid PID provided: "

    invoke-static {v2, v4, v10}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    if-gez v1, :cond_4

    const-string/jumbo v2, "getPackageFromRunningProcesses() - Invalid UID provided: "

    invoke-static {v1, v2, v10}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    :try_start_0
    iget-object v15, v4, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityManager;

    if-eqz v15, :cond_5

    invoke-virtual {v15}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_5
    move-object v15, v12

    :goto_1
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v15, :cond_b

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v15, v14, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v15, :cond_6

    iget-object v2, v14, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    array-length v12, v2

    if-ne v12, v3, :cond_8

    aget-object v12, v2, v11

    goto :goto_2

    :cond_8
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v12

    const-string v13, "#SelectClause#"

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v12

    iget-object v4, v4, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "DomainFilterTable"

    invoke-virtual {v4, v13, v12, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, v14, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v11

    :cond_9
    if-ge v13, v12, :cond_a

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/2addr v13, v3

    check-cast v15, Landroid/content/ContentValues;

    invoke-virtual {v15, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v4, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    move-object v12, v15

    goto :goto_2

    :cond_a
    iget-object v2, v14, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v12, v2, v11

    :cond_b
    :goto_2
    if-nez v12, :cond_c

    sget v0, Lcom/android/server/enterprise/firewall/DomainFilter;->MAX_LIST_SIZE_IN_BYTES:I

    const-string/jumbo v0, "failed to find application which was blocked"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_c
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v2, v4, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mTimeStamp:Ljava/lang/String;

    iput-object v1, v4, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUid:Ljava/lang/String;

    iput-object v7, v4, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUrl:Ljava/lang/String;

    move v5, v11

    move v6, v5

    :goto_3
    const/4 v13, 0x5

    if-ge v5, v13, :cond_17

    iget-object v13, v0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    iget-object v13, v13, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    aget-object v13, v13, v5

    if-eqz v13, :cond_16

    iget-object v14, v4, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mTimeStamp:Ljava/lang/String;

    iget-object v15, v13, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mTimeStamp:Ljava/lang/String;

    if-nez v15, :cond_d

    if-nez v14, :cond_16

    :cond_d
    if-eqz v15, :cond_e

    if-nez v14, :cond_e

    goto :goto_4

    :cond_e
    if-eqz v15, :cond_f

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    goto :goto_4

    :cond_f
    iget-object v14, v4, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUid:Ljava/lang/String;

    iget-object v15, v13, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUid:Ljava/lang/String;

    if-nez v15, :cond_10

    if-nez v14, :cond_16

    :cond_10
    if-eqz v15, :cond_11

    if-nez v14, :cond_11

    goto :goto_4

    :cond_11
    if-eqz v15, :cond_12

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    goto :goto_4

    :cond_12
    iget-object v14, v4, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUrl:Ljava/lang/String;

    iget-object v13, v13, Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;->mUrl:Ljava/lang/String;

    if-nez v13, :cond_13

    if-nez v14, :cond_16

    :cond_13
    if-eqz v13, :cond_14

    if-nez v14, :cond_14

    goto :goto_4

    :cond_14
    if-eqz v13, :cond_15

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_15

    goto :goto_4

    :cond_15
    move v6, v3

    :cond_16
    :goto_4
    add-int/2addr v5, v3

    goto :goto_3

    :cond_17
    if-nez v6, :cond_1a

    iget-object v5, v0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    iget-object v6, v5, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    iget v14, v5, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I

    aput-object v4, v6, v14

    add-int/2addr v14, v3

    iput v14, v5, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I

    if-ne v14, v13, :cond_18

    iput v11, v5, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I

    :cond_18
    iget-object v4, v5, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    invoke-virtual {v4, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.knox.intent.action.BLOCKED_DOMAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_PACKAGENAME"

    invoke-virtual {v5, v6, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_TIMESTAMP"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_UID"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_URL"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v6, "com.samsung.android.knox.intent.extra.BLOCKED_DOMAIN_ISFOREGROUND"

    if-eqz v4, :cond_19

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_5

    :cond_19
    invoke-virtual {v5, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_5
    iget-object v4, v0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    iget-object v4, v4, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v9, "com.samsung.android.knox.permission.KNOX_FIREWALL"

    invoke-virtual {v4, v5, v6, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, -0x1

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    const-string/jumbo v1, "saveReportInDatabase() - Error parsing userId received from daemon."

    invoke-static {v10, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v5

    :goto_6
    if-eq v0, v5, :cond_1a

    iget-object v1, v4, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string/jumbo v1, "time"

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-static {v0, v1, v2, v8, v12}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-virtual {v1, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v4, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DomainFilterReportTable"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_1a

    const-string/jumbo v0, "saveReportInDatabase() - Failed to save domain report in database"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    :goto_7
    return v3

    :goto_8
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method
