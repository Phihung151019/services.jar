.class public final Lcom/android/server/enterprise/security/PasswordPolicy$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/enterprise/security/PasswordPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$4;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget v2, v0, Lcom/android/server/enterprise/security/PasswordPolicy$4;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v3

    iget-object v4, v0, Lcom/android/server/enterprise/security/PasswordPolicy$4;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget-object v4, v4, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    const-string/jumbo v7, "com.samsung.android.knox.intent.action.PWD_CHANGE_TIMEOUT_INTERNAL"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, -0x3

    const/4 v10, -0x1

    if-eqz v7, :cond_2

    iget-object v1, v0, Lcom/android/server/enterprise/security/PasswordPolicy$4;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUserFromDb(I)I

    move-result v2

    if-ne v2, v10, :cond_f

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    iget-object v6, v1, Lcom/android/server/enterprise/security/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v6

    if-eqz v6, :cond_1

    if-eq v3, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v9, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(II)Z

    goto/16 :goto_5

    :cond_1
    :goto_0
    invoke-virtual {v1, v8, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(II)Z

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->changePasswordAsUser(I)V

    goto/16 :goto_5

    :cond_2
    const-string/jumbo v7, "android.intent.action.USER_STARTED"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v11, 0x0

    const/4 v12, 0x3

    const/4 v13, -0x2

    const/4 v14, 0x1

    const/4 v15, -0x4

    const-string/jumbo v8, "android.intent.extra.user_handle"

    if-eqz v7, :cond_6

    invoke-virtual {v1, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_f

    iget-object v2, v0, Lcom/android/server/enterprise/security/PasswordPolicy$4;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUserFromDb(I)I

    move-result v3

    if-eq v3, v15, :cond_5

    if-eq v3, v9, :cond_4

    if-eq v3, v13, :cond_3

    if-eq v3, v10, :cond_4

    if-eq v3, v14, :cond_3

    move v8, v11

    goto :goto_1

    :cond_3
    move v8, v14

    goto :goto_1

    :cond_4
    const/4 v8, 0x2

    goto :goto_1

    :cond_5
    move v8, v12

    :goto_1
    if-eqz v8, :cond_f

    invoke-virtual {v2, v8, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(II)Z

    if-ne v8, v14, :cond_f

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->changePasswordAsUser(I)V

    goto/16 :goto_5

    :cond_6
    const-string/jumbo v7, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v1, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_f

    iget-object v2, v0, Lcom/android/server/enterprise/security/PasswordPolicy$4;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUserFromDb(I)I

    move-result v3

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasPassword(I)Z

    move-result v6

    if-lez v3, :cond_f

    if-nez v6, :cond_f

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->changePasswordAsUser(I)V

    goto/16 :goto_5

    :cond_7
    const-string/jumbo v7, "android.intent.action.PHONE_STATE"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v1, v0, Lcom/android/server/enterprise/security/PasswordPolicy$4;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget-object v1, v1, Lcom/android/server/enterprise/security/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, v0, Lcom/android/server/enterprise/security/PasswordPolicy$4;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUserFromDb(I)I

    move-result v2

    if-eq v2, v15, :cond_a

    if-eq v2, v9, :cond_9

    if-eq v2, v13, :cond_8

    move v8, v11

    goto :goto_2

    :cond_8
    move v8, v14

    goto :goto_2

    :cond_9
    const/4 v8, 0x2

    goto :goto_2

    :cond_a
    move v8, v12

    :goto_2
    if-lez v8, :cond_f

    invoke-virtual {v1, v8, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(II)Z

    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->changePasswordAsUser(I)V

    goto :goto_5

    :cond_b
    const-string/jumbo v6, "com.samsung.android.knox.intent.action.NOTIFICATION_PASSWORD_EXPIRED_INTERNAL"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string/jumbo v2, "PasswordPolicy"

    const-string/jumbo v6, "Received ACTION_PASSWORD_EXPIRING_NOTIFICATION_INTERNAL intent"

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "expiration"

    const-wide/16 v7, -0x1

    invoke-virtual {v1, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long v1, v9, v7

    if-eqz v1, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v1, v9, v6

    if-lez v1, :cond_c

    goto :goto_4

    :cond_c
    const-string/jumbo v1, "Password expired already so launching password screen"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/enterprise/security/PasswordPolicy$4;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget-object v1, v1, Lcom/android/server/enterprise/security/PasswordPolicy;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    check-cast v1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_d

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const-string/jumbo v6, "com.android.settings"

    invoke-interface {v1, v6, v3}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string/jumbo v1, "forceStopPackage failed"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_3
    iget-object v1, v0, Lcom/android/server/enterprise/security/PasswordPolicy$4;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-virtual {v1, v11, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeForUser(II)Z

    goto :goto_5

    :cond_e
    :goto_4
    const-string v1, "In grace period or failed to get "

    invoke-static {v1, v9, v10, v2}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy$4;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    :cond_f
    :goto_5
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy$4;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_6
    return-void

    :pswitch_0
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy$4;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->updateSystemUIMonitor$9(I)V

    :cond_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
