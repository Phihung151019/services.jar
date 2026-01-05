.class public final Lcom/android/server/enterprise/email/AccountsReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/email/AccountsReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/email/AccountsReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "AccountsReceiver"

    const-string/jumbo v3, "onReceive() : failed to install cba on accountId : "

    const-string/jumbo v4, "onReceive() userId = "

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "user_handle_id"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v8, "com.samsung.android.knox.intent.extra.USER_HANDLE_ID_INTERNAL"

    invoke-virtual {v1, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-nez v5, :cond_0

    sget-object v0, Lcom/android/server/enterprise/email/AccountsReceiver;->mSmimeCerticateList:Ljava/util/Map;

    const-string/jumbo v0, "onReceive() : Action is null"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    move-object v8, v2

    goto/16 :goto_5

    :cond_0
    sget-object v8, Lcom/android/server/enterprise/email/AccountsReceiver;->mSmimeCerticateList:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "com.samsung.android.knox.intent.action.CBA_INSTALL_STATUS_INTERNAL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v8, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    const-string/jumbo v9, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    const-wide/16 v10, -0x1

    if-eqz v4, :cond_2

    :try_start_1
    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.STATUS"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    invoke-virtual {v1, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    if-ne v4, v5, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    invoke-static {v0, v6, v7, v4}, Lcom/android/server/enterprise/email/AccountsReceiver;->-$$Nest$msendClientAuthResultIntent(Lcom/android/server/enterprise/email/AccountsReceiver;JI)V

    return-void

    :cond_2
    const-string/jumbo v3, "edm.intent.action.sec.MDM_ACCOUNT_SETUP_RESULT"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_EMAIL"

    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.INCOMING_SERVER_ADDRESS"

    const-string/jumbo v12, "com.samsung.android.knox.intent.extra.INCOMING_PROTOCOL"

    const-string/jumbo v13, "com.samsung.android.knox.intent.extra.RECEIVE_HOST_INTERNAL"

    const-string/jumbo v14, "receive_host"

    const-string/jumbo v15, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    const-string/jumbo v10, "com.samsung.android.knox.intent.extra.SERVER_ADDRESS"

    const-string/jumbo v11, "com.samsung.android.knox.intent.extra.SERVICE_NAME_INTERNAL"

    move/from16 p1, v3

    const-string/jumbo v3, "server_name"

    move-object/from16 v18, v2

    const-string/jumbo v2, "eas"

    move-object/from16 v19, v4

    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    move-object/from16 v20, v7

    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.ACCOUNT_SETUP_RESULT_STATUS_INTERNAL"

    move-object/from16 v21, v12

    const-string/jumbo v12, "account_id"

    move-object/from16 v22, v13

    const-string/jumbo v13, "service"

    move-object/from16 v23, v14

    const-string/jumbo v14, "user_id"

    move-object/from16 v24, v15

    const-string/jumbo v15, "status"

    const-string/jumbo v0, "containerid"

    move-object/from16 v25, v0

    const-string/jumbo v0, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    move/from16 v26, v6

    const-string/jumbo v6, "com.samsung.android.knox.intent.extra.RESULT"

    move-object/from16 v27, v10

    const-string/jumbo v10, "com.samsung.android.knox.intent.extra.EMAIL_ADDRESS"

    if-nez p1, :cond_a

    move-object/from16 p1, v0

    :try_start_2
    const-string/jumbo v0, "com.samsung.android.knox.intent.action.MDM_ACCOUNT_SETUP_RESULT_INTERNAL"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v5, p1

    :goto_0
    move-object/from16 v28, v19

    move-object/from16 v29, v20

    move-object/from16 v30, v21

    move-object/from16 v31, v22

    move-object/from16 v32, v23

    move-object/from16 v33, v25

    const/16 v0, 0x8

    goto/16 :goto_2

    :cond_3
    const-string/jumbo v0, "edm.intent.action.sec.MDM_ACCOUNT_DELETE_RESULT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "com.samsung.android.knox.intent.action.MDM_ACCOUNT_DELETE_RESULT_INTERNAL"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_4
    const/16 v0, 0x8

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v8, v18

    goto/16 :goto_5

    :goto_1
    invoke-virtual {v1, v15, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-wide/16 v14, -0x1

    invoke-virtual {v1, v12, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    invoke-virtual {v1, v7, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v8, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    if-nez v5, :cond_5

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_5
    if-nez v13, :cond_6

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_6
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-virtual {v1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.knox.intent.action.EXCHANGE_ACCOUNT_DELETE_RESULT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v3, p1

    invoke-virtual {v1, v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object/from16 v0, v27

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v4, v25

    move/from16 v2, v26

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountsReceiver;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v5, v24

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void

    :cond_8
    move-object/from16 v9, p0

    move-object/from16 v3, p1

    move-object/from16 v11, v23

    move-object/from16 v4, v25

    move/from16 v2, v26

    invoke-virtual {v1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_9

    move-object/from16 v12, v22

    invoke-virtual {v1, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_9
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v12, "com.samsung.android.knox.intent.action.EMAIL_ACCOUNT_DELETE_RESULT"

    invoke-direct {v1, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1, v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object/from16 v0, v21

    invoke-virtual {v1, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, v20

    invoke-virtual {v1, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, v9, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountsReceiver;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void

    :cond_a
    move-object v5, v0

    goto/16 :goto_0

    :goto_2
    invoke-virtual {v1, v15, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v20, v5

    move-object/from16 v19, v6

    move-object v15, v13

    move-object/from16 p1, v14

    const-wide/16 v13, -0x1

    invoke-virtual {v1, v12, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v1, v7, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v8, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    if-nez p1, :cond_b

    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    :cond_b
    move-object/from16 v14, p1

    :goto_3
    if-nez v15, :cond_c

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    :cond_c
    move-object v13, v15

    :goto_4
    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    invoke-virtual {v1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_d
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.knox.intent.action.EXCHANGE_ACCOUNT_ADD_RESULT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v3, v19

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v4, v20

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object/from16 v3, v27

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move/from16 v2, v26

    move-object/from16 v7, v33

    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v9, p0

    iget-object v3, v9, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    iget-object v3, v3, Lcom/android/server/enterprise/email/AccountsReceiver;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v7, v24

    invoke-virtual {v3, v1, v4, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/email/AccountsReceiver;->getSMIMECertificate(Ljava/lang/String;)Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    move-result-object v1

    if-eqz v1, :cond_10

    if-nez v0, :cond_10

    const-wide/16 v16, -0x1

    cmp-long v0, v5, v16

    if-eqz v0, :cond_10

    new-instance v0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;

    invoke-direct {v0}, Ljava/lang/Thread;-><init>()V

    iput-object v1, v0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    iput-wide v5, v0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mAccId:J

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string/jumbo v0, "onRecieve() : SMIMECertificate install called."
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v8, v18

    :try_start_3
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_e
    move-object/from16 v9, p0

    move-object/from16 v8, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move/from16 v2, v26

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    invoke-virtual {v1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_f

    move-object/from16 v12, v31

    invoke-virtual {v1, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_f
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v12, "com.samsung.android.knox.intent.action.EMAIL_ACCOUNT_ADD_RESULT"

    invoke-direct {v1, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object/from16 v0, v30

    invoke-virtual {v1, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, v29

    invoke-virtual {v1, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, v9, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountsReceiver;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-void

    :goto_5
    sget-object v1, Lcom/android/server/enterprise/email/AccountsReceiver;->mSmimeCerticateList:Ljava/util/Map;

    const-string/jumbo v1, "onRecieve() failed. "

    invoke-static {v8, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    return-void
.end method
