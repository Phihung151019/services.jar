.class public final Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;


# instance fields
.field public final mService:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 19

    move-object/from16 v0, p0

    const-string/jumbo v1, "android.imms"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    move-result-object v1

    const-string/jumbo v4, "android.imms2"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sput-object v4, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sContentResolver:Landroid/content/ContentResolver;

    new-instance v6, Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v7, "android.hardware.type.automotive"

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x1110004

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v8, v5

    goto :goto_0

    :cond_0
    move v8, v3

    :goto_0
    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v11}, Lcom/android/server/inputmethod/InputMethodManagerService;-><init>(Landroid/content/Context;ZLandroid/os/Looper;Landroid/os/Handler;Ljava/util/function/IntFunction;)V

    invoke-direct {v0, v7, v6}, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;-><init>(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerInternal;->addUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIoHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v4, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    new-instance v15, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.OVERLAY_CHANGED"

    invoke-direct {v15, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v15, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string/jumbo v1, "android"

    invoke-virtual {v15, v1, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    new-instance v13, Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$1;

    invoke-direct {v13, v4}, Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$1;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;)V

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v16, 0x0

    const/16 v18, 0x4

    move-object/from16 v17, v2

    move-object v12, v7

    invoke-virtual/range {v12 .. v18}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->initializeUsersAsync([I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    return-void
.end method


# virtual methods
.method public final initializeUsersAsync([I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Schedule initialization for users="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIoHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onBootPhase(I)V
    .locals 13

    const/16 v0, 0x226

    if-ne p1, v0, :cond_6

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    const/4 v1, 0x0

    :try_start_0
    array-length v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v4, v1

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v4, v0, :cond_1

    :try_start_1
    aget v7, p1, v4

    invoke-virtual {p0, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/inputmethod/UserData;->mBackgroundLoadLatch:Ljava/util/concurrent/CountDownLatch;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v9

    sub-long v9, v2, v9

    const-wide/16 v11, 0x0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v9, v10, v11}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_0

    :try_start_3
    const-string v6, "InputMethodManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Timed out for user#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to be initialized"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    move v1, v5

    goto/16 :goto_6

    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move v5, v6

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    :try_start_4
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v2, "--- systemReady"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    if-nez v0, :cond_4

    iput-boolean v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    const-class v2, Lcom/android/server/statusbar/StatusBarManagerService$2;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerService$2;

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerService$2;

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideStatusBarIconLocked(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget v3, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mImeWindowVis:I

    iget v2, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mBackDisposition:I

    invoke-virtual {p0, v3, v2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v2, 0x11102e3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerInternal;->setOnHardKeyboardStatusChangeListener(Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto/16 :goto_5

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v5, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "accessibility_soft_keyboard_mode"

    const-string/jumbo v7, "default_input_method"

    const-string/jumbo v8, "enabled_input_methods"

    const-string/jumbo v9, "selected_input_method_subtype"

    const-string/jumbo v10, "show_ime_with_hard_keyboard"

    const-string/jumbo v11, "stylus_handwriting_enabled"

    const-string/jumbo v12, "sip_keyboard_type_mouse_id_list"

    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v4, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-static {v0, v2, v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;->register(Landroid/os/Handler;Landroid/content/ContentResolver;[Ljava/lang/String;Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.samsung.systemui.statusbar.ANIMATING"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.systemui.statusbar.COLLAPSED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;

    const/4 v4, 0x2

    invoke-direct {v3, v4, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;

    const/4 v0, 0x1

    invoke-direct {v4, v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual/range {v3 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    sget-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sWriter:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    iget-object v0, v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mWriterThread:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter$1;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    array-length v2, v0

    :goto_4
    if-ge v1, v2, :cond_4

    aget v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->onUserReadyLocked(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    monitor-exit p1

    goto :goto_7

    :goto_5
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_2
    move-exception v0

    move-object p0, v0

    :goto_6
    if-eqz v1, :cond_5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_5
    throw p0

    :cond_6
    :goto_7
    return-void
.end method

.method public final onStart()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;

    const-class v2, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-static {v2, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v1, Lcom/android/server/inputmethod/ZeroJankProxy;

    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/Handler;)V

    invoke-direct {v1, v3, v0}, Lcom/android/server/inputmethod/ZeroJankProxy;-><init>(Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticLambda1;Lcom/android/server/inputmethod/ZeroJankProxy$Callback;)V

    new-instance v2, Lcom/android/server/inputmethod/IInputMethodManagerImpl;

    invoke-direct {v2, v1}, Lcom/android/server/inputmethod/IInputMethodManagerImpl;-><init>(Lcom/android/server/inputmethod/ZeroJankProxy;)V

    const/16 v1, 0x15

    const-string/jumbo v3, "input_method"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    iget-object p0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerInternal;->setOnImeRequestedChangedListener(Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;)V

    return-void
.end method

.method public final onUserCreated(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V
    .locals 2

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    sget-object p2, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sWriter:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    iget-object v0, p2, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p2, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mRemovedUsers:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p2, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mRemovedUsers:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p2, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mRemovedUsers:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object p2, p2, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->initializeUsersAsync([I)V

    return-void

    :goto_2
    iget-object p1, p2, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public final onUserRemoved(Landroid/content/pm/UserInfo;)V
    .locals 4

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    sget-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sMutationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithRemoveOrSelf(I)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object v1

    sput-object v1, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    sget-object v1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sMutationLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sWriter:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    iget-object v2, v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v2, v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mRemovedUsers:Landroid/util/IntArray;

    invoke-virtual {v2, p1}, Landroid/util/IntArray;->add(I)V

    iget-object v2, v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mPendingTasks:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-object v0, v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithRemoveOrSelf(I)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    sget-object v0, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->sMutationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4
    sget-object v1, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithRemoveOrSelf(I)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object v1

    sput-object v1, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/UserDataRepository;->remove(I)V

    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    if-eqz v2, :cond_0

    iget v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mToUserId:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    :goto_0
    iget-boolean v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-nez v3, :cond_1

    if-ne p1, v2, :cond_1

    iget-object p1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p1}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    :cond_1
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    goto :goto_2

    :catchall_3
    move-exception p0

    :try_start_7
    iget-object p1, v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    :goto_2
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0

    :catchall_4
    move-exception p0

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw p0
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    sget-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sMutationLock:Ljava/lang/Object;

    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;

    sget-object v1, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p1, v1}, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;-><init>(ILandroid/content/ContentResolver;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;

    sget-object v1, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p1, v1}, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;-><init>(ILandroid/content/ContentResolver;)V

    :goto_0
    invoke-static {p1, v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->putOrGet(ILcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIoHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    new-instance v0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;

    sget-object v1, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p1, v1}, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;-><init>(ILandroid/content/ContentResolver;)V

    sget-object v1, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sMutationLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    iget-object v2, v2, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    if-eqz v2, :cond_2

    instance-of v2, v2, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithPutOrSelf(ILjava/lang/Object;)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    invoke-static {p1}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/inputmethod/UserData;->mRawInputMethodMap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/RawInputMethodMap;

    iget-object p0, p0, Lcom/android/server/inputmethod/UserData;->mIsUnlockingOrUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v1, v0, v2, v2}, Lcom/android/server/inputmethod/RawInputMethodMap;->toInputMethodMap(Lcom/android/server/inputmethod/AdditionalSubtypeMap;IZ)Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object p0

    new-instance v0, Lcom/android/server/inputmethod/InputMethodSettings;

    invoke-direct {v0, p0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;-><init>(Lcom/android/server/inputmethod/InputMethodMap;I)V

    invoke-static {p1, v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->put(ILcom/android/server/inputmethod/InputMethodSettings;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_3
    const-string p0, "InputMethodManagerService"

    const-string/jumbo v0, "onUserStopped userId : "

    const-string v1, ", but not update method map"

    invoke-static {p1, v0, v1, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-eqz v0, :cond_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    monitor-exit p1

    return-void

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mIsUnlockingOrUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v1, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;

    sget-object v3, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v1, p1, v3}, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;-><init>(ILandroid/content/ContentResolver;)V

    invoke-static {p1, v1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->putOrGet(ILcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    iget-object v0, v0, Lcom/android/server/inputmethod/UserData;->mRawInputMethodMap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/RawInputMethodMap;

    invoke-static {p1}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/inputmethod/RawInputMethodMap;->toInputMethodMap(Lcom/android/server/inputmethod/AdditionalSubtypeMap;IZ)Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v0

    new-instance v1, Lcom/android/server/inputmethod/InputMethodSettings;

    invoke-direct {v1, v0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;-><init>(Lcom/android/server/inputmethod/InputMethodMap;I)V

    invoke-static {p1, v1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->put(ILcom/android/server/inputmethod/InputMethodSettings;)V

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIoHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
