.class public final Lcom/android/server/enterprise/certificate/CertificatePolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string/jumbo v0, "android.intent.extra.user_handle"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->cleanUid(I)V

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->cleanUid(I)V

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRollbackRefresh:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    iget-object v0, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPendingKeystoreAction:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/certificate/CertificateCache;->removeUserFromCache(I)V

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/certificate/CertificateCache;->removeUserFromCache(I)V

    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPersonaManagerAdapter$2()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object p1

    check-cast p1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "CertificatePolicy"

    const-string/jumbo p2, "Reloading cache for new user"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->initCache(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->initCache(I)V

    goto :goto_2

    :cond_2
    const-string/jumbo v0, "android.intent.action.DEVICE_LOCKED_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    iget-object p1, p1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyUserKeystoreUnlocked(I)V

    :cond_4
    :goto_2
    return-void

    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CertificatePolicy"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_6

    const-string/jumbo p2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string/jumbo p2, "com.samsung.android.knox.intent.action.EDM_BOOT_COMPLETED_INTERNAL"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootCompleted:Z

    iget-object v0, p1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootReceiver:Lcom/android/server/enterprise/certificate/CertificatePolicy$2;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->initCache(I)V

    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->initCache(I)V

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 p1, 0x3

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    :cond_6
    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "isMarketInstallation"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p1, :cond_8

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p2, :cond_8

    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-$$Nest$mdisplayAppSignature(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
