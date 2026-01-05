.class public final Lcom/android/server/DirEncryptService$1$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/DirEncryptService$1;

.field public final synthetic val$extras:Landroid/os/PersistableBundle;

.field public final synthetic val$resp_code:I


# direct methods
.method public constructor <init>(Lcom/android/server/DirEncryptService$1;ILandroid/os/PersistableBundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/DirEncryptService$1$1;->this$1:Lcom/android/server/DirEncryptService$1;

    iput p2, p0, Lcom/android/server/DirEncryptService$1$1;->val$resp_code:I

    iput-object p3, p0, Lcom/android/server/DirEncryptService$1$1;->val$extras:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/DirEncryptService$1$1;->this$1:Lcom/android/server/DirEncryptService$1;

    iget-object v1, v1, Lcom/android/server/DirEncryptService$1;->this$0:Lcom/android/server/DirEncryptService;

    iget-object v1, v1, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    iget v2, v0, Lcom/android/server/DirEncryptService$1$1;->val$resp_code:I

    iget-object v0, v0, Lcom/android/server/DirEncryptService$1$1;->val$extras:Landroid/os/PersistableBundle;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "ENCRYPT Response admin : "

    const-string v4, "ENCRYPT Response admin : "

    const-string v5, ""

    const-string v6, "DirEncryptServiceHelperVoldResponse.PROGRESS percentage("

    const-string v7, ""

    const-string v8, "ENC_META_CHECK : EAS Policy Set"

    const-string/jumbo v9, "onEventInner resp_code: "

    sget-object v10, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    const-string/jumbo v11, "path"

    invoke-virtual {v0, v11}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v11, "status"

    invoke-virtual {v0, v11}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v12, "description"

    invoke-virtual {v0, v12}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "arg1"

    invoke-virtual {v0, v13}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string/jumbo v14, "arg2"

    invoke-virtual {v0, v14}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v14, "DirEncryptServiceHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " status : "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x6

    const/4 v15, 0x1

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_a

    :pswitch_1
    const/16 v0, 0xb

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    const-string v2, ""

    invoke-virtual {v1, v0, v11, v2}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    invoke-virtual {v1, v9}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    if-nez v11, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    const-string/jumbo v2, "free"

    invoke-virtual {v1, v0, v9, v9, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :pswitch_2
    iput v9, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    iput v9, v1, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    iput-boolean v9, v1, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    iget-object v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "DirEncryptServiceHelper"

    const-string/jumbo v1, "there is no SD card"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_1
    if-ne v11, v15, :cond_2

    const-string v2, "DirEncryptServiceHelper"

    const-string v3, "ENC_META_CHECK : Encryption State Normal"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v15, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    invoke-virtual {v1, v0}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    move-result v0

    if-ne v0, v15, :cond_3

    const-string v0, "DirEncryptServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/DirEncryptServiceHelper;->startCryptSDCardSettingsActivity()V

    goto :goto_1

    :cond_3
    const-string v0, "DirEncryptServiceHelper"

    const-string v2, "ENC_META_CHECK : Normal SD Card"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v9, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    iput-boolean v15, v1, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    :goto_1
    sput-boolean v9, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    goto/16 :goto_a

    :pswitch_3
    const/4 v0, 0x7

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    invoke-virtual {v1, v9}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    if-nez v11, :cond_4

    const/4 v0, 0x3

    goto :goto_2

    :cond_4
    const/4 v0, 0x2

    :goto_2
    const-string/jumbo v2, "free"

    invoke-virtual {v1, v0, v9, v9, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    goto/16 :goto_a

    :pswitch_4
    iput v13, v1, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    const/4 v0, 0x4

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v14, v11, v0}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    invoke-virtual {v1, v9}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    if-nez v11, :cond_5

    const/4 v0, 0x3

    goto :goto_3

    :cond_5
    const/4 v0, 0x2

    :goto_3
    const-string/jumbo v2, "free"

    invoke-virtual {v1, v0, v9, v9, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    goto/16 :goto_a

    :pswitch_5
    const-string v2, "DirEncryptServiceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "), storage("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v11, v15, :cond_6

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    const/4 v2, 0x3

    goto :goto_4

    :cond_6
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    :goto_4
    iget v3, v1, Lcom/android/server/DirEncryptServiceHelper;->mPrevPercent:I

    sub-int v3, v13, v3

    if-lt v3, v15, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v11, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    iput v13, v1, Lcom/android/server/DirEncryptServiceHelper;->mPrevPercent:I

    :cond_7
    const/16 v3, 0x64

    if-ne v13, v3, :cond_8

    const/4 v3, -0x1

    iput v3, v1, Lcom/android/server/DirEncryptServiceHelper;->mPrevPercent:I

    :cond_8
    if-nez v11, :cond_9

    move v9, v2

    goto :goto_5

    :cond_9
    const/4 v9, 0x2

    :goto_5
    const-string/jumbo v2, "busy"

    invoke-virtual {v1, v9, v13, v0, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    goto/16 :goto_a

    :pswitch_6
    const/4 v2, 0x3

    const-string/jumbo v0, "success"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "DirEncryptServiceHelper"

    const-string/jumbo v3, "RESP_ENCRYPT success"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v9, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    invoke-virtual {v1, v9}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    const-string/jumbo v0, "success"

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v11, v0}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    if-nez v11, :cond_a

    goto :goto_6

    :cond_a
    const/4 v2, 0x2

    :goto_6
    const-string/jumbo v0, "Mount"

    invoke-virtual {v1, v2, v9, v9, v0}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    const-string v0, "DirEncryptServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v11, :cond_b

    const-string v0, "DirEncryptServiceHelper"

    const-string v2, "Decrypt compelte"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    iput-object v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    goto/16 :goto_a

    :cond_b
    const-string v0, "DirEncryptServiceHelper"

    const-string v2, "Encrypt complete"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    goto/16 :goto_a

    :cond_c
    const-string/jumbo v0, "exception"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "DirEncryptServiceHelper"

    const-string/jumbo v4, "RESP_ENCRYPT : encrypted on other device"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    invoke-virtual {v1, v9}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    const-string/jumbo v0, "exception"

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v11, v0}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    if-nez v11, :cond_d

    goto :goto_7

    :cond_d
    const/4 v2, 0x2

    :goto_7
    const-string/jumbo v0, "Mount"

    invoke-virtual {v1, v2, v9, v9, v0}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    const-string v0, "DirEncryptServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v11, :cond_e

    const-string v0, "DirEncryptServiceHelper"

    const-string v2, "Decrypt compelte"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    iput-object v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    goto :goto_a

    :cond_e
    const-string v0, "DirEncryptServiceHelper"

    const-string v2, "Encrypt complete"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    goto :goto_a

    :cond_f
    const-string v0, "DirEncryptServiceHelper"

    const-string/jumbo v3, "RESP_ENCRYPT failed"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    if-nez v0, :cond_11

    if-ne v11, v15, :cond_10

    const/4 v4, 0x5

    iput v4, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    goto :goto_8

    :cond_10
    iput v14, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    :cond_11
    :goto_8
    const-string/jumbo v0, "failed"

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v11, v0}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    invoke-virtual {v1, v9}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    if-nez v11, :cond_12

    goto :goto_9

    :cond_12
    move v2, v3

    :goto_9
    const-string/jumbo v0, "free"

    invoke-virtual {v1, v2, v9, v9, v0}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(IIILjava/lang/String;)V

    :goto_a
    monitor-exit v10

    return-void

    :goto_b
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2ab
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
