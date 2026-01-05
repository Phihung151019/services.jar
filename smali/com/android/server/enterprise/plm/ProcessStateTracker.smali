.class public final Lcom/android/server/enterprise/plm/ProcessStateTracker;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAdapters:Ljava/util/Map;

.field public final mContext:Landroid/content/Context;

.field public mStarted:Z

.field public final mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/util/List;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mAdapters:Ljava/util/Map;

    new-instance v0, Lcom/android/server/enterprise/plm/SystemStateTracker;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/enterprise/plm/SystemStateTracker;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    iput-object p2, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mContext:Landroid/content/Context;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p2, p2, 0x1

    check-cast v0, Lcom/android/server/enterprise/plm/ProcessAdapter;

    iput-object p0, v0, Lcom/android/server/enterprise/plm/ProcessAdapter;->mStateDelegate:Lcom/android/server/enterprise/plm/ProcessStateTracker;

    iget-object v1, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mAdapters:Ljava/util/Map;

    iget-object v2, v0, Lcom/android/server/enterprise/plm/ProcessAdapter;->mKeepAliveImpl:Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    iget-object v2, v2, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    invoke-virtual {v2}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getPackageName()Ljava/lang/String;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    const-string v0, "Invalid message "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "handleMessage : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    const-string/jumbo v3, "ProcessStateTracker"

    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, ""

    packed-switch v1, :pswitch_data_0

    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_0

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string/jumbo v0, "onLockUpdate"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    if-nez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->notifyUpdateToAdapters(Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "onEdmUpdate"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->notifyUpdateToAdapters(Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-boolean v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "onBootUpdate"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->notifyUpdateToAdapters(Ljava/lang/String;)V

    return-void

    :pswitch_3
    iget-boolean v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    const-string/jumbo v0, "onUserUpdate"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->notifyUpdateToAdapters(Ljava/lang/String;)V

    return-void

    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->onPackageUpdate(Landroid/os/Message;)V

    return-void

    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->onLicenseUpdate(Landroid/os/Message;)V

    return-void

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->onTrackerStop()V

    return-void

    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->onTrackerStart(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isKlmActivated()Z
    .locals 4

    iget-object p0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "SystemStateTracker"

    const-string/jumbo v1, "isKlmActive : "

    const/4 v2, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v3, "klm_activated"

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final notifyUpdateToAdapters(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "notify update for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "all"

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    const-string/jumbo v2, "ProcessStateTracker"

    invoke-static {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mAdapters:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/plm/ProcessAdapter;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-object v3, v0, Lcom/android/server/enterprise/plm/ProcessAdapter;->mKeepAliveImpl:Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    if-nez v1, :cond_3

    iget-object v1, v3, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    invoke-virtual {v1}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    iget-object v1, v3, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    invoke-virtual {v1}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "notify update to "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final onLicenseUpdate(Landroid/os/Message;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "ProcessStateTracker"

    const-string/jumbo v1, "onLicenseUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "license "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string/jumbo p1, "activated"

    goto :goto_1

    :cond_2
    const-string/jumbo p1, "deactivated"

    :goto_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->notifyUpdateToAdapters(Ljava/lang/String;)V

    return-void
.end method

.method public final onPackageUpdate(Landroid/os/Message;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "ProcessStateTracker"

    const-string/jumbo v1, "onPackageUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mContext:Landroid/content/Context;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string/jumbo v3, "Utils"

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/plm/ProcessStateTracker;->notifyUpdateToAdapters(Ljava/lang/String;)V

    return-void
.end method

.method public final onTrackerStart(Landroid/os/Message;)V
    .locals 11

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    if-nez p1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/StartReason;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onTrackerStart : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ProcessStateTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    if-nez v0, :cond_b

    invoke-virtual {v3}, Lcom/android/server/enterprise/plm/SystemStateTracker;->stopLicenseStateListener()V

    const-string/jumbo v0, "enterprise_license_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    if-eqz v0, :cond_1

    new-instance v4, Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;

    invoke-direct {v4, v3}, Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;-><init>(Lcom/android/server/enterprise/plm/SystemStateTracker;)V

    iput-object v4, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLicenseStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;

    invoke-virtual {v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget-object v5, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v4, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    :cond_2
    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateObservers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mTargetPackageNames:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v7, v7, 0x1

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9, v6}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v8}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v6, Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    const/4 v0, 0x1

    invoke-direct {v6, v3, v0}, Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;-><init>(Lcom/android/server/enterprise/plm/SystemStateTracker;I)V

    iput-object v6, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    iget-object v5, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->SEM_ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->semRegisterReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :goto_1
    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    if-eqz v0, :cond_5

    iget-object v5, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v4, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    :cond_5
    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateObservers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v5, "android.app.action.DEVICE_OWNER_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v5, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v5, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v5, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    move-result v5

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    new-instance v5, Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    const/4 v6, 0x2

    invoke-direct {v5, v3, v6}, Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;-><init>(Lcom/android/server/enterprise/plm/SystemStateTracker;I)V

    iput-object v5, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    iget-object v6, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    invoke-virtual {v6, v5, v0, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :goto_2
    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    if-eqz v0, :cond_7

    iget-object v5, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v4, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    :cond_7
    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateObservers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    move-result v4

    if-nez v4, :cond_8

    goto :goto_3

    :cond_8
    new-instance v4, Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;-><init>(Lcom/android/server/enterprise/plm/SystemStateTracker;I)V

    iput-object v4, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    iget-object v5, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_3
    invoke-virtual {v3}, Lcom/android/server/enterprise/plm/SystemStateTracker;->stopLockStateListener()V

    new-instance v0, Lcom/android/server/enterprise/plm/SystemStateTracker$LockStateListener;

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/plm/SystemStateTracker$LockStateListener;-><init>(Lcom/android/server/enterprise/plm/SystemStateTracker;)V

    iput-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLockStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$LockStateListener;

    iget-object v4, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLockDetectionTracker:Lcom/android/server/enterprise/plm/LockDetectionTracker;

    iget-object v4, v4, Lcom/android/server/enterprise/plm/LockDetectionTracker;->mLockDetectionEventCallbacks:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLicenseStateObservers:Ljava/util/List;

    new-instance v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    const/4 v5, 0x3

    invoke-direct {v4, p0, v5}, Lcom/android/server/enterprise/plm/common/HandlerObserver;-><init>(Lcom/android/server/enterprise/plm/ProcessStateTracker;I)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateObservers:Ljava/util/List;

    new-instance v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    const/4 v5, 0x4

    invoke-direct {v4, p0, v5}, Lcom/android/server/enterprise/plm/common/HandlerObserver;-><init>(Lcom/android/server/enterprise/plm/ProcessStateTracker;I)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateObservers:Ljava/util/List;

    new-instance v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    invoke-direct {v4, p0, v2}, Lcom/android/server/enterprise/plm/common/HandlerObserver;-><init>(Lcom/android/server/enterprise/plm/ProcessStateTracker;I)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateObservers:Ljava/util/List;

    new-instance v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    const/4 v5, 0x6

    invoke-direct {v4, p0, v5}, Lcom/android/server/enterprise/plm/common/HandlerObserver;-><init>(Lcom/android/server/enterprise/plm/ProcessStateTracker;I)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mEdmStateObservers:Ljava/util/List;

    new-instance v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    const/4 v5, 0x7

    invoke-direct {v4, p0, v5}, Lcom/android/server/enterprise/plm/common/HandlerObserver;-><init>(Lcom/android/server/enterprise/plm/ProcessStateTracker;I)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v3, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLockStateObservers:Ljava/util/List;

    new-instance v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    const/16 v5, 0x8

    invoke-direct {v4, p0, v5}, Lcom/android/server/enterprise/plm/common/HandlerObserver;-><init>(Lcom/android/server/enterprise/plm/ProcessStateTracker;I)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mAdapters:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/plm/ProcessAdapter;

    if-eqz v4, :cond_9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    :cond_a
    const-string/jumbo v0, "start : true"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    :cond_b
    sget-object p0, Lcom/android/server/enterprise/plm/StartReason;->EDM_SERVICE_READY:Lcom/android/server/enterprise/plm/StartReason;

    if-ne p1, p0, :cond_c

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v2, p0}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_c
    :goto_5
    return-void
.end method

.method public final onTrackerStop()V
    .locals 5

    const-string/jumbo v0, "onTrackerStop"

    const-string/jumbo v1, "ProcessStateTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mAdapters:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/plm/ProcessAdapter;

    if-eqz v3, :cond_0

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mSystemStateTracker:Lcom/android/server/enterprise/plm/SystemStateTracker;

    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLockStateObservers:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    invoke-virtual {v4}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    move-result-object v4

    if-ne v4, p0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :cond_3
    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mEdmStateObservers:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    invoke-virtual {v4}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    move-result-object v4

    if-ne v4, p0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :cond_5
    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateObservers:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    invoke-virtual {v4}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    move-result-object v4

    if-ne v4, p0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :cond_7
    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateObservers:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    invoke-virtual {v4}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    move-result-object v4

    if-ne v4, p0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :cond_9
    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateObservers:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    invoke-virtual {v4}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    move-result-object v4

    if-ne v4, p0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :cond_b
    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLicenseStateObservers:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    invoke-virtual {v4}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    move-result-object v4

    if-ne v4, p0, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :cond_d
    invoke-virtual {v2}, Lcom/android/server/enterprise/plm/SystemStateTracker;->stopLockStateListener()V

    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    if-eqz v3, :cond_e

    iget-object v4, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v0, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    :cond_e
    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateObservers:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    if-eqz v3, :cond_f

    iget-object v4, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v0, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    :cond_f
    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateObservers:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    if-eqz v3, :cond_10

    iget-object v4, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v0, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    :cond_10
    iget-object v0, v2, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateObservers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Lcom/android/server/enterprise/plm/SystemStateTracker;->stopLicenseStateListener()V

    const-string/jumbo v0, "start : false"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/plm/ProcessStateTracker;->mStarted:Z

    :cond_11
    return-void
.end method
