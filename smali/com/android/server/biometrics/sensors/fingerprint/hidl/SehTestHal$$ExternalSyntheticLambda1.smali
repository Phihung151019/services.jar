.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHal:Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->cancel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsCancellation:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentEnrollmentId:I

    return-void

    :pswitch_0
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mRequestActionTable:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mRequestActionTable:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    const v3, 0x186c8

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    if-eqz v1, :cond_17

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mAuthActionList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mEnrollActionList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mEnrollActionList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v2, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ENROLL_RESULT:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    iget-object v3, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mCallback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    const/16 v0, 0x2714

    sget-object v4, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ACQUIRED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    const/4 v5, 0x6

    const/4 v6, 0x1

    iget v7, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mBiometricType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    move v9, v6

    :goto_1
    const/4 v10, 0x5

    if-gt v9, v10, :cond_0

    iget-object v10, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mEnrollActionList:Ljava/util/List;

    invoke-virtual {v1, v10}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->addFpDefaultCaptureSuccessAction(Ljava/util/List;)V

    iget-object v10, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mEnrollActionList:Ljava/util/List;

    new-instance v11, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    mul-int/lit8 v12, v9, 0x14

    rsub-int/lit8 v12, v12, 0x64

    invoke-direct {v11, v2, v3, v12}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mEnrollActionList:Ljava/util/List;

    new-instance v11, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    invoke-direct {v11, v4, v3, v5, v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    const/16 v9, 0x8

    const/4 v10, 0x0

    const-wide/16 v11, 0x3e8

    if-ne v7, v9, :cond_1

    iget-object v13, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mEnrollActionList:Ljava/util/List;

    new-instance v14, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    const/16 v15, 0x46

    invoke-direct {v14, v2, v3, v15}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    iput-wide v11, v14, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    const/16 v15, 0x32

    invoke-direct {v14, v2, v3, v15}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    iput-wide v11, v14, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    const/16 v15, 0x1e

    invoke-direct {v14, v2, v3, v15}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    iput-wide v11, v14, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    invoke-direct {v14, v2, v3, v10}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    iput-wide v11, v14, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v13, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mAuthActionList:Ljava/util/List;

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    sget-object v13, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->AUTHENTICATED:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    if-ne v7, v8, :cond_2

    iget-object v14, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mAuthActionList:Ljava/util/List;

    invoke-virtual {v1, v14}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->addFpDefaultCaptureSuccessAction(Ljava/util/List;)V

    new-instance v15, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    invoke-direct {v15, v13, v3, v10}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    invoke-direct {v15, v4, v3, v5, v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v14, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mAuthActionList:Ljava/util/List;

    invoke-virtual {v1, v6, v10, v14}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->addFpCaptureFailedAction(IILjava/util/List;)V

    iget-object v14, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mAuthActionList:Ljava/util/List;

    const/16 v15, 0x3eb

    invoke-virtual {v1, v5, v15, v14}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->addFpCaptureFailedAction(IILjava/util/List;)V

    iget-object v14, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mAuthActionList:Ljava/util/List;

    invoke-virtual {v1, v14}, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->addFpDefaultCaptureSuccessAction(Ljava/util/List;)V

    new-instance v15, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    invoke-direct {v15, v13, v3, v6}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    invoke-direct {v15, v4, v3, v5, v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-ne v7, v9, :cond_3

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mAuthActionList:Ljava/util/List;

    new-instance v5, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    invoke-direct {v5, v4, v3, v6, v10}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    iput-wide v11, v5, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    invoke-direct {v5, v13, v3, v6}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    iput-wide v11, v5, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-ne v7, v8, :cond_4

    const-string v0, "/data/.biometric/fingerprint/tpa.json"

    goto :goto_2

    :cond_4
    if-ne v7, v9, :cond_5

    const-string v0, "/data/.biometric/face/tpa.json"

    goto :goto_2

    :cond_5
    const-string v0, ""

    :goto_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    const-string/jumbo v9, "SemTestHalHelper"

    if-nez v7, :cond_6

    const-string/jumbo v5, "getJSONObject: No file, "

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto/16 :goto_9

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_1
    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v11, v5

    goto/16 :goto_14

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_7
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    :try_start_5
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v1, v0

    const/4 v11, 0x0

    goto/16 :goto_14

    :catch_4
    move-exception v0

    const/4 v5, 0x0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_14

    :catch_5
    move-exception v0

    const/4 v5, 0x0

    const/4 v12, 0x0

    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v5, :cond_8

    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_6
    if-eqz v12, :cond_9

    :try_start_8
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_9
    :goto_7
    :try_start_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_8

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_8
    move-object v5, v0

    :goto_9
    if-eqz v5, :cond_17

    const-string/jumbo v7, "actionList"

    const-string/jumbo v12, "delay"

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/util/Pair;

    iget-object v15, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mEnrollActionList:Ljava/util/List;

    const-string/jumbo v10, "enroll"

    invoke-direct {v0, v10, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/Pair;

    iget-object v10, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mAuthActionList:Ljava/util/List;

    const-string/jumbo v15, "authenticate"

    invoke-direct {v0, v15, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v10, :cond_17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v16, v0, 0x1

    check-cast v15, Landroid/util/Pair;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "makeActionFromJSONObject: parse key = "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-static {v0, v11, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_a
    iget-object v0, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "makeActionFromJSONObject: No Key, use default"

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    move/from16 v0, v16

    goto :goto_a

    :catch_8
    move-exception v0

    move-object/from16 v19, v1

    move-object/from16 v20, v5

    move-object/from16 v21, v7

    move-object v7, v12

    goto/16 :goto_12

    :cond_a
    iget-object v0, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_b

    const-string/jumbo v0, "makeActionFromJSONObject: No actionList, use default"

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_b
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_8

    if-eqz v11, :cond_c

    move-object/from16 v17, v7

    :try_start_b
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mDelayAuthAction:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "makeActionFromJSONObject: key = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", delay = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_a

    move-object v7, v12

    :try_start_c
    iget-wide v11, v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mDelayAuthAction:J

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_9

    :goto_c
    move-object/from16 v6, v17

    goto :goto_e

    :catch_9
    move-exception v0

    :goto_d
    move-object/from16 v19, v1

    move-object/from16 v20, v5

    move-object/from16 v21, v17

    goto/16 :goto_12

    :catch_a
    move-exception v0

    move-object v7, v12

    goto :goto_d

    :cond_c
    move-object/from16 v17, v7

    move-object v7, v12

    goto :goto_c

    :goto_e
    :try_start_d
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    iget-object v12, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    const/4 v12, 0x0

    :goto_f
    if-ge v12, v11, :cond_14

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    move-object/from16 v18, v0

    const-string/jumbo v0, "type"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_d

    move-object/from16 v19, v1

    const-string/jumbo v1, "vendorCode"

    move-object/from16 v20, v5

    const/4 v5, 0x1

    if-eq v0, v5, :cond_11

    const/4 v5, 0x2

    if-eq v0, v5, :cond_10

    const/4 v5, 0x3

    if-eq v0, v5, :cond_f

    const/4 v5, 0x4

    if-eq v0, v5, :cond_e

    const/4 v1, 0x7

    if-eq v0, v1, :cond_d

    move-object/from16 v21, v6

    const/4 v0, 0x0

    goto :goto_11

    :cond_d
    :try_start_e
    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    sget-object v1, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->TSP_FOD:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    const-string/jumbo v5, "TspEvent"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v0, v1, v3, v5}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    move-object/from16 v21, v6

    goto :goto_11

    :catch_b
    move-exception v0

    :goto_10
    move-object/from16 v21, v6

    goto/16 :goto_12

    :cond_e
    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    sget-object v5, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ERROR:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_b

    move-object/from16 v21, v6

    :try_start_f
    const-string/jumbo v6, "errorCode"

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v5, v3, v6, v1}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    goto :goto_11

    :catch_c
    move-exception v0

    goto :goto_12

    :cond_f
    move-object/from16 v21, v6

    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    const-string v1, "Id"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v13, v3, v1}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    goto :goto_11

    :cond_10
    move-object/from16 v21, v6

    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    const-string/jumbo v1, "remaining"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V

    goto :goto_11

    :cond_11
    move-object/from16 v21, v6

    new-instance v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    const-string/jumbo v5, "acquiredInfo"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v4, v3, v5, v1}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    :goto_11
    if-eqz v0, :cond_13

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    :cond_12
    iget-object v1, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_c

    :cond_13
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    const/4 v8, 0x2

    goto/16 :goto_f

    :catch_d
    move-exception v0

    move-object/from16 v19, v1

    move-object/from16 v20, v5

    goto :goto_10

    :cond_14
    move-object/from16 v19, v1

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    goto :goto_13

    :goto_12
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_13
    move-object v12, v7

    move/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v5, v20

    move-object/from16 v7, v21

    const/4 v6, 0x1

    const/4 v8, 0x2

    goto/16 :goto_a

    :goto_14
    if-eqz v11, :cond_15

    :try_start_10
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e

    goto :goto_15

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_15
    :goto_15
    if-eqz v12, :cond_16

    :try_start_11
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f

    goto :goto_16

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_16
    :goto_16
    throw v1

    :cond_17
    return-void

    :pswitch_1
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    :goto_17
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mEnrollmentIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    goto :goto_17

    :cond_18
    iput v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentEnrollmentId:I

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mTestHalHelper:Lcom/android/server/biometrics/sensors/SemTestHalHelper;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SemTestHalHelper;->mEnrollActionList:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "start enrollTPA: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentEnrollmentId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", action size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "fingerprint.hidl.SehTestHal"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    move v0, v4

    :goto_18
    if-ge v0, v2, :cond_1b

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    check-cast v5, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsCancellation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    :try_start_12
    iget-wide v7, v5, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_10

    goto :goto_19

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_19
    invoke-virtual {v5}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->run()V

    iget-object v0, v5, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callbackType:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    sget-object v7, Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;->ENROLL_RESULT:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    if-ne v0, v7, :cond_1a

    iget v0, v5, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->value:I

    if-nez v0, :cond_1a

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mEnrollmentIds:Ljava/util/Set;

    iget v5, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentEnrollmentId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iput v4, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentEnrollmentId:I

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mAuthenticatorID:Landroid/util/SparseLongArray;

    iget v5, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentUserID:I

    iget-object v7, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mRandom:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextLong()J

    move-result-wide v7

    invoke-virtual {v0, v5, v7, v8}, Landroid/util/SparseLongArray;->put(IJ)V

    :cond_1a
    move v0, v6

    goto :goto_18

    :cond_1b
    :goto_1a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
