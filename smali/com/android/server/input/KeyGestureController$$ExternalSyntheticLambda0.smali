.class public final synthetic Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/input/KeyGestureController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/KeyGestureController;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/KeyGestureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/KeyGestureController;

    packed-switch v4, :pswitch_data_0

    sget-boolean v4, Lcom/android/server/input/KeyGestureController;->DEBUG:Z

    iget v4, p1, Landroid/os/Message;->what:I

    if-eq v4, v2, :cond_2

    const/4 v0, 0x3

    if-eq v4, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mInputDataStore:Lcom/android/server/input/InputDataStore;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/input/InputGestureManager;->removeAllCustomInputGestures(ILandroid/hardware/input/InputGestureData$Filter;)V

    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mInputDataStore:Lcom/android/server/input/InputDataStore;

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputDataStore;->loadInputGestures(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputGestureData;

    iget-object v4, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    invoke-virtual {v4, p1, v1}, Lcom/android/server/input/InputGestureManager;->addCustomInputGesture(ILandroid/hardware/input/InputGestureData;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_1
    monitor-exit v2

    goto :goto_3

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v4, p0, Lcom/android/server/input/KeyGestureController;->mInputDataStore:Lcom/android/server/input/InputDataStore;

    monitor-enter v4

    :try_start_1
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/input/InputGestureManager;->getCustomInputGestures(ILandroid/hardware/input/InputGestureData$Filter;)Ljava/util/List;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mInputDataStore:Lcom/android/server/input/InputDataStore;

    iget-object p0, p0, Lcom/android/server/input/InputDataStore;->mInputGestureFileInjector:Lcom/android/server/input/InputDataStore$FileInjector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/input/InputDataStore$FileInjector;->getAtomicFileForUserId(I)Landroid/util/AtomicFile;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lcom/android/server/input/InputDataStore;->writeInputGestureXml(Ljava/io/OutputStream;ZLjava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputDataStore$FileInjector;->getAtomicFileForUserId(I)Landroid/util/AtomicFile;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Failed to write to file "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputDataStore$FileInjector;->getAtomicFileForUserId(I)Landroid/util/AtomicFile;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "InputDataStore"

    invoke-static {v5, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputDataStore$FileInjector;->getAtomicFileForUserId(I)Landroid/util/AtomicFile;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_2
    monitor-exit v4

    :goto_3
    return v3

    :catchall_1
    move-exception v0

    move-object p0, v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :pswitch_0
    sget-boolean v4, Lcom/android/server/input/KeyGestureController;->DEBUG:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, p1, Landroid/os/Message;->what:I

    if-eq v4, v3, :cond_4

    const/4 p1, 0x4

    if-eq v4, p1, :cond_3

    goto/16 :goto_8

    :cond_3
    const-string p1, "KeyGestureController"

    const-string v0, "Accessibility Shortcut Volup + Voldown is performed"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->performAccessibilityShortcut()V

    goto/16 :goto_8

    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/input/AidlKeyGestureEvent;

    iget v4, p1, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    iget-object v5, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    const-class v6, Landroid/hardware/input/InputManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/input/InputManager;

    if-eqz v5, :cond_5

    invoke-virtual {v5, v4}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    :cond_5
    if-nez v1, :cond_6

    goto/16 :goto_8

    :cond_6
    new-instance v4, Landroid/hardware/input/KeyGestureEvent;

    invoke-direct {v4, p1}, Landroid/hardware/input/KeyGestureEvent;-><init>(Landroid/hardware/input/AidlKeyGestureEvent;)V

    iget v5, p1, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    if-ne v5, v2, :cond_8

    iget-object v10, p1, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    iget v11, p1, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    invoke-virtual {v4}, Landroid/hardware/input/KeyGestureEvent;->getLogEvent()I

    move-result v9

    sget-boolean v2, Lcom/android/server/input/KeyboardMetricsCollector;->DEBUG:Z

    if-eqz v9, :cond_8

    invoke-virtual {v1}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Landroid/view/InputDevice;->getVendorId()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/InputDevice;->getProductId()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/InputDevice;->getDeviceBus()I

    move-result v12

    const/16 v6, 0x2ab

    invoke-static/range {v6 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII[III)V

    sget-boolean v1, Lcom/android/server/input/KeyboardMetricsCollector;->DEBUG:Z

    if-eqz v1, :cond_8

    const-string/jumbo v1, "Logging Keyboard system event: "

    const-string v2, " + "

    invoke-static {v11, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v10}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyboardMetricCollector"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    sget-boolean v1, Lcom/android/server/input/KeyGestureController;->DEBUG:Z

    if-eqz v1, :cond_9

    const-string v1, "KeyGestureController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Key gesture event occurred, event = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    monitor-enter v1

    move v2, v0

    :goto_5
    :try_start_4
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_a

    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v0, v5, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;->mListener:Landroid/hardware/input/IKeyGestureEventListener;

    invoke-interface {v0, p1}, Landroid/hardware/input/IKeyGestureEventListener;->onKeyGestureEvent(Landroid/hardware/input/AidlKeyGestureEvent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    :catch_1
    move-exception v0

    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to notify process "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v5, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;->mPid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " that key gesture event occurred, assuming it died."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KeyGestureController"

    invoke-static {v7, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v5}, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;->binderDied()V

    :goto_6
    add-int/2addr v2, v3

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_9

    :cond_a
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_7
    iget-object p1, p0, Lcom/android/server/input/KeyGestureController;->mLastHandledEvents:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_b

    iget-object p1, p0, Lcom/android/server/input/KeyGestureController;->mLastHandledEvents:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_7

    :cond_b
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mLastHandledEvents:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :goto_8
    return v3

    :goto_9
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
