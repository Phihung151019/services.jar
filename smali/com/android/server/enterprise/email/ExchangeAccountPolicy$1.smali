.class public final Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$sync:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 33

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    iget v2, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    const-string/jumbo v2, "force SMIME Certificate has failed. status = "

    const-string/jumbo v3, "forcing "

    const-string/jumbo v4, "failed to SMIME Certificate (Alias)."

    const-string/jumbo v5, "failed to release SMIME Certificate (Alias) : "

    const-string/jumbo v6, "success to SMIME Certificate (Alias) : "

    const-string/jumbo v7, "success to release SMIME Certificate (Alias) : "

    const-string/jumbo v8, "force SMIME Certificate for Signing (Alias). ret = "

    const-string/jumbo v9, "force SMIME Certificate for Enryption (Alias). ret = "

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "Received Intent - "

    const-string v12, "ExchangeAccountPolicy/Receiver"

    invoke-static {v11, v10, v12}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v10, :cond_0

    const-string/jumbo v0, "failed. action is null."

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_0
    const-string/jumbo v11, "com.samsung.edm.intent.action.EXCHANGE_SMIME_INSTALL_STATUS"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    const-string/jumbo v13, "com.samsung.android.knox.intent.extra.SMIME_INSTALL_TYPE"

    const-wide/16 v16, 0x0

    const-string/jumbo v14, "com.samsung.android.knox.intent.extra.CERT_RESULT_ID_INTERNAL"

    const-string/jumbo v15, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    move/from16 v18, v11

    const-string/jumbo v11, "com.samsung.android.knox.intent.extra.SMIME_RESULT"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    const/4 v2, 0x0

    const-string/jumbo v3, "S"

    if-eqz v18, :cond_8

    const-string/jumbo v4, "Received - ACTION_SMIME_INSTALL_STATUS"

    invoke-static {v12, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v11, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-wide/16 v5, -0x1

    invoke-virtual {v0, v15, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v24

    invoke-virtual {v0, v14, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/email/AccountsReceiver;->getSMIMECertificate(Ljava/lang/String;)Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    move-result-object v3

    if-nez v3, :cond_1

    const-string/jumbo v0, "failed. no registed work. id = "

    invoke-static {v0, v5, v6, v12}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_8

    :cond_1
    const/4 v5, -0x1

    if-ne v4, v5, :cond_7

    cmp-long v5, v24, v16

    if-lez v5, :cond_7

    const/4 v5, 0x1

    invoke-virtual {v0, v13, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v3, v3, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v4, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v3, v3, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/4 v6, 0x2

    if-eq v0, v6, :cond_3

    if-ne v0, v5, :cond_2

    goto :goto_0

    :cond_2
    move/from16 v23, v3

    move/from16 v22, v4

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v2, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    move-object/from16 v21, v2

    check-cast v21, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    const/16 v27, 0x1

    const-string v26, "ForceSmimeCertForEncryption"

    move/from16 v23, v3

    move/from16 v22, v4

    invoke-virtual/range {v21 .. v27}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJLjava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v3, "force SMIME Certificate for Enryption. ret = "

    invoke-static {v3, v12, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v5, 0x1

    if-ne v0, v5, :cond_5

    :cond_4
    iget-object v1, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    move-object/from16 v21, v1

    check-cast v21, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    const/16 v27, 0x1

    const-string v26, "ForceSmimeCertForSigning"

    invoke-virtual/range {v21 .. v27}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJLjava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v1, "force SMIME Certificate for Signing. ret = "

    invoke-static {v1, v12, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_5
    if-eqz v2, :cond_6

    const-string/jumbo v1, "success to SMIME Certificate ."

    invoke-static {v0, v1, v12}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_6
    const-string/jumbo v1, "failed to SMIME Certificate ."

    invoke-static {v0, v1, v12}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_7
    move-wide/from16 v0, v24

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "failed to enforce SMIME. accId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", status = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_8
    const-string/jumbo v2, "com.samsung.android.knox.intent.action.ENFORCE_SMIME_ALIAS_EMAIL_INTERNAL"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "ExchangeAccountPolicy"

    const-string/jumbo v10, "Received - ACTION_ENFORCE_SMIME_ALIAS_EMAIL_INTERNAL"

    invoke-static {v2, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {v0, v11, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    move-object/from16 v18, v3

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v15, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v26

    move-object/from16 v21, v11

    const/4 v11, -0x1

    invoke-virtual {v0, v13, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v0, v14, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v11, v18

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/email/AccountsReceiver;->getSMIMECertificate(Ljava/lang/String;)Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    iget-object v14, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    move-object/from16 v18, v11

    iget v11, v14, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move/from16 v19, v11

    iget v11, v14, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    move/from16 v28, v11

    const/4 v11, -0x1

    if-ne v10, v11, :cond_10

    cmp-long v11, v26, v16

    if-lez v11, :cond_10

    if-nez v13, :cond_a

    if-nez v18, :cond_9

    iget-object v2, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    move-object/from16 v24, v2

    check-cast v24, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    const/16 v29, 0x2

    const/16 v30, 0x1

    move-object/from16 v25, v14

    invoke-virtual/range {v24 .. v30}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JIIZ)Z

    move-result v2

    const-string/jumbo v3, "release SMIME Certificate for Enryption (Alias) by null."

    invoke-static {v12, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v25, v19

    :goto_2
    const/4 v3, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    :goto_3
    move-object/from16 p1, v15

    move-wide/from16 v14, v26

    goto/16 :goto_6

    :cond_9
    iget-object v2, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    move-object/from16 v24, v2

    check-cast v24, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    const-string v29, "ForceSmimeCertForEncryption"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v30, 0x1

    move-wide/from16 v31, v26

    move/from16 v26, v28

    move-wide/from16 v27, v31

    move/from16 v25, v19

    :try_start_1
    invoke-virtual/range {v24 .. v30}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJLjava/lang/String;Z)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v28, v26

    move-wide/from16 v26, v31

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v0

    move-wide/from16 v26, v27

    goto :goto_3

    :cond_a
    move/from16 v25, v19

    const/4 v2, 0x0

    goto :goto_2

    :goto_4
    if-ne v13, v3, :cond_b

    if-nez v18, :cond_c

    iget-object v2, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    move-object/from16 v24, v2

    check-cast v24, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    const/16 v29, 0x3

    const/16 v30, 0x1

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v30}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateInternal(Lcom/samsung/android/knox/ContextInfo;JIIZ)Z

    move-result v2

    const-string/jumbo v0, "release SMIME Certificate for Signing (Alias) by null."

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object/from16 p1, v15

    move-wide/from16 v14, v26

    goto :goto_5

    :cond_c
    iget-object v0, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    const-string v29, "ForceSmimeCertForSigning"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v30, 0x1

    move-wide/from16 v31, v26

    move/from16 v26, v28

    move-wide/from16 v27, v31

    :try_start_3
    invoke-virtual/range {v24 .. v30}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJLjava/lang/String;Z)Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 p1, v15

    move-wide/from16 v14, v27

    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_2
    move-exception v0

    goto/16 :goto_6

    :catch_3
    move-exception v0

    move-object/from16 p1, v15

    move-wide/from16 v14, v27

    goto/16 :goto_6

    :goto_5
    if-eqz v2, :cond_e

    if-nez v18, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_e
    if-nez v18, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_10
    move-object/from16 p1, v15

    move-wide/from16 v14, v26

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v4, v20

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_11
    move-object/from16 p1, v15

    move-wide/from16 v14, v26

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v2, v19

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", accId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :goto_6
    const-string v2, "Failed to apply SMIME Alis Policy on success."

    invoke-static {v12, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    iget-object v0, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.action.ENFORCE_SMIME_ALIAS_RESULT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p1

    invoke-virtual {v1, v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object/from16 v2, v21

    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.ENFORCE_SMIME_ALIAS_TYPE"

    invoke-virtual {v1, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_8

    :cond_12
    const-string/jumbo v0, "no Defined Intent."

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    return-void

    :pswitch_0
    const-string/jumbo v2, "userid"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "deviceid"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_13

    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.DEVICE_ID_INTERNAL"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_13
    const-string v0, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getDeviceId() : receive userId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , deviceid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    iget-object v0, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;->val$sync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
