.class public final Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;
.super Lcom/samsung/android/knox/remotecontrol/IRemoteInjection$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentDisplayHeight:I

.field public mCurrentDisplayWidth:I

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mInjector:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;

.field public mKnoxRemoteScreenSessionOwnerUid:I

.field public final mRemoteControlDisabled:Landroid/util/SparseArray;

.field public mRemoteScreenHeight:I

.field public mRemoteScreenWatcherCallback:Lcom/samsung/android/knox/remotecontrol/IRemoteScreenWatcherCallback;

.field public mRemoteScreenWidth:I

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/remotecontrol/IRemoteInjection$Stub;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteControlDisabled:Landroid/util/SparseArray;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iput-object v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mWindowManager:Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mInjector:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->updateCurrentDisplayDimensions()V

    invoke-static {v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    :goto_0
    iput v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    invoke-static {v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    :goto_1
    iput v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mKnoxRemoteScreenSessionOwnerUid:I

    const-class p1, Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;

    new-instance v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$LocalService;-><init>(Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;)V

    invoke-static {p1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public static injectKeyEventInternal(Landroid/view/KeyEvent;Z)Z
    .locals 17

    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getSource()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v6

    if-nez v4, :cond_0

    const/16 v4, 0x101

    :cond_0
    move/from16 v16, v4

    const-wide/16 v7, 0x0

    cmp-long v4, v2, v7

    if-nez v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    :cond_1
    cmp-long v4, v0, v7

    if-nez v4, :cond_2

    move-wide v0, v2

    :cond_2
    new-instance v4, Landroid/view/KeyEvent;

    or-int/lit8 v15, v5, 0x8

    move-wide v7, v0

    move v0, v6

    move-wide v5, v7

    move-wide v7, v2

    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v4, v0}, Landroid/view/KeyEvent;->setDisplayId(I)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v4, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v0

    return v0
.end method

.method public static isInPortrait(Landroid/view/Display;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final addRemoteScreenWatcherCallback(Lcom/samsung/android/knox/remotecontrol/IRemoteScreenWatcherCallback;)Z
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWatcherCallback:Lcom/samsung/android/knox/remotecontrol/IRemoteScreenWatcherCallback;

    iget p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mKnoxRemoteScreenSessionOwnerUid:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final allowRemoteControl(Lcom/samsung/android/knox/ContextInfo;ZZ)Z
    .locals 8

    if-eqz p3, :cond_1

    new-instance p3, Ljava/util/ArrayList;

    const-string/jumbo v0, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mInjector:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;

    iget-object v0, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v0, p1, p3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceDoPoOnlyPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p3, Ljava/util/ArrayList;

    const-string/jumbo v0, "com.samsung.android.knox.permission.KNOX_REMOTE_CONTROL"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mInjector:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;

    iget-object v0, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v0, p1, p3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    :goto_0
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "RESTRICTION"

    const-string/jumbo v5, "allowRemoteControl"

    const/4 v4, 0x0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    iget-object p3, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteControlDisabled:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlAllowed(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p3, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catch_0
    :try_start_1
    const-string/jumbo p0, "RemoteInjection"

    const-string/jumbo p2, "RemoteInjection.allowRemoteControl() exception : "

    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    iget-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    const-string/jumbo p3, "android.permission.DUMP"

    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p0, "Permission Denial: can\'t dump Enterprise Device Manager Service"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getUsers(Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    const-string/jumbo v0, "RemoteControl disallowed userId : "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlAllowed(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    const-string/jumbo p0, "None"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x155

    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    :try_start_0
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p2, v1, v0}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception p2

    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p2

    :cond_0
    const/4 v3, 0x0

    const-string v4, "INJECT_KEY_EVENT"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/accessControl/EnterpriseAccessController;->enforceCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteInjectionDisabled(I)Z

    move-result p0

    const-string/jumbo v5, "RemoteInjection"

    if-eqz p0, :cond_1

    const-string/jumbo p0, "Remote Control is disabled, couldnt inject key event"

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, p1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_1
    :try_start_1
    invoke-static {p1, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectKeyEventInternal(Landroid/view/KeyEvent;Z)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Error injecting key event : "

    invoke-static {p0, p1, v5}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    move p0, v2

    :goto_0
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-eqz p0, :cond_2

    const/16 v1, 0x156

    :cond_2
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, p2}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0
.end method

.method public final injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    .locals 8

    const/4 v0, 0x0

    const-string v1, "INJECT_POINTER_EVENT"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/accessControl/EnterpriseAccessController;->enforceCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteInjectionDisabled(I)Z

    move-result v4

    const/16 v5, 0x157

    const-string/jumbo v6, "RemoteInjection"

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    const-string/jumbo p0, "Remote Control is disabled, couldnt inject pointer event"

    invoke-static {v6, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    new-array p1, v7, [Ljava/lang/Object;

    invoke-static {p0, v5, p1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :cond_0
    :try_start_0
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setDisplayId(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    const/4 v4, 0x2

    and-int/2addr p1, v4

    if-nez p1, :cond_1

    const/16 p1, 0x1002

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->setSource(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, -0x24

    if-eqz p1, :cond_2

    invoke-virtual {p0, v7}, Landroid/view/MotionEvent;->setFlags(I)V

    :cond_2
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p1

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    :goto_0
    invoke-virtual {p1, p0, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "Error injecting trackball event : "

    invoke-static {p0, p1, v6}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    move p0, v7

    :goto_1
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-eqz p0, :cond_4

    const/16 v5, 0x158

    :cond_4
    new-array p2, v7, [Ljava/lang/Object;

    invoke-static {p1, v5, p2}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0
.end method

.method public final injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    .locals 8

    const/4 v0, 0x0

    const-string v1, "INJECT_TRACKBALL_EVENT"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/accessControl/EnterpriseAccessController;->enforceCaller(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteInjectionDisabled(I)Z

    move-result v4

    const/16 v5, 0x159

    const-string/jumbo v6, "RemoteInjection"

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    const-string/jumbo p0, "Remote Control is disabled, couldnt inject track ball event"

    invoke-static {v6, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    new-array p1, v7, [Ljava/lang/Object;

    invoke-static {p0, v5, p1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_1

    const p1, 0x10004

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->setSource(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result p1

    and-int/lit8 p1, p1, -0x24

    if-eqz p1, :cond_2

    invoke-virtual {p0, v7}, Landroid/view/MotionEvent;->setFlags(I)V

    :cond_2
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p1

    if-eqz p2, :cond_3

    const/4 p2, 0x2

    goto :goto_0

    :cond_3
    const/4 p2, 0x1

    :goto_0
    invoke-virtual {p1, p0, p2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "Error injecting trackball event : "

    invoke-static {p0, p1, v6}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    move p0, v7

    :goto_1
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-eqz p0, :cond_4

    const/16 v5, 0x15a

    :cond_4
    new-array p2, v7, [Ljava/lang/Object;

    invoke-static {p1, v5, p2}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0
.end method

.method public final isRemoteControlAllowed(I)Z
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v0, "RESTRICTION"

    const-string/jumbo v1, "allowRemoteControl"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :cond_0
    if-ge v0, p1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return v1

    :catch_0
    const-string/jumbo p0, "RemoteInjection"

    const-string/jumbo p1, "RemoteInjection.isRemoteControlAllowed() exception : "

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final isRemoteControlAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlAllowed(I)Z

    move-result p0

    return p0
.end method

.method public final isRemoteControlDisabled(I)Z
    .locals 2

    iget v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mKnoxRemoteScreenSessionOwnerUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlDisabledInternal(II)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isRemoteControlDisabledInternal(II)Z
    .locals 3

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    if-eqz p2, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteControlDisabled:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    sget-object p2, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    const-class v2, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    check-cast p2, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(I)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move p1, v2

    goto :goto_1

    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final isRemoteInjectionDisabled(I)Z
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-virtual {p0, v3, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlDisabledInternal(II)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    :try_start_1
    const-string/jumbo p0, "RemoteInjection"

    const-string p1, "Failed to get top activity user id"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public final onAdminRemoved(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteControlDisabled:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlAllowed(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 0

    return-void
.end method

.method public final systemReady()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;-><init>(Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mWindowManager:Landroid/view/WindowManager;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mInjector:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;

    iget-object v2, v2, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mWindowManager:Landroid/view/WindowManager;

    :cond_0
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDisplayId()I

    invoke-virtual {v0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->updateCurrentDisplayDimensions()V

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    new-array v10, v8, [Landroid/view/MotionEvent$PointerCoords;

    new-array v9, v8, [Landroid/view/MotionEvent$PointerProperties;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v8, :cond_4

    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v4, v10, v3

    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v4, v9, v3

    aget-object v4, v10, v3

    invoke-virtual {v1, v3, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    aget-object v4, v9, v3

    invoke-virtual {v1, v3, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    aget-object v4, v9, v3

    const/4 v5, 0x1

    iput v5, v4, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    iget v4, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mKnoxRemoteScreenSessionOwnerUid:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    invoke-static {v2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    :goto_1
    int-to-float v4, v4

    goto :goto_2

    :cond_1
    iget v4, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    goto :goto_1

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getRemoteWidth() : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "RemoteInjection"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isInPortrait(Landroid/view/Display;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    :goto_3
    int-to-float v5, v5

    goto :goto_4

    :cond_2
    iget v5, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    goto :goto_3

    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "getRemoteHeight() : "

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v6, v10, v3

    iget v7, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v11, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    int-to-float v11, v11

    div-float/2addr v11, v4

    mul-float/2addr v11, v7

    iput v11, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v4, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v7, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    int-to-float v7, v7

    div-float/2addr v7, v5

    mul-float/2addr v7, v4

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v18

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v12

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v13

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v14

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v15

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v16

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v17

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v19

    invoke-static/range {v3 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public final updateCurrentDisplayDimensions()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mInjector:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;

    iget-object v0, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mWindowManager:Landroid/view/WindowManager;

    :cond_0
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    iget v0, v1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mCurrentDisplayWidth : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentDisplayHeight : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    const-string/jumbo v1, "RemoteInjection"

    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public final updateRemoteScreenDimensionsAndCallerUid(III)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_4

    const-string/jumbo v0, "RemoteInjectionService: updateRemoteScreenDimensions() width : "

    const-string v1, ", height : "

    const-string v2, ", uid "

    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "RemoteInjection"

    invoke-static {v0, p3, v1}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iput p3, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mKnoxRemoteScreenSessionOwnerUid:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    iput p2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->updateCurrentDisplayDimensions()V

    iget p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayWidth:I

    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    iget p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mCurrentDisplayHeight:I

    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWatcherCallback:Lcom/samsung/android/knox/remotecontrol/IRemoteScreenWatcherCallback;

    if-eqz p1, :cond_3

    iget p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mKnoxRemoteScreenSessionOwnerUid:I

    if-eq p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    invoke-interface {p1}, Lcom/samsung/android/knox/remotecontrol/IRemoteScreenWatcherCallback;->onRemoteScreenStart()V

    return-void

    :cond_2
    invoke-interface {p1}, Lcom/samsung/android/knox/remotecontrol/IRemoteScreenWatcherCallback;->onRemoteScreenStop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can only be called by system user"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
