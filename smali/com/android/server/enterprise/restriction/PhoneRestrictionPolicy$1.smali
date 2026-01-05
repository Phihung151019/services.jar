.class public final Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    iget v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object p2

    const-string/jumbo v0, "smsBlockHandler"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->this$0:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->this$0:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "PhoneRestrictionPolicy"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "com.samsung.android.knox.intent.action.PHONE_READY_INTERNAL"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_6

    :cond_1
    const-string/jumbo p1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string/jumbo p1, "PhoneRestrictionPolicy"

    const-string/jumbo p2, "Received ACTION_SIM_STATE_CHANGED broadcast"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    iget-object p1, p1, Lcom/android/server/enterprise/restriction/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo p2, "SimTable"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-lez p1, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    move p1, p2

    :goto_1
    if-nez p1, :cond_3

    monitor-exit p0

    goto/16 :goto_7

    :cond_3
    :try_start_2
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, p2

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    move v4, v0

    goto :goto_3

    :cond_5
    move v4, p2

    :goto_3
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    const-string/jumbo v6, "PhoneRestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unlockAllSimCards Got iccId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for subscriptionId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v2

    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getPinCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEnterpriseSimPin:Lcom/android/server/enterprise/restriction/EnterpriseSimPin;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v2}, Lcom/android/server/enterprise/restriction/EnterpriseSimPin;->supplyPinReportResultForSubscriber(ILjava/lang/String;)V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_5

    :cond_6
    if-eqz v4, :cond_4

    move v1, v0

    goto :goto_2

    :cond_7
    move p2, v1

    goto :goto_4

    :cond_8
    const-string/jumbo p1, "PhoneRestrictionPolicy"

    const-string/jumbo v0, "unlockAllSimCards subInfoList list is null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mKeyguardManager:Landroid/app/KeyguardManager;

    :cond_9
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz p2, :cond_a

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.knox.intent.action.DO_KEYGUARD_INTERNAL"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_a
    monitor-exit p0

    goto :goto_7

    :goto_5
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_b
    :goto_6
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setLockedIccIdsSystemUI(I)V

    :cond_c
    :goto_7
    return-void

    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "PhoneRestrictionPolicy"

    if-nez p1, :cond_d

    const-string/jumbo p0, "action is null"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_d
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    iget-object p1, p1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    iget-object p2, p2, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    iget-object p1, p1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "content://com.sec.knox.provider2/PhoneRestrictionPolicy/isRCSEnabled"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->notifySmsPatternCheck()V

    goto :goto_8

    :cond_e
    const-string/jumbo p2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    const-string/jumbo p2, "android.intent.action.REBOOT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    :cond_f
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mIsPhoneShuttingDown:Z

    :cond_10
    :goto_8
    return-void

    :pswitch_2
    const-string/jumbo p1, "subscription"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_11

    if-ne p1, p2, :cond_12

    :cond_11
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    move-result p1

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setNetworkState(IZ)V

    :cond_12
    return-void

    :pswitch_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RcsReceiver, intent received : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "PhoneRestrictionPolicy"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1c

    if-nez v0, :cond_13

    goto/16 :goto_b

    :cond_13
    const-string/jumbo p2, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_SEND_MESSAGE_RESPONSE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string/jumbo v2, "response_status"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string/jumbo p0, "rcs message sent fail case, return"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_14
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_NEW_MESSAGE"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/16 v5, -0x1

    const-string/jumbo v7, "id"

    if-nez v4, :cond_19

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    goto :goto_9

    :cond_15
    const-string/jumbo p2, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string/jumbo v3, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_COMPLETED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    :cond_16
    const-string/jumbo v3, "sessionId"

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v2, v7, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    const-string/jumbo p1, "com.samsung.android.knox.intent.action.RCS_MSG_FILE_THUMBNAIL_RECEIVED"

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_a

    :cond_17
    const-string/jumbo p1, "sessionDirection"

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_18

    const-string/jumbo p1, "com.samsung.android.knox.intent.action.RCS_MSG_FILE_RECEIVED"

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_a

    :cond_18
    const-string/jumbo p1, "com.samsung.android.knox.intent.action.RCS_MSG_FILE_SENT"

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_a

    :cond_19
    :goto_9
    const-string/jumbo p2, "message_id"

    invoke-virtual {v0, p2, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v2, v7, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const-string/jumbo p1, "com.samsung.android.knox.intent.action.RCS_MSG_TEXT_RECEIVED"

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_a

    :cond_1a
    const-string/jumbo p1, "com.samsung.android.knox.intent.action.RCS_MSG_TEXT_SENT"

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1b
    :goto_a
    const-string/jumbo p1, "RcsReceiver, sendRcsBroadcast"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_c

    :cond_1c
    :goto_b
    const-string/jumbo p0, "No data arrived at mRcsReceiver"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    return-void

    :pswitch_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const-string/jumbo p1, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setLockedIccIdsSystemUI(I)V

    :cond_1d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
