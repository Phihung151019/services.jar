.class public final Lcom/android/server/appop/AppOpsService$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appop/AppOpsService;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/appop/AppOpsService$4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$4;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    iget p1, p0, Lcom/android/server/appop/AppOpsService$4;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    const-string/jumbo p1, "android.intent.extra.changed_uid_list"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p1

    const-string/jumbo v0, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/android/server/appop/AppOpsService;->OPS_RESTRICTED_ON_SUSPEND:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget v6, v0, v3

    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$4;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$4;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v5, v5, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    if-nez v5, :cond_0

    monitor-exit v4

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_0
    move-object v7, v5

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v7}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v10, v2

    :goto_1
    array-length v4, p1

    if-ge v10, v4, :cond_3

    aget v7, p1, v10

    aget-object v8, p2, v10

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v9, "default:0"

    invoke-virtual {v4, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/android/server/appop/AppOpsService$4;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v9, v9, Lcom/android/server/appop/AppOpsService;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getAllPersistentDeviceIds()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$4;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/appop/AppOpsService;->notifyOpChanged(Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_4
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    return-void

    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.UID"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/android/server/appop/AppOpsService$4;->this$0:Lcom/android/server/appop/AppOpsService;

    sget-boolean p0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    monitor-enter p2

    :try_start_2
    invoke-virtual {p2, v1, v0}, Lcom/android/server/appop/AppOpsService;->packageRemovedLocked(ILjava/lang/String;)V

    monitor-exit p2

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object p0, v0

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_6
    const-string/jumbo p2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$4;->this$0:Lcom/android/server/appop/AppOpsService;

    sget-boolean p1, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    monitor-enter p0

    :try_start_3
    invoke-virtual {p0, p1, v1}, Lcom/android/server/appop/AppOpsService;->refreshAttributionsLocked(Lcom/android/server/pm/pkg/AndroidPackage;I)V

    monitor-exit p0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :cond_8
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
