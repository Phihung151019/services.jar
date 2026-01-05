.class public final Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 p1, 0x0

    const/4 v0, -0x1

    const-string/jumbo v1, "UniversalCredentialManagerService"

    iget v2, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    sget-object p1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->sContext:Landroid/content/Context;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "UcsReceiver intent "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "com.samsung.android.knox.intent.action.UCM_PLUGIN_STATUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->notifyUCMConfigStatus(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "UcsReceiver no bundle extras received from plugin"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "UcsReceiver no extras received from plugin...."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iget-object v2, v2, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-string/jumbo v3, "android.intent.extra.UID"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v3, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v3, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    filled-new-array {v0}, [I

    move-result-object p2

    iput-object p2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object p2, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->sContext:Landroid/content/Context;

    const-string p2, "ACTION_PACKAGE_REMOVED : replacingApp -"

    invoke-static {p2, v1, p1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_3
    const-string p0, "ACTION_PACKAGE_REMOVED : No need to cleanup db entries for app update"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->sContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "inside mBReciever onReceive : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const-string/jumbo v5, "android.intent.extra.user_handle"

    if-eqz v3, :cond_4

    invoke-virtual {p2, v5, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "ACTION_USER_REMOVED UserHandle : "

    invoke-static {p1, p2, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iget-object p2, p2, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    invoke-virtual {p2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    iput p1, p2, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4

    :cond_4
    const-string/jumbo v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p2, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iget-object p2, p2, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p2, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "showEnforcedLockTypeNotificationForAllUser "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p2, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string/jumbo v3, "The exception occurs "

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    :try_start_0
    invoke-virtual {p2, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getEnforcedCredentialStorageFromDb(I)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object v4

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService$1()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v5

    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    iget-object v6, v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-interface {v5, v2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v4, v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-interface {v5, v2, v4}, Lcom/samsung/android/knox/ucm/core/IUcmService;->showEnforcedLockTypeNotification(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4, v1}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService$1()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    const-string/jumbo p1, "none"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_c

    const-string/jumbo p0, "persist.keyguard.ucs"

    const-string/jumbo p1, "true"

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_7
    const-string/jumbo v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iget-object p1, p1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4

    :cond_8
    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    const-string/jumbo v0, "android.intent.action.DEVICE_LOCKED_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p2, v5, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iget-object v0, p2, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mKgm:Landroid/app/KeyguardManager;

    if-nez v0, :cond_a

    iget-object v0, p2, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p2, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mKgm:Landroid/app/KeyguardManager;

    :cond_a
    iget-object p2, p2, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mKgm:Landroid/app/KeyguardManager;

    invoke-virtual {p2, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mLockEventReceiver. userId ["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "] isDeviceLocked ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    xor-int/lit8 p1, p2, 0x1

    iput p1, v0, Landroid/os/Message;->arg2:I

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iget-object p1, p1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_c
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
