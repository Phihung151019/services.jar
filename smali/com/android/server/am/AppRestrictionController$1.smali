.class public final Lcom/android/server/am/AppRestrictionController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/AppRestrictionController$1;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 p1, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/am/AppRestrictionController$1;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "com.android.server.am.ACTION_FGS_MANAGER_TRAMPOLINE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "android.intent.extra.UID"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->cancelRequestBgRestrictedIfNecessary(ILjava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo p2, "android.intent.action.SHOW_FOREGROUND_SERVICE_MANAGER"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x1000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/AppRestrictionController;

    iget-object p1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-ge v0, p1, :cond_2

    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {p2}, Lcom/android/server/am/BaseAppStateTracker;->onLockedBootCompleted()V

    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    iput-boolean v1, p0, Lcom/android/server/am/AppRestrictionController;->mLockedBootCompleted:Z

    :goto_2
    return-void

    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    goto/16 :goto_12

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_3
    move v2, p1

    goto/16 :goto_4

    :sswitch_0
    const-string/jumbo v3, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x7

    goto :goto_4

    :sswitch_1
    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x6

    goto :goto_4

    :sswitch_2
    const-string/jumbo v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x5

    goto :goto_4

    :sswitch_3
    const-string/jumbo v3, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    const/4 v2, 0x4

    goto :goto_4

    :sswitch_4
    const-string/jumbo v3, "android.intent.action.USER_STOPPED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    const/4 v2, 0x3

    goto :goto_4

    :sswitch_5
    const-string/jumbo v3, "android.intent.action.USER_STARTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_3

    :cond_9
    const/4 v2, 0x2

    goto :goto_4

    :sswitch_6
    const-string/jumbo v3, "android.intent.action.UID_REMOVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_3

    :cond_a
    move v2, v1

    goto :goto_4

    :sswitch_7
    const-string/jumbo v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_3

    :cond_b
    move v2, v0

    :goto_4
    packed-switch v2, :pswitch_data_1

    goto/16 :goto_12

    :pswitch_2
    const-string/jumbo v0, "android.intent.extra.UID"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-ltz p1, :cond_15

    if-eqz p2, :cond_15

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_15

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/AppRestrictionController;

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    if-ltz v1, :cond_c

    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {p2, v1}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {p2, v1}, Landroid/util/SparseArrayMap;->deleteAt(I)V

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_c
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    iget-object p2, p2, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettingsXmlLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_15

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->schedulePersistToXml(I)V

    goto/16 :goto_12

    :goto_6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_3
    const-string/jumbo v2, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_15

    const-string/jumbo v2, "android.intent.extra.UID"

    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_15

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/AppRestrictionController;

    const/16 p2, 0x600

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUid(IIIZ)V

    iget-object p1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_7
    if-ge v0, p1, :cond_15

    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/2addr v0, v1

    goto :goto_7

    :pswitch_4
    const-string/jumbo v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_15

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/AppRestrictionController;

    iget-object p1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_8
    if-ge v0, p1, :cond_15

    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/2addr v0, v1

    goto :goto_8

    :pswitch_5
    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/am/AppRestrictionController;

    iget-object v0, p2, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object v2, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_d

    iget-object v2, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_d
    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_e

    goto :goto_a

    :cond_e
    iget-object v2, p2, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_9
    if-ltz v3, :cond_f

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->unregisterCarrierPrivilegesCallback(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    add-int/2addr v3, p1

    goto :goto_9

    :cond_f
    const/4 p1, 0x0

    iput-object p1, p2, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

    :cond_10
    :goto_a
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->registerCarrierPrivilegesCallbacks()V

    goto/16 :goto_12

    :pswitch_6
    const-string/jumbo v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_15

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/AppRestrictionController;

    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_b
    if-ge v0, p2, :cond_15

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUserStopped(I)V

    add-int/2addr v0, v1

    goto :goto_b

    :pswitch_7
    const-string/jumbo v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_15

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUser(I)V

    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_c
    if-ge v0, p2, :cond_15

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUserStarted(I)V

    add-int/2addr v0, v1

    goto :goto_c

    :pswitch_8
    const-string/jumbo v2, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_15

    const-string/jumbo v2, "android.intent.extra.UID"

    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_15

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/AppRestrictionController;

    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_d
    if-ge v0, p2, :cond_11

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUidRemoved(I)V

    add-int/2addr v0, v1

    goto :goto_d

    :cond_11
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    iget-object p2, p2, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    iget-object p2, p2, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettingsXmlLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_15

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->schedulePersistToXml(I)V

    goto :goto_12

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :pswitch_9
    const-string/jumbo v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ltz p2, :cond_15

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/AppRestrictionController;

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_e
    if-ge v0, v2, :cond_12

    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BaseAppStateTracker;

    invoke-virtual {v3, p2}, Lcom/android/server/am/BaseAppStateTracker;->onUserRemoved(I)V

    add-int/2addr v0, v1

    goto :goto_e

    :cond_12
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v2}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_f
    if-ltz v2, :cond_14

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v1, p2, :cond_13

    goto :goto_10

    :cond_13
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/SparseArrayMap;->deleteAt(I)V

    :goto_10
    add-int/2addr v2, p1

    goto :goto_f

    :catchall_2
    move-exception p0

    goto :goto_11

    :cond_14
    monitor-exit v0

    goto :goto_12

    :goto_11
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :cond_15
    :goto_12
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x7ad942ef -> :sswitch_7
        -0x6849e2b4 -> :sswitch_6
        -0x2d021ace -> :sswitch_5
        -0x2c3dc982 -> :sswitch_4
        0x412a6228 -> :sswitch_3
        0x42dd01f1 -> :sswitch_2
        0x5c1076e2 -> :sswitch_1
        0x5e33a4ad -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
