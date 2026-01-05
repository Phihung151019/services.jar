.class public final Lcom/android/server/app/GameManagerService$SettingsHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameManagerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    iget v3, v1, Landroid/os/Message;->what:I

    const/4 v4, 0x3

    const/16 v5, 0x10

    const/4 v7, 0x2

    const/4 v8, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x6

    if-gez v3, :cond_0

    const-string v2, "GameManagerService"

    const-string v5, "Attempt to write setting for invalid user: "

    invoke-static {v3, v5, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v5, v2, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    monitor-exit v5

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    iget-object v1, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    sget v0, Lcom/android/server/app/GameManagerService;->$r8$clinit:I

    const-string v0, ","

    const-string v4, "\t"

    const/4 v5, 0x0

    :try_start_1
    iget-object v7, v1, Lcom/android/server/app/GameManagerService;->mGameModeInterventionListFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-direct {v9, v5, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Lcom/android/server/app/GameManagerService;->getInstalledGamePackageNamesByAllUsers(I)Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v12, v8

    :goto_0
    if-ge v12, v11, :cond_4

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/2addr v12, v2

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v1, v3, v13}, Lcom/android/server/app/GameManagerService;->getConfig(ILjava/lang/String;)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object v14

    if-nez v14, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v15, v13, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v3}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModes()[I

    move-result-object v13

    array-length v15, v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v6, v8

    const/16 v16, 0xa

    :goto_1
    if-ge v6, v15, :cond_3

    move/from16 v17, v2

    :try_start_2
    aget v2, v13, v6

    invoke-virtual {v14, v2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v8

    if-nez v8, :cond_2

    move/from16 v20, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-enter v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-boolean v2, v8, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mUseAngle:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v8

    move/from16 p0, v2

    const-string/jumbo v2, "angle=%d"

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move/from16 v20, v3

    filled-new-array/range {v19 .. v19}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getScaling()F

    move-result v2

    const-string/jumbo v3, "scaling="

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getFps()I

    move-result v2

    const-string/jumbo v3, "fps=%d"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v17

    move/from16 v3, v20

    const/4 v8, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    :cond_3
    move/from16 v17, v2

    move/from16 v20, v3

    const-string v2, "\n"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v17

    move/from16 v3, v20

    const/4 v8, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const/16 v16, 0xa

    goto :goto_3

    :cond_4
    const/16 v16, 0xa

    invoke-virtual {v7, v9}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {v7}, Ljava/io/BufferedWriter;->flush()V

    invoke-static {v5}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    iget-object v0, v1, Lcom/android/server/app/GameManagerService;->mGameModeInterventionListFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    :goto_3
    iget-object v1, v1, Lcom/android/server/app/GameManagerService;->mGameModeInterventionListFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to write game_mode_intervention.list, exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-static/range {v16 .. v16}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_c

    :pswitch_1
    const-string v1, "GameManagerService"

    const-string v2, "Game loading power mode OFF (loading boost ended)"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v0, v0, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    return-void

    :pswitch_2
    move/from16 v17, v2

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/GameState;

    invoke-virtual {v2}, Landroid/app/GameState;->isLoading()Z

    move-result v13

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "packageName"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v3, "userId"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v3, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-virtual {v3, v9, v1}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_5

    move/from16 v11, v17

    goto :goto_5

    :cond_5
    const/4 v11, 0x0

    :goto_5
    :try_start_7
    iget-object v3, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v3, v3, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v9, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    :goto_6
    move v10, v3

    goto :goto_7

    :catch_2
    const-string v3, "GameManagerService"

    const-string v6, "Failed to get package metadata"

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_6

    :goto_7
    invoke-virtual {v2}, Landroid/app/GameState;->getMode()I

    move-result v3

    move/from16 v6, v17

    if-eq v3, v6, :cond_8

    if-eq v3, v7, :cond_7

    if-eq v3, v4, :cond_6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    const/4 v12, 0x0

    goto :goto_8

    :cond_6
    move v12, v4

    goto :goto_8

    :cond_7
    move v12, v7

    goto :goto_8

    :cond_8
    const/4 v12, 0x1

    :goto_8
    invoke-virtual {v2}, Landroid/app/GameState;->getLabel()I

    move-result v14

    invoke-virtual {v2}, Landroid/app/GameState;->getQuality()I

    move-result v15

    const/16 v8, 0x1ad

    invoke-static/range {v8 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IZIZII)V

    if-eqz v11, :cond_d

    iget-object v3, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v4, v3, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-nez v4, :cond_9

    const-string v0, "GameManagerService"

    const-string v2, "Error setting loading mode for package "

    const-string v3, " and userId "

    invoke-static {v1, v2, v9, v3, v0}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_9
    iget-object v3, v3, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v3, v3, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_a
    const-string v3, "GameManagerService"

    if-eqz v13, :cond_b

    const-string/jumbo v6, "ON"

    goto :goto_9

    :cond_b
    const-string/jumbo v6, "OFF"

    :goto_9
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Game loading power mode "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (game state change isLoading="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v3, v3, Lcom/android/server/app/GameManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v3, v5, v13}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    if-eqz v13, :cond_d

    iget-object v3, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-virtual {v3, v1, v9}, Lcom/android/server/app/GameManagerService;->getLoadingBoostDuration(ILjava/lang/String;)I

    move-result v3

    if-lez v3, :cond_c

    goto :goto_a

    :cond_c
    const/16 v3, 0x1388

    :goto_a
    iget-object v5, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v5, v5, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    int-to-long v6, v3

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_d
    iget-object v3, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v3, v3, Lcom/android/server/app/GameManagerService;->mGameStateListenerLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_8
    iget-object v4, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v4, v4, Lcom/android/server/app/GameManagerService;->mGameStateListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/IGameStateListener;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-interface {v5, v9, v2, v1}, Landroid/app/IGameStateListener;->onGameStateChanged(Ljava/lang/String;Landroid/app/GameState;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_b

    :catchall_2
    move-exception v0

    goto :goto_d

    :catch_3
    :try_start_a
    const-string v6, "GameManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot notify game state change for listener added by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v8, v8, Lcom/android/server/app/GameManagerService;->mGameStateListeners:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_e
    monitor-exit v3

    :goto_c
    return-void

    :goto_d
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v0

    :pswitch_3
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v4, v2}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v3, v3, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_b
    iget-object v4, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v4, v4, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    new-instance v4, Lcom/android/server/app/GameManagerSettings;

    invoke-static {v2}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/app/GameManagerSettings;-><init>(Ljava/io/File;)V

    iget-object v5, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v5, v5, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/android/server/app/GameManagerSettings;->readPersistentDataLocked()V

    goto :goto_e

    :catchall_3
    move-exception v0

    goto :goto_f

    :cond_f
    :goto_e
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    iget-object v1, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/app/GameManagerService;->getInstalledGamePackageNames(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/app/GameManagerService;->updateConfigsForUser(IZ[Ljava/lang/String;)V

    return-void

    :goto_f
    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v0

    :pswitch_4
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_10

    const-string v2, "GameManagerService"

    const-string v4, "Attempt to write settings for invalid user: "

    invoke-static {v3, v4, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v3, v2, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_d
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v2}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v7, v1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    monitor-exit v3

    return-void

    :catchall_4
    move-exception v0

    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v0

    :cond_10
    iget-object v3, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v3, v3, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_e
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v4}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v7, v1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    iget-object v1, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v1, v1, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v1, v1, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameManagerSettings;

    iget-object v0, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v0, v0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/android/server/app/GameManagerSettings;->writePersistentDataLocked()V

    goto :goto_10

    :catchall_5
    move-exception v0

    goto :goto_11

    :cond_11
    :goto_10
    monitor-exit v3

    return-void

    :goto_11
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v0

    :pswitch_5
    const/16 v16, 0xa

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_12

    const-string v2, "GameManagerService"

    const-string v4, "Attempt to write settings for invalid user: "

    invoke-static {v3, v4, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v3, v2, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_f
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    monitor-exit v3

    return-void

    :catchall_6
    move-exception v0

    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v0

    :cond_12
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v3, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v3, v3, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_10
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    iget-object v1, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v1, v1, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v0, v0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v0, v0, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameManagerSettings;

    invoke-virtual {v0}, Lcom/android/server/app/GameManagerSettings;->writePersistentDataLocked()V

    goto :goto_12

    :catchall_7
    move-exception v0

    goto :goto_13

    :cond_13
    :goto_12
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    invoke-static/range {v16 .. v16}, Landroid/os/Process;->setThreadPriority(I)V

    return-void

    :goto_13
    :try_start_11
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
