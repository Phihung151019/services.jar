.class public final Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public callingRestriction:I

.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;

.field public final token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    check-cast v1, Lcom/android/server/appop/AppOpsRestrictionsImpl;

    invoke-virtual {v1, v2}, Lcom/android/server/appop/AppOpsRestrictionsImpl;->clearUserRestrictions(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final hasRestriction(Ljava/lang/String;IZILjava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    check-cast v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;

    iget-object v1, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    :goto_0
    move p2, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v1, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    :goto_1
    if-nez p2, :cond_2

    return v2

    :cond_2
    iget-object p2, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {p2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-nez p0, :cond_3

    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PackageTagsList;

    :goto_2
    const/4 p2, 0x1

    if-nez p0, :cond_4

    return p2

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p0, p1}, Landroid/os/PackageTagsList;->includes(Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, p2

    return p0

    :cond_5
    invoke-virtual {p0, p1, p5}, Landroid/os/PackageTagsList;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, p2

    return p0
.end method

.method public final removeUser(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    check-cast v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;

    iget-object v1, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v2, :cond_3

    invoke-static {}, Landroid/app/AppOpsManager;->invalidateAppOpModeCache()V

    :cond_3
    return-void
.end method

.method public final setRestriction(IZLandroid/os/PackageTagsList;I)Z
    .locals 9

    iget v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->callingRestriction:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->callingRestriction:I

    if-nez v0, :cond_1

    iput v1, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->callingRestriction:I

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG_MID:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "AppOps"

    const-string/jumbo v2, "setRestriction() :: CallingUid is SS_SHELL_UID"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->token:Landroid/os/IBinder;

    check-cast v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p4, v2, :cond_2

    iget-object p4, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mContext:Landroid/content/Context;

    invoke-static {p4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p4

    invoke-virtual {p4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    move v4, v3

    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v2, v1, [I

    aput p4, v2, v3

    :cond_3
    move p4, v3

    move v4, p4

    :goto_1
    array-length v5, v2

    if-ge p4, v5, :cond_10

    aget v5, v2, p4

    if-eqz p2, :cond_6

    iget-object v6, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v6, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v6, p0, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v6, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v6, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->contains(I)Z

    move-result v7

    if-nez v7, :cond_5

    new-instance v7, Landroid/util/SparseBooleanArray;

    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-virtual {v6, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    xor-int/2addr v6, v1

    invoke-virtual {v5, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_3

    :cond_6
    iget-object v6, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v6, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    if-nez v6, :cond_7

    :goto_2
    move v6, v3

    goto :goto_3

    :cond_7
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseBooleanArray;

    if-nez v7, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v7, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    invoke-virtual {v7, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->remove(I)V

    :cond_9
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v5, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    move v6, v8

    :goto_3
    or-int/2addr v4, v6

    aget v5, v2, p4

    if-eqz p3, :cond_c

    invoke-virtual {p3}, Landroid/os/PackageTagsList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v6, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v6, p0, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v6, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v6, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v5, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v7, v1

    goto :goto_5

    :cond_c
    iget-object v6, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v6, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    if-nez v6, :cond_d

    move v7, v3

    goto :goto_5

    :cond_d
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_e

    move v7, v1

    goto :goto_4

    :cond_e
    move v7, v3

    :goto_4
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, v0, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mUserRestrictionExcludedPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v5, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    :goto_5
    or-int/2addr v4, v7

    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_1

    :cond_10
    if-eqz v4, :cond_11

    invoke-static {}, Landroid/app/AppOpsManager;->invalidateAppOpModeCache()V

    :cond_11
    return v4
.end method
