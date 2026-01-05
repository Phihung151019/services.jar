.class public final Lcom/android/server/inputmethod/InputMethodManagerService;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/inputmethod/ZeroJankProxy$Callback;
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final DEBUG_SEP:Z

.field public static final DICTATION:Landroid/net/Uri;

.field public static final FEATURE_CONFIG_SIP:Ljava/lang/String;

.field public static mCurInputConnectionForKnox:Lcom/android/internal/inputmethod/IRemoteInputConnection;

.field public static mInputMethodSwitchDisable:Z


# instance fields
.field public mAccessControlEnable:Z

.field public final mAccessControlEnableChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;

.field public mAccessControlKeyboardBlockEnable:Z

.field public final mAccessControlKeyboardEnableChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;

.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field public final mClientController:Lcom/android/server/inputmethod/ClientController;

.field public final mConcurrentMultiUserModeEnabled:Z

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public mCurrentDisplayId:I

.field public mCurrentImeUserId:I

.field public mCurrentShowAuxSubtypes:Z

.field public mDefaultSIP:Ljava/lang/String;

.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mDumper:Lcom/android/server/inputmethod/InputMethodManagerService$1;

.field public mFocusedDisplayId:I

.field public final mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

.field public final mHandler:Landroid/os/Handler;

.field public final mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

.field public mIDisplayManager:Landroid/hardware/display/IDisplayManager;

.field public final mImePlatformCompatUtils:Lcom/android/server/inputmethod/ImePlatformCompatUtils;

.field public final mImeTargetWindowMap:Ljava/util/WeakHashMap;

.field public final mImeTrackerService:Lcom/android/server/inputmethod/ImeTrackerService;

.field public mInputManager:Landroid/hardware/input/InputManager;

.field public final mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

.field public final mInputMethodDeviceConfigs:Lcom/android/server/inputmethod/InputMethodDeviceConfigs;

.field public final mInputMethodListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;

.field public final mIoHandler:Landroid/os/Handler;

.field public mIsInteractive:Z

.field public mIsNeedUpdateSubtypeForLocaleChanged:Z

.field public mKeyboardTypeMouseIdList:Ljava/util/List;

.field public final mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

.field public mMinRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

.field public final mMinRefreshRateTokenRelease:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda4;

.field public final mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

.field public final mNonPreemptibleInputMethods:[Ljava/lang/String;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPointerEventListener:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda3;

.field public mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

.field public final mPreventImeStartupUnlessTextEditor:Z

.field public final mPriorityDumper:Lcom/android/server/inputmethod/InputMethodManagerService$5;

.field public final mRefreshRateToken:Landroid/os/IBinder;

.field public final mRes:Landroid/content/res/Resources;

.field public mSamsungIMMSHWKeyboard:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

.field public final mSemImmsUtil:Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;

.field public mShowOngoingImeSwitcherForPhones:Z

.field public final mSlotIme:Ljava/lang/String;

.field public final mSoftInputShowHideHistory:Lcom/android/server/inputmethod/SoftInputShowHideHistory;

.field public final mStartInputHistory:Lcom/android/server/inputmethod/StartInputHistory;

.field public mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerService$2;

.field public mStylusIds:Landroid/util/IntArray;

.field public mSubTypeIntentReceived:Z

.field public mSystemReady:Z

.field public final mUniversalSwitchChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;

.field public final mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

.field public mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

.field public final mVirtualDeviceMethodMap:Landroid/util/SparseArray;

.field public final mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

.field public final mWMS:Lcom/android/server/wm/WindowManagerService;

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field public misSecurefolderIdOrDualAppId:Z


# direct methods
.method public static -$$Nest$mcreateInputContentUriTokenLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/net/Uri;Ljava/lang/String;Lcom/android/server/inputmethod/UserData;)Lcom/android/server/inputmethod/InputContentUriTokenHandler;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "packageName must not be null"

    invoke-static {p2, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo p0, "contentUri must not be null"

    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "content"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object p0, p3, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p3, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Ignoring createInputContentUriTokenLocked mCurEditorInfo.packageName="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " packageName="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    iget-object p0, p3, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget p0, p0, Lcom/android/server/inputmethod/ClientState;->mUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    iget p0, p3, Lcom/android/server/inputmethod/UserData;->mUserId:I

    invoke-static {p1, p0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v4

    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    new-instance v0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/inputmethod/InputContentUriTokenHandler;-><init>(ILjava/lang/String;Landroid/net/Uri;II)V

    return-object v0

    :cond_3
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string/jumbo p1, "contentUri must have content scheme"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static -$$Nest$mdumpAsStringNoCheck(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 8

    const-string v0, "  mStylusIds="

    const-string v1, "  mCurrentImeUserId="

    const-string v2, "--user"

    invoke-static {p3, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    const/16 v4, -0x2710

    if-eq v2, v3, :cond_1

    array-length v3, p3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    aget-object v2, p3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v5, "Input Method Manager Service state:"

    invoke-virtual {v3, v5}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  mSystemReady="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  mInteractive="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  mConcurrentMultiUserModeEnabled="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    const-class v5, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v5

    :try_start_0
    iget v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_5

    :cond_2
    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "  mMenuController:"

    invoke-virtual {v3, v0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "    isShowing: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "    imList: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mImList:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    :cond_4
    const-string v0, "  mClientController:"

    invoke-virtual {v3, v0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda31;

    const/4 v1, 0x1

    invoke-direct {v0, v3, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda31;-><init>(Landroid/util/Printer;I)V

    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-virtual {v5, v0}, Lcom/android/server/inputmethod/ClientController;->forAllClients(Ljava/util/function/Consumer;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const-string v0, "  mUserDataRepository:"

    invoke-virtual {v3, v0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda31;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda31;-><init>(Landroid/util/Printer;I)V

    const-class v5, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v5

    :try_start_2
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/UserDataRepository;->forAllUserData(Ljava/util/function/Consumer;)V

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    :try_start_3
    const-string v0, "  mStartInputHistory:"

    invoke-virtual {v3, v0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/StartInputHistory;

    invoke-virtual {v0, p2}, Lcom/android/server/inputmethod/StartInputHistory;->dump(Ljava/io/PrintWriter;)V

    const-string v0, "  mSoftInputShowHideHistory:"

    invoke-virtual {v3, v0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSoftInputShowHideHistory:Lcom/android/server/inputmethod/SoftInputShowHideHistory;

    invoke-virtual {v0, p2}, Lcom/android/server/inputmethod/SoftInputShowHideHistory;->dump(Ljava/io/PrintWriter;)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string v0, "  mImeTrackerService#History:"

    invoke-virtual {v3, v0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTrackerService:Lcom/android/server/inputmethod/ImeTrackerService;

    iget-object v3, v0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    iget-object v0, v0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-static {v0, p2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$mdump(Lcom/android/server/inputmethod/ImeTrackerService$History;Ljava/io/PrintWriter;)V

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-eqz v0, :cond_5

    if-ne v2, v4, :cond_5

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda28;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/UserDataRepository;->forAllUserData(Ljava/util/function/Consumer;)V

    return-void

    :cond_5
    move v3, v2

    move-object v2, p0

    move p0, v3

    move-object v3, p1

    move-object v5, p2

    move v7, p4

    move p1, v6

    move-object v6, p3

    if-eq p0, v4, :cond_6

    goto :goto_4

    :cond_6
    move p0, p1

    :goto_4
    invoke-virtual {v2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    move-object v4, v3

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->dumpAsStringNoCheckForUser(Lcom/android/server/inputmethod/UserData;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :catchall_2
    move-exception v0

    move-object p0, v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :catchall_3
    move-exception v0

    move-object p0, v0

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0

    :catchall_4
    move-exception v0

    move-object p0, v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw p0

    :goto_5
    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p0
.end method

.method public static -$$Nest$mhandleShellCommandEnableDisableInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;Z)I
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    goto :goto_1

    :cond_0
    const-string v1, "-u"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    :goto_1
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    :try_start_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-class v7, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v0

    array-length v8, v0

    const/4 v9, 0x0

    move v10, v9

    move v11, v10

    :goto_2
    if-ge v10, v8, :cond_3

    aget v2, v0, v10

    invoke-virtual {p0, v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, p0

    move v4, p2

    goto :goto_3

    :cond_2
    move-object v1, p0

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandEnableDisableInputMethodInternalLocked(ILjava/lang/String;ZLjava/io/PrintWriter;Ljava/io/PrintWriter;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    or-int/2addr v11, p0

    :goto_3
    add-int/lit8 v10, v10, 0x1

    move-object p0, v1

    move p2, v4

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :cond_3
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_4

    :try_start_3
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_7

    :cond_4
    :goto_4
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    :cond_5
    if-eqz v11, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    return v9

    :goto_5
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    move-object p0, v0

    if-eqz v6, :cond_7

    :try_start_6
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object p1, v0

    :try_start_7
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_6
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_7
    if-eqz v5, :cond_8

    :try_start_8
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_8
    throw p0
.end method

.method public static -$$Nest$mhandleShellCommandTraceInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;)I
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "Unknown command: "

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x174ab7ac

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v2, v3, :cond_2

    const v3, 0x360802

    if-eq v2, v3, :cond_1

    const v3, 0x68ac462

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "start"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v7

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    const-string/jumbo v2, "stop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "save-for-bugreport"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v6

    :goto_1
    if-eqz v2, :cond_7

    if-eq v2, v5, :cond_6

    if-eq v2, v4, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "Input method trace options:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  start: Start tracing"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  stop: Stop tracing"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    return v6

    :cond_4
    :try_start_1
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/ImeTracing;->saveForBugreport(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    :cond_5
    return v7

    :cond_6
    :try_start_2
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/ImeTracing;->stopTrace(Ljava/io/PrintWriter;)V

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/ImeTracing;->startTrace(Ljava/io/PrintWriter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    :cond_8
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result p1

    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$6;

    invoke-direct {v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$6;-><init>(Z)V

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/ClientController;->forAllClients(Ljava/util/function/Consumer;)V

    monitor-exit v0

    return v7

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :goto_3
    if-eqz p1, :cond_9

    :try_start_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    throw p0
.end method

.method public static -$$Nest$mnotifyUserActionLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/UserData;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Got the notification of a user action."

    invoke-static {p0, v2, v1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    iget-object p1, p1, Lcom/android/server/inputmethod/UserData;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->supportsSwitchingToNextInputMethod()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSwitchingAwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    invoke-virtual {p1, v1, p0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->getUsageRank(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    aget v1, p1, p0

    const/4 v2, 0x1

    invoke-static {p1, v0, p1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput v1, p1, v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static -$$Nest$msetImeWindowStatusLocked(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/server/inputmethod/UserData;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->getTopFocusedDisplayId()I

    move-result v0

    iget v1, p3, Lcom/android/server/inputmethod/UserData;->mUserId:I

    iget-object p3, p3, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget v2, p3, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    if-eq v2, v0, :cond_0

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iput p1, p3, Lcom/android/server/inputmethod/InputMethodBindingController;->mImeWindowVis:I

    iput p2, p3, Lcom/android/server/inputmethod/InputMethodBindingController;->mBackDisposition:I

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setImeWindowStatus: vis="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", backDisposition="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "InputMethodManagerService"

    invoke-static {v0, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    if-eq p2, p3, :cond_1

    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_2

    :cond_1
    move p2, v1

    goto :goto_0

    :cond_2
    move p2, v0

    :goto_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    and-int/2addr p1, p3

    if-eqz p1, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/WindowManagerInternal;->setDismissImeOnBackKeyPressed(ZZ)V

    return-void
.end method

.method public static -$$Nest$msetInputMethodAndSubtypeLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/server/inputmethod/UserData;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget p3, p3, Lcom/android/server/inputmethod/UserData;->mUserId:I

    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    invoke-virtual {v2, p1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0, p3, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->canCallerAccessInputMethod(Ljava/lang/String;IILcom/android/server/inputmethod/InputMethodSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result p2

    invoke-static {v2, p2}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIndexFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIndexLocked(IILjava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "Unknown id: "

    invoke-static {p2, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static -$$Nest$mswitchKeyboardLayoutLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/server/inputmethod/UserData;)V
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p2, Lcom/android/server/inputmethod/UserData;->mUserId:I

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v3, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    invoke-virtual {v1, v3}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v3, v2}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->of(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez p1, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v4

    :goto_0
    iget-object p2, p2, Lcom/android/server/inputmethod/UserData;->mHardwareKeyboardShortcutController:Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;

    iget-object p2, p2, Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;->mSubtypeHandles:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v4

    :goto_1
    const/4 v7, 0x0

    const/4 v8, -0x1

    if-ge v6, v5, :cond_4

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v2, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v3, v8

    :goto_2
    add-int/2addr v6, v3

    add-int/2addr v6, v5

    rem-int/2addr v6, v5

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    move-object p1, v7

    :goto_3
    check-cast p1, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    if-nez p1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->getImeId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p2

    if-nez p2, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    if-nez v1, :cond_7

    invoke-static {p2, v7}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->of(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v8, v4, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(IIILjava/lang/String;)V

    return-void

    :cond_7
    move v2, v4

    :goto_4
    if-ge v2, v1, :cond_9

    invoke-virtual {p2, v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->of(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, v4, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(IIILjava/lang/String;)V

    return-void

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    :goto_5
    return-void
.end method

.method public static -$$Nest$mswitchToPreviousInputMethodLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/UserData;)Z
    .locals 16

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lcom/android/server/inputmethod/UserData;->mUserId:I

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getLastSubtypeForInputMethodInternal(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    invoke-virtual {v6, v5}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v3

    :goto_0
    iget-object v0, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v6, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    const/4 v7, -0x1

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iget-object v9, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-nez v6, :cond_1

    move v10, v7

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v10

    :goto_1
    if-eqz v8, :cond_2

    if-eq v9, v10, :cond_3

    :cond_2
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static {v5, v9}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIndexFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v8

    goto :goto_2

    :cond_3
    move v8, v7

    move-object v7, v3

    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v9, :cond_9

    if-nez v6, :cond_4

    move v9, v11

    goto :goto_3

    :cond_4
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v9

    xor-int/2addr v9, v11

    :goto_3
    if-nez v9, :cond_9

    invoke-virtual {v2, v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_5
    sget-object v6, Lcom/android/server/inputmethod/SystemLocaleWrapper;->sSystemLocale:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/LocaleList;

    invoke-virtual {v6, v10}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_4
    move v9, v10

    :goto_5
    if-ge v9, v3, :cond_9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v13

    if-lez v13, :cond_7

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v13

    if-eqz v13, :cond_7

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v14

    move v15, v10

    :goto_6
    if-ge v15, v14, :cond_6

    move/from16 p1, v10

    invoke-virtual {v12, v15}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move/from16 v10, p1

    goto :goto_6

    :cond_6
    move/from16 p1, v10

    const-string/jumbo v10, "keyboard"

    invoke-static {v10, v6, v13}, Lcom/android/server/inputmethod/SubtypeUtils;->findLastResortApplicableSubtype(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v8

    invoke-static {v12, v8}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIndexFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v8

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_7

    :cond_7
    move/from16 p1, v10

    :cond_8
    add-int/lit8 v9, v9, 0x1

    move/from16 v10, p1

    goto :goto_5

    :cond_9
    move/from16 p1, v10

    :goto_7
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v3, "Switch to: %s, %s, from: %s, %s"

    invoke-static {v2, v3, v0}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v1, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIndexLocked(IILjava/lang/String;)V

    return v11

    :cond_a
    return p1
.end method

.method public static -$$Nest$mswitchUserOnHandlerLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V
    .locals 9

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    sget-object v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "Switching user stage 1/3. newUserId=%s prevUserId=%s"

    invoke-static {v1, v3, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->onUnbindCurrentMethodByReset(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    const/4 v2, 0x6

    invoke-virtual {p0, v2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(II)V

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    const-string v2, ""

    iput-object v2, v0, Lcom/android/server/inputmethod/UserData;->mLastEnabledInputMethodsStr:Ljava/lang/String;

    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    const-string/jumbo v2, "default_input_method"

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "Switching user stage 2/3. newUserId=%s defaultImiId=%s"

    invoke-static {v1, v5, v4}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v4

    invoke-virtual {p0, p1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->postInputMethodSettingUpdatedLocked(IZ)V

    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;I)V

    :cond_0
    const/4 v5, 0x1

    invoke-virtual {p0, p1, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(IZ)V

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {v6, p1}, Lcom/android/server/inputmethod/InputMethodMenuController;->updateKeyboardFromSettingsLocked(I)V

    iget-object v6, v0, Lcom/android/server/inputmethod/UserData;->mSubtypeForKeyboardLayoutMapping:Landroid/util/Pair;

    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v7, p1, v8, v6}, Lcom/android/server/input/InputManagerService$LocalService;->onInputMethodSubtypeChangedForKeyboardLayoutMapping(ILcom/android/internal/inputmethod/InputMethodSubtypeHandle;Landroid/view/inputmethod/InputMethodSubtype;)V

    :cond_1
    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v4, v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v2, "Switching user stage 3/3. newUserId=%s selectedIme=%s"

    invoke-static {v1, v2, p1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    iget-object p2, p2, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/inputmethod/ClientController;->getClient(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ClientState;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-boolean p2, v0, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    iget-object p1, p1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget-boolean v0, p1, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v0, :cond_4

    :try_start_0
    iget-object p1, p1, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {p1, p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->scheduleStartInputIfNecessary(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda8;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;ZI)V

    iget-object p1, p1, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "access_control_enabled"

    const/4 v0, 0x0

    iget v1, v4, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    invoke-static {p1, p2, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_6

    move p1, v5

    goto :goto_1

    :cond_6
    move p1, v0

    :goto_1
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlEnable:Z

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "access_control_keyboard_block"

    invoke-static {p1, p2, v5, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    move v5, v0

    :goto_2
    iput-boolean v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    return-void
.end method

.method public static -$$Nest$mupdateStatusIconLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;ILcom/android/server/inputmethod/UserData;)V
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p3, p3, Lcom/android/server/inputmethod/UserData;->mUserId:I

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    if-eq p3, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    sget-object p1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string/jumbo p2, "hide the small icon for the input method"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideStatusBarIconLocked(I)V

    return-void

    :cond_1
    if-eqz p1, :cond_4

    sget-object v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string/jumbo v2, "show a small icon for the input method"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object p3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p3

    goto :goto_1

    :cond_2
    move-object p3, v2

    :goto_1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerService$2;

    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    move-object v8, v2

    iget-object v3, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v7, 0x0

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/statusbar/StatusBarManagerService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerService$2;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.product_ship"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_SIP_CONFIG_PACKAGE_NAME"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/InputMethodManagerService;->FEATURE_CONFIG_SIP:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodSwitchDisable:Z

    const-string/jumbo v0, "content://com.samsung.android.honeyboard.DictationProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DICTATION:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputConnectionForKnox:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/os/Looper;Landroid/os/Handler;Ljava/util/function/IntFunction;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Landroid/os/Looper;",
            "Landroid/os/Handler;",
            "Ljava/util/function/IntFunction<",
            "Lcom/android/server/inputmethod/InputMethodBindingController;",
            ">;)V"
        }
    .end annotation

    const-string v0, "InputMethodManagerService: restore last ime before toolkitHbd="

    const-string v1, "Initial default ime = "

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedDisplayId:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlEnable:Z

    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsNeedUpdateSubtypeForLocaleChanged:Z

    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSubTypeIntentReceived:Z

    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentShowAuxSubtypes:Z

    iput v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentDisplayId:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyboardTypeMouseIdList:Ljava/util/List;

    new-instance v4, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPointerEventListener:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda3;

    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->misSecurefolderIdOrDualAppId:Z

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDeviceMethodMap:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/server/inputmethod/InputMethodManagerService$1;

    invoke-direct {v4, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$1;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/server/inputmethod/InputMethodManagerService$1;

    new-instance v4, Ljava/util/WeakHashMap;

    invoke-direct {v4}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    invoke-direct {v5, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v5, Ljava/util/WeakHashMap;

    invoke-direct {v5}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTargetWindowMap:Ljava/util/WeakHashMap;

    new-instance v5, Lcom/android/server/inputmethod/StartInputHistory;

    invoke-direct {v5}, Lcom/android/server/inputmethod/StartInputHistory;-><init>()V

    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/StartInputHistory;

    new-instance v5, Lcom/android/server/inputmethod/SoftInputShowHideHistory;

    invoke-direct {v5}, Lcom/android/server/inputmethod/SoftInputShowHideHistory;-><init>()V

    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSoftInputShowHideHistory:Lcom/android/server/inputmethod/SoftInputShowHideHistory;

    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$5;

    invoke-direct {v5, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$5;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPriorityDumper:Lcom/android/server/inputmethod/InputMethodManagerService$5;

    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUniversalSwitchChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;

    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;

    const/4 v6, 0x1

    invoke-direct {v5, v6, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlEnableChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;

    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;

    const/4 v6, 0x2

    invoke-direct {v5, v6, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlKeyboardEnableChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRefreshRateToken:Landroid/os/IBinder;

    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda4;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda4;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMinRefreshRateTokenRelease:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda4;

    const-class v5, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v5

    :try_start_0
    iput-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-static {p3, p0}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIoHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v7, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    sget-object v8, Lcom/android/server/inputmethod/SystemLocaleWrapper;->sSystemLocale:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance v8, Lcom/android/server/inputmethod/SystemLocaleWrapper$LocaleChangeListener;

    invoke-direct {v8, p1, v7}, Lcom/android/server/inputmethod/SystemLocaleWrapper$LocaleChangeListener;-><init>(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string/jumbo v9, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v7, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8, v7, v3, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance p4, Lcom/android/server/inputmethod/ImeTrackerService;

    invoke-direct {p4, v6}, Lcom/android/server/inputmethod/ImeTrackerService;-><init>(Landroid/os/Handler;)V

    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTrackerService:Lcom/android/server/inputmethod/ImeTrackerService;

    const-class p4, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/wm/WindowManagerInternal;

    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const-class p4, Landroid/app/ActivityManagerInternal;

    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/ActivityManagerInternal;

    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-class v6, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageManagerInternal;

    iput-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-class v7, Lcom/android/server/input/InputManagerService$LocalService;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/input/InputManagerService$LocalService;

    iput-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    new-instance v7, Lcom/android/server/inputmethod/ImePlatformCompatUtils;

    invoke-direct {v7}, Lcom/android/server/inputmethod/ImePlatformCompatUtils;-><init>()V

    iput-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImePlatformCompatUtils:Lcom/android/server/inputmethod/ImePlatformCompatUtils;

    new-instance v7, Lcom/android/server/inputmethod/InputMethodDeviceConfigs;

    invoke-direct {v7}, Lcom/android/server/inputmethod/InputMethodDeviceConfigs;-><init>()V

    iput-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodDeviceConfigs:Lcom/android/server/inputmethod/InputMethodDeviceConfigs;

    const-class v7, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerInternal;

    iput-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const v7, 0x1040f50

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    invoke-static {}, Lcom/android/server/inputmethod/ImeProtoLogGroup;->values()[Lcom/android/server/inputmethod/ImeProtoLogGroup;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/protolog/ProtoLog;->init([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    invoke-virtual {p4}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result p4

    iput p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    new-instance p4, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;

    const/4 v7, 0x0

    invoke-direct {p4, v7, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    new-instance v7, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;

    const/4 v8, 0x1

    invoke-direct {v7, v8, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    new-instance v8, Lcom/android/server/inputmethod/UserDataRepository;

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    move-object p5, p4

    :goto_0
    invoke-direct {v8, p5, v7}, Lcom/android/server/inputmethod/UserDataRepository;-><init>(Ljava/util/function/IntFunction;Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;)V

    iput-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

    new-instance p4, Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-direct {p4, p0}, Lcom/android/server/inputmethod/InputMethodMenuController;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    new-instance p4, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    invoke-direct {p4, p0}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    new-instance p4, Lcom/android/server/inputmethod/ClientController;

    invoke-direct {p4, v6}, Lcom/android/server/inputmethod/ClientController;-><init>(Landroid/content/pm/PackageManagerInternal;)V

    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    new-instance p5, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda8;

    invoke-direct {p5, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iget-object p4, p4, Lcom/android/server/inputmethod/ClientController;->mCallbacks:Ljava/util/List;

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p4, 0x1110007

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPreventImeStartupUnlessTextEditor:Z

    const p4, 0x1070133

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNonPreemptibleInputMethods:[Ljava/lang/String;

    new-instance p2, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda4;

    const/4 p4, 0x1

    invoke-direct {p2, p4, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda4;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    new-instance p4, Lcom/android/server/inputmethod/HandwritingModeController;

    new-instance p5, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;

    invoke-direct {p5, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-direct {p4, p1, p3, p5, p2}, Lcom/android/server/inputmethod/HandwritingModeController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda4;)V

    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->registerDeviceListenerAndCheckStylusSupport()V

    new-instance p2, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;

    invoke-direct {p2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;

    new-instance p2, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;

    invoke-direct {p2, p1, p0}, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;-><init>(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSemImmsUtil:Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildKeyboardTypeMouseList(Landroid/content/Context;)V

    const-string/jumbo p2, "window"

    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWMS:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const-string/jumbo p4, "com.sec.feature.folder_type"

    invoke-virtual {p3, p4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->registerSamsungAdditionalReceivers()V

    iget p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    xor-int/2addr p5, v4

    const-string v6, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mImeSelectedOnBoot :"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v6, p5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p5, Lcom/samsung/android/rune/ViewRune;->SUPPORT_WRITING_TOOLKIT:Z

    if-eqz p5, :cond_1

    const-string/jumbo p5, "com.samsung.android.honeyboard/com.samsung.android.writingtoolkit.service.FakeHoneyBoardService"

    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p3, v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getLastSubtypeForInputMethodInternal(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p4

    if-eqz p4, :cond_1

    const-string p5, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p4, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p3, p4}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p3, "access_control_keyboard_block"

    iget p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-static {p1, p3, v4, p4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    iput-boolean v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string/jumbo p3, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    invoke-virtual {p1, p3}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_3

    const-string p0, "InputMethodManagerService"

    const-string/jumbo p1, "Spen input disable"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    const-string p1, "InputMethodManagerService"

    const-string/jumbo p3, "Spen input enable"

    invoke-static {p1, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPointerEventListener:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda3;

    invoke-virtual {p2, p0, v2}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    :goto_3
    monitor-exit v5

    return-void

    :goto_4
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iput-boolean v0, p0, Lcom/android/server/inputmethod/ClientState;->mSessionRequestedForAccessibility:Z

    return-void
.end method

.method public static computeImeDisplayIdForTargetInner(ILcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;I)I
    .locals 1

    if-eq p0, p2, :cond_2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowManagerInternal;->getDisplayImePolicy(I)I

    move-result p1

    if-nez p1, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x2

    if-ne p1, p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return p2
.end method

.method public static createAccessibilityInputMethodSessions(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 4

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V
    .locals 3

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;->finishSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "InputMethodManagerService"

    const-string/jumbo v2, "Session failed to close due to remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    :cond_0
    return-void
.end method

.method public static getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "default_input_method"

    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method public static hasMultipleSubtypesForSwitcher(I)Z
    .locals 14

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p0

    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-le v1, v2, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v2, 0x0

    if-ge v1, v3, :cond_1

    goto/16 :goto_5

    :cond_1
    const/4 v4, 0x0

    move v6, v2

    move v7, v6

    move v8, v7

    move-object v5, v4

    :goto_0
    const-string/jumbo v9, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    if-ge v6, v1, :cond_7

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p0, v10, v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-le v12, v3, :cond_2

    move v12, v3

    goto :goto_1

    :cond_2
    const-string/jumbo v9, "com.samsung.android.bixby.voiceinput/com.samsung.android.svoiceime.BixbyDictVoiceReco"

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string/jumbo v9, "com.samsung.android.bixby.service/.dictation.DictationInputMethodService"

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_4

    :cond_3
    :goto_1
    if-nez v12, :cond_4

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    move v9, v2

    :goto_2
    if-ge v9, v12, :cond_6

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v13

    if-nez v13, :cond_5

    add-int/lit8 v7, v7, 0x1

    move-object v4, v10

    goto :goto_3

    :cond_5
    add-int/lit8 v8, v8, 0x1

    move-object v5, v10

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    if-gt v7, v3, :cond_c

    if-le v8, v3, :cond_8

    goto :goto_6

    :cond_8
    if-ne v7, v3, :cond_a

    if-ne v8, v3, :cond_a

    if-eqz v4, :cond_c

    if-eqz v5, :cond_c

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result p0

    if-nez p0, :cond_9

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result p0

    if-eqz p0, :cond_c

    :cond_9
    const-string/jumbo p0, "TrySuppressingImeSwitcher"

    invoke-virtual {v4, p0}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_5

    :cond_a
    if-ne v1, v3, :cond_b

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_6

    :cond_b
    :goto_5
    return v2

    :cond_c
    :goto_6
    return v3
.end method

.method public static isInputMethodRestrictedByMDM()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInputMethodRestrictionState()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "InputMethodManagerService"

    const-string v1, "Input method restricted by Knox Customization"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isStylusDevice(Landroid/view/InputDevice;)Z
    .locals 1

    const/16 v0, 0x4002

    invoke-virtual {p0, v0}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0xc002

    invoke-virtual {p0, v0}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static queryRawInputMethodServiceMap(Landroid/content/Context;I)Lcom/android/server/inputmethod/RawInputMethodMap;
    .locals 12

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move p1, v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.view.InputMethod"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-wide/32 v3, 0xc8080

    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v2, "enabled_input_methods"

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/android/server/inputmethod/InputMethodUtils$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/server/inputmethod/InputMethodUtils$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p1, v3}, Lcom/android/server/inputmethod/InputMethodUtils;->splitEnabledImeStr(Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    new-instance v3, Landroid/util/ArrayMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodInfo;->computeId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string/jumbo v9, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "InputMethodManagerService"

    if-nez v8, :cond_3

    const-string/jumbo v5, "Skipping input method "

    const-string v6, ": it does not require the permission android.permission.BIND_INPUT_METHOD"

    invoke-static {v5, v7, v6, v9}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_3
    sget-object v8, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v10, "Checking %s"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v8, v10, v11}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    new-instance v10, Landroid/view/inputmethod/InputMethodInfo;

    sget-object v11, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v10, p0, v5, v11}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/List;)V

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->isVrOnly()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    iget-object v5, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p1, v5, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v11, 0x14

    if-ge v6, v11, :cond_5

    goto :goto_2

    :cond_5
    const-string v5, "Found an input method, but ignored due threshold: %s"

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v8, v5, v6}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :catch_0
    move-exception v5

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual {p1, v5, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Found an input method %s"

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v8, v5, v6}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Unable to load input method "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_7
    new-instance p0, Lcom/android/server/inputmethod/RawInputMethodMap;

    invoke-direct {p0, v3}, Lcom/android/server/inputmethod/RawInputMethodMap;-><init>(Landroid/util/ArrayMap;)V

    return-object p0
.end method

.method public static requestClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/inputmethod/ClientState;->mSessionRequestedForAccessibility:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v1, "Creating new accessibility sessions for client %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/inputmethod/ClientState;->mSessionRequestedForAccessibility:Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/AccessibilityManagerInternal;->createImeSession(Landroid/util/ArraySet;)V

    :cond_1
    return-void
.end method

.method public static setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z
    .locals 0

    iget-object p1, p1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object p1, p1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {p1, p0, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    const/16 p1, 0x39

    invoke-interface {p0, p2, p1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->isStylusHandwritingEnabled(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "InputMethodManagerService"

    const-string p1, "Can not accept stylus handwriting delegation. Stylus handwriting pref is disabled for user: "

    invoke-static {p2, p1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/inputmethod/ClientController;->verifyClientAndPackageMatch(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "InputMethodManagerService"

    const-string p1, "Delegate package does not belong to the same user. Ignoring startStylusHandwriting"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return v1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :cond_1
    const/4 v5, 0x1

    and-int/2addr p5, v5

    if-eqz p5, :cond_2

    move p5, v5

    goto :goto_0

    :cond_2
    move p5, v1

    :goto_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    iget-object v0, v0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatorPackageName:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    iget-boolean p4, p4, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatorFromDefaultHomePackage:Z

    if-nez p4, :cond_4

    :cond_3
    const-string p0, "InputMethodManagerService"

    const-string p1, "Delegator package does not match. Ignoring startStylusHandwriting"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return v1

    :cond_4
    iget-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    iget-object p4, p4, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatePackageName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    const-string p0, "InputMethodManagerService"

    const-string p1, "Delegate package does not match. Ignoring startStylusHandwriting"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return v1

    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class p3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p3

    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    iget-boolean p4, p4, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationConnectionlessFlow:Z

    if-eqz p4, :cond_7

    iget-object p1, p2, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    if-nez p1, :cond_6

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_6
    :try_start_2
    iget-object p1, p1, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p1}, Lcom/android/internal/inputmethod/IInputMethod;->commitHandwritingDelegationTextIfAvailable()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    :try_start_3
    invoke-static {p1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->clearPendingHandwritingDelegation()V

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ZLcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;Landroid/view/inputmethod/CursorAnchorInfo;Z)Z

    :goto_2
    monitor-exit p3

    return v5

    :goto_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :goto_4
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final addStylusDeviceIdLocked(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const-string/jumbo v0, "New Stylus deviceId"

    const-string v1, " added."

    const-string v2, "InputMethodManagerService"

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/HandwritingModeController;->getCurrentRequestId()Ljava/util/OptionalInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-boolean p1, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsStylusHw:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleResetStylusHandwriting()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final attachNewAccessibilityLocked(IIZ)V
    .locals 5

    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    iget-boolean p2, p0, Lcom/android/server/inputmethod/UserData;->mBoundToAccessibility:Z

    const/4 v0, 0x1

    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/AccessibilityManagerInternal;->bindInput()V

    iput-boolean v0, p0, Lcom/android/server/inputmethod/UserData;->mBoundToAccessibility:Z

    :cond_0
    const/16 p2, 0xb

    if-eq p1, p2, :cond_7

    iget-object p1, p0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object p1, p1, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    invoke-virtual {p2, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Lcom/android/server/AccessibilityManagerInternal;->setImeSessionEnabled(Landroid/util/SparseArray;Z)V

    :cond_3
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    if-eqz v2, :cond_4

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    invoke-virtual {p2, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_6

    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/android/server/AccessibilityManagerInternal;->setImeSessionEnabled(Landroid/util/SparseArray;Z)V

    :cond_6
    iput-object p1, p0, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/inputmethod/UserData;->mCurRemoteAccessibilityInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    iget-object p0, p0, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    xor-int/2addr p3, v0

    invoke-virtual {p1, p2, p0, p3}, Lcom/android/server/AccessibilityManagerInternal;->startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    :cond_7
    return-void
.end method

.method public final attachNewInputLocked(IIZ)Lcom/android/internal/inputmethod/InputBindResult;
    .locals 24

    move-object/from16 v1, p0

    move/from16 v3, p2

    invoke-virtual {v1, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v15

    iget-boolean v0, v15, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    const/4 v2, 0x1

    iget-object v4, v15, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    if-nez v0, :cond_0

    iget-object v0, v4, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    iget-object v5, v15, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v5, v5, Lcom/android/server/inputmethod/ClientState;->mBinding:Landroid/view/inputmethod/InputBinding;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {v0, v5}, Lcom/android/internal/inputmethod/IInputMethod;->bindInput(Landroid/view/inputmethod/InputBinding;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    iput-boolean v2, v15, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    :cond_0
    xor-int/lit8 v8, p3, 0x1

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    move v6, v2

    new-instance v2, Lcom/android/server/inputmethod/StartInputInfo;

    iget-object v0, v4, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    move-object v7, v5

    iget v5, v4, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    move v9, v6

    iget-object v6, v4, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    iget-object v10, v15, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget v10, v10, Lcom/android/server/inputmethod/ClientState;->mUid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    iget-object v11, v15, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget v11, v11, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    iget-object v12, v15, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    move v13, v9

    move v9, v10

    move v10, v11

    iget-object v11, v12, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    iget-object v14, v15, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    move-object/from16 v16, v14

    iget v14, v4, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    iget v12, v12, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowSoftInputMode:I

    move-object/from16 v18, v4

    move-object/from16 v19, v7

    move v13, v12

    move-object/from16 v12, v16

    move/from16 v7, p1

    move-object v4, v0

    invoke-direct/range {v2 .. v14}, Lcom/android/server/inputmethod/StartInputInfo;-><init>(ILandroid/os/IBinder;ILjava/lang/String;IZIILandroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;II)V

    move v9, v8

    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTargetWindowMap:Ljava/util/WeakHashMap;

    iget-object v4, v15, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v4, v4, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    move-object/from16 v10, v19

    invoke-virtual {v0, v10, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/StartInputHistory;

    iget v4, v0, Lcom/android/server/inputmethod/StartInputHistory;->mNextIndex:I

    iget-object v5, v0, Lcom/android/server/inputmethod/StartInputHistory;->mEntries:[Lcom/android/server/inputmethod/StartInputHistory$Entry;

    aget-object v6, v5, v4

    if-nez v6, :cond_1

    new-instance v6, Lcom/android/server/inputmethod/StartInputHistory$Entry;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6, v2}, Lcom/android/server/inputmethod/StartInputHistory$Entry;->set(Lcom/android/server/inputmethod/StartInputInfo;)V

    aput-object v6, v5, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v2}, Lcom/android/server/inputmethod/StartInputHistory$Entry;->set(Lcom/android/server/inputmethod/StartInputInfo;)V

    :goto_1
    iget v2, v0, Lcom/android/server/inputmethod/StartInputHistory;->mNextIndex:I

    const/4 v13, 0x1

    add-int/2addr v2, v13

    array-length v4, v5

    rem-int/2addr v2, v4

    iput v2, v0, Lcom/android/server/inputmethod/StartInputHistory;->mNextIndex:I

    iget-object v0, v15, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget v0, v0, Lcom/android/server/inputmethod/ClientState;->mUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v3, v0, :cond_2

    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    move-object/from16 v11, v18

    iget v2, v11, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    iget-object v2, v15, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget v6, v2, Lcom/android/server/inputmethod/ClientState;->mUid:I

    move-object v2, v0

    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    goto :goto_2

    :cond_2
    move-object/from16 v11, v18

    :goto_2
    invoke-virtual {v1, v15}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodNavButtonFlagsLocked(Lcom/android/server/inputmethod/UserData;)I

    move-result v2

    iget-object v0, v15, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v4, v0, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v0, v15, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    const/4 v5, 0x0

    if-eq v0, v4, :cond_4

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Disabling: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v15, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v15, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v6, v6, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {v6, v0, v5}, Lcom/android/internal/inputmethod/IInputMethod;->setSessionEnabled(Lcom/android/internal/inputmethod/IInputMethodSession;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :cond_3
    :goto_3
    iput-object v4, v15, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz v4, :cond_4

    iget-object v0, v4, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Enabling: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v15, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v15, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    iget-object v6, v6, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {v6, v0, v13}, Lcom/android/internal/inputmethod/IInputMethod;->setSessionEnabled(Lcom/android/internal/inputmethod/IInputMethodSession;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :cond_4
    :goto_4
    iget-object v0, v4, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    iget-object v6, v15, Lcom/android/server/inputmethod/UserData;->mCurInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    iget-object v7, v15, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v8, v15, Lcom/android/server/inputmethod/UserData;->mCurImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;

    invoke-direct {v12}, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;-><init>()V

    iput-object v10, v12, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->startInputToken:Landroid/os/IBinder;

    iput-object v6, v12, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->remoteInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    iput-object v7, v12, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->editorInfo:Landroid/view/inputmethod/EditorInfo;

    iput-boolean v9, v12, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->restarting:Z

    iput v2, v12, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->navigationBarFlags:I

    iput-object v8, v12, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->imeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    :try_start_3
    iget-object v0, v0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {v0, v12}, Lcom/android/internal/inputmethod/IInputMethod;->startInput(Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_5
    iget-object v0, v15, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const-string v2, "InputMethodManagerService"

    if-eqz v0, :cond_5

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    const-string/jumbo v6, "displayId"

    const/4 v7, -0x2

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v6, "checkDisplayOfStartInputAndUpdateKeyboard: displayId="

    const-string v8, ", mFocusedDisplayId="

    invoke-static {v0, v6, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedDisplayId:I

    invoke-static {v6, v8, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedDisplayId:I

    if-eq v6, v0, :cond_5

    if-eq v0, v7, :cond_5

    iput v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedDisplayId:I

    :cond_5
    invoke-virtual {v1, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->isShowRequestedForCurrentWindow(I)Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_7

    iget-object v0, v15, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v0, v0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    if-eqz v0, :cond_7

    iget-object v0, v15, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    const/4 v0, 0x2

    invoke-virtual {v1, v0, v3, v13}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(IIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    :goto_6
    iput-object v6, v15, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    iget-object v7, v15, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v7, v7, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v1, v7, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputInternal(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "attachNewInputLocked: showCurrentInputInternal, softInputModeState="

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v15, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget v7, v7, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowSoftInputMode:I

    invoke-static {v7}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v0, v11, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    invoke-virtual {v2, v0}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->suppressesSpellChecker()Z

    move-result v2

    if-eqz v2, :cond_8

    move/from16 v23, v13

    goto :goto_7

    :cond_8
    move/from16 v23, v5

    :goto_7
    iget-object v2, v15, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v2, v2, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->createAccessibilityInputMethodSessions(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v19

    iget-boolean v2, v11, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsStylusHw:Z

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;

    invoke-direct {v3, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    iput-object v3, v2, Lcom/android/server/inputmethod/HandwritingModeController;->mInkWindowInitRunnable:Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;

    :cond_9
    new-instance v16, Lcom/android/internal/inputmethod/InputBindResult;

    iget-object v1, v4, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    iget-object v2, v4, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mChannel:Landroid/view/InputChannel;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/view/InputChannel;->dup()Landroid/view/InputChannel;

    move-result-object v6

    :cond_a
    move-object/from16 v20, v6

    iget v2, v11, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    const/16 v17, 0x0

    move-object/from16 v21, v0

    move-object/from16 v18, v1

    move/from16 v22, v2

    invoke-direct/range {v16 .. v23}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V

    return-object v16
.end method

.method public final buildKeyboardTypeMouseList(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sip_keyboard_type_mouse_id_list"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "1133:45077,1133:45072,1133:45091,1133:45083,1133:45082,1133:45076,9390:8195"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyboardTypeMouseIdList:Ljava/util/List;

    sget-boolean p1, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "buildKeyboardTypeMouseList: mKeyboardTypeMouseIdList="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyboardTypeMouseIdList:Ljava/util/List;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public final callbackImeWindowStatus(IZ)V
    .locals 2

    sget v0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeWindowStatus;->mVis:I

    if-ne v0, p1, :cond_0

    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeWindowStatus;->mNeedsToShowImeSwitcher:Z

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "callbackImeWindowStatus:  vis="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", needsToShowImeSwitcher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "vis"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "needsToShowImeSwitcher"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    if-eqz p0, :cond_2

    const-string/jumbo v1, "imeWindowState"

    invoke-interface {p0, v1, v0}, Lcom/android/internal/inputmethod/IInputMethodSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    sput p1, Lcom/android/server/inputmethod/InputMethodManagerService$ImeWindowStatus;->mVis:I

    sput-boolean p2, Lcom/android/server/inputmethod/InputMethodManagerService$ImeWindowStatus;->mNeedsToShowImeSwitcher:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public final calledFromValidUserLocked()Z
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v2

    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v0, v2, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->misSecurefolderIdOrDualAppId:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "--- IPC called from background users. Ignore. callers="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "InputMethodManagerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final canCallerAccessInputMethod(Ljava/lang/String;IILcom/android/server/inputmethod/InputMethodSettings;)Z
    .locals 1

    invoke-virtual {p4}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-static {p4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    const/4 v0, 0x1

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p2, p3, p1, v0}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final canInteractWithImeLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Landroid/view/inputmethod/ImeTracker$Token;I)Z
    .locals 3

    invoke-virtual {p0, p5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p5

    iget-object v0, p5, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, v0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget-object v0, v0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-interface {p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/ClientController;->getClient(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ClientState;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p4, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    iget-object p5, p5, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object p5, p5, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v1, v0, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    iget v2, v0, Lcom/android/server/inputmethod/ClientState;->mUid:I

    iget v0, v0, Lcom/android/server/inputmethod/ClientState;->mPid:I

    invoke-virtual {p0, p5, v2, v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->hasInputMethodClientFocus(Landroid/os/IBinder;III)I

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    const/4 p1, 0x3

    invoke-interface {p0, p4, p1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p3, p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Ignoring %s of uid %d : %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_3
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p4, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "unknown client "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final canShowInputMethodPickerLocked(Lcom/android/internal/inputmethod/IInputMethodClient;I)Z
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v0, v0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, v0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget-object v0, v0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-eq p2, p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v3, 0x0

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->isSameApp(IIJLjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final checkBlocklistUsbKeyboardConnected()I
    .locals 9

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget v4, v0, v3

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v5, v4}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    :goto_1
    move v6, v2

    goto :goto_3

    :cond_1
    invoke-virtual {v4}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    move v6, v5

    goto :goto_2

    :cond_2
    move v6, v2

    :goto_2
    if-eqz v6, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/view/InputDevice;->getVendorId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/InputDevice;->getProductId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyboardTypeMouseIdList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-ltz v7, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "isQwertyKeyboard: name="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " vendorId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/InputDevice;->getVendorId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " productId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/InputDevice;->getProductId()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "InputMethodManagerService"

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :goto_3
    if-eqz v6, :cond_4

    return v5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v2
.end method

.method public final chooseNewDefaultIMELocked(I)Z
    .locals 4

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "New default IME was selected: %s"

    invoke-static {v1, v3, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final createStatsTokenForFocusedClient(IIZ)Landroid/view/inputmethod/ImeTracker$Token;
    .locals 7

    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object p2, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz p2, :cond_0

    iget p2, p2, Lcom/android/server/inputmethod/ClientState;->mUid:I

    :goto_0
    move v2, p2

    goto :goto_1

    :cond_0
    const/4 p2, -0x1

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    :goto_2
    move-object v1, p0

    goto :goto_3

    :cond_1
    const-string/jumbo p0, "uid("

    const-string p2, ")"

    invoke-static {v2, p0, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :goto_3
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    if-eqz p3, :cond_2

    const/4 p0, 0x1

    :goto_4
    move v3, p0

    goto :goto_5

    :cond_2
    const/4 p0, 0x2

    goto :goto_4

    :goto_5
    const/4 v4, 0x6

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Landroid/view/inputmethod/ImeTracker;->onStart(Ljava/lang/String;IIIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p0

    return-object p0
.end method

.method public final dumpAsStringNoCheckForUser(Lcom/android/server/inputmethod/UserData;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v0, "    mInFullscreenMode="

    const-string v5, "    mEnabledSession="

    const-string v6, "    mBoundToMethod="

    const-string v7, "    mFocusedWindowPerceptible="

    const-string v8, "    mCurClient="

    new-instance v9, Landroid/util/PrintWriterPrinter;

    invoke-direct {v9, v3}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "  UserId="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v1, Lcom/android/server/inputmethod/UserData;->mUserId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    const-class v10, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v10

    :try_start_0
    iget-object v11, v1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v12, v1, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v13, v11, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    const-string v14, "    mBindingController:"

    invoke-virtual {v9, v14}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->dump(Ljava/io/PrintWriter;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, p0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    const-string p0, "    mImeBindingState:"

    invoke-virtual {v9, p0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    iget-object p0, v1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    const-string v7, "      "

    invoke-virtual {p0, v9, v7}, Lcom/android/server/inputmethod/ImeBindingState;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, v1, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, p0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, p0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    const-string p0, "    mVisibilityStateComputer:"

    invoke-virtual {v9, p0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    iget-object p0, v1, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->dump(Ljava/io/PrintWriter;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, p0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    iget p0, v1, Lcom/android/server/inputmethod/UserData;->mUserId:I

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const-string v5, "    Input Methods:"

    invoke-virtual {v9, v5}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "      InputMethod #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    const-string v7, "        "

    invoke-virtual {v6, v9, v7}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_5

    :cond_0
    const-string p0, "  mSoftInputShowHideHistory End"

    invoke-virtual {v9, p0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p5, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string p0, ""

    invoke-virtual {v9, p0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    if-eqz v12, :cond_2

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    :try_start_1
    iget-object p0, v12, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {p0}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0, v2, v4}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Failed to dump input method client: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, p0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string/jumbo p0, "No input method client."

    invoke-virtual {v9, p0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    :goto_1
    const-class p0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p0

    :try_start_2
    iget-object v0, v1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v0, v0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz v0, :cond_3

    if-eq v12, v0, :cond_3

    const-string v1, ""

    invoke-virtual {v9, v1}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "Warning: Current input method client doesn\'t match the last focused window."

    invoke-virtual {v9, v1}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    const-string v1, "Dumping input method client in the last focused window just in case."

    invoke-virtual {v9, v1}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v9, v1}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, v0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget-object v0, v0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0, v2, v4}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to dump input method client in focused window: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    :cond_3
    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string p0, ""

    invoke-virtual {v9, p0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    if-eqz v13, :cond_4

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    :try_start_5
    iget-object p0, v13, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p0}, Lcom/android/internal/inputmethod/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0, v2, v4}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to dump input method service: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, p0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string/jumbo p0, "No input method service."

    invoke-virtual {v9, p0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    :goto_3
    return-void

    :goto_4
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :goto_5
    :try_start_7
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 11

    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v3, v1, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    const-wide v4, 0x10b00000003L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    iget-object v6, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    const-wide v7, 0x10900000001L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget v6, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    const-wide v7, 0x10500000002L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v6, v1, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-wide v7, 0x10900000003L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v6, v1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v8, v6, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerInternal;->getWindowName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v7

    const-wide v8, 0x10900000004L

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget v6, v6, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowSoftInputMode:I

    invoke-static {v6}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v6

    const-wide v7, 0x10900000006L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v9, v3, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mLastImeTargetWindow:Landroid/os/IBinder;

    invoke-virtual {v6, v9}, Lcom/android/server/wm/WindowManagerInternal;->getWindowName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v6

    const-wide v9, 0x10900000005L

    invoke-virtual {p1, v9, v10, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v6, v1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget v6, v6, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowSoftInputMode:I

    invoke-static {v6}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v6, v1, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v6, :cond_0

    const-wide v7, 0x10b00000007L

    invoke-virtual {v6, p1, v7, v8}, Landroid/view/inputmethod/EditorInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_0
    :goto_0
    iget-object v6, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    const-wide v7, 0x10900000008L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-boolean v6, v3, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedShowExplicitly:Z

    const-wide v7, 0x1080000000aL

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v6, v3, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    const-wide v7, 0x1080000000bL

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v6, v3, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    iget-boolean v6, v6, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mA11yRequestingNoSoftKeyboard:Z

    const-wide v7, 0x10800000018L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, v3, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    const-wide v6, 0x1080000000cL

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, v1, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    const-wide v6, 0x1080000000dL

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v3, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-wide v6, 0x1090000000eL

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget v3, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    const-wide v6, 0x1050000000fL

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    const-wide v6, 0x10800000010L

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasMainConnection:Z

    const-wide v6, 0x10800000012L

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v1, v1, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    const-wide v6, 0x10800000013L

    invoke-virtual {p1, v6, v7, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    const-wide v6, 0x10800000014L

    invoke-virtual {p1, v6, v7, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v1, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mBackDisposition:I

    const-wide v6, 0x10500000015L

    invoke-virtual {p1, v6, v7, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v1, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mImeWindowVis:I

    const-wide v2, 0x10500000016L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    iget-boolean v1, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mShowImeWithHardKeyboard:Z

    const-wide v2, 0x10800000017L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    const-wide v1, 0x10800000019L

    invoke-virtual {p1, v1, v2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInputMethodSession;->finishSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "InputMethodManagerService"

    const-string/jumbo v3, "Session failed to close due to remote exception"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget v2, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mBackDisposition:I

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    :goto_0
    iput-object v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    :cond_0
    iget-object p0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mChannel:Landroid/view/InputChannel;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    iput-object v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mChannel:Landroid/view/InputChannel;

    :cond_1
    return-void
.end method

.method public final getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;
    .locals 1

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    return-object p0
.end method

.method public final getEnabledInputMethodListInternal(II)Ljava/util/List;
    .locals 7

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v4

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda18;

    const/4 v5, 0x1

    move-object v1, p0

    move v3, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/server/inputmethod/InputMethodSettings;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-static {v6}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getAuxilaryRemoveList(Ljava/util/List;)V

    return-object v6
.end method

.method public final getInputMethodListInternal(III)Ljava/util/List;
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mRawInputMethodMap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/RawInputMethodMap;

    invoke-static {p1}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v2

    iget-object v0, v0, Lcom/android/server/inputmethod/UserData;->mIsUnlockingOrUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {v1, v2, p2, v0}, Lcom/android/server/inputmethod/RawInputMethodMap;->toInputMethodMap(Lcom/android/server/inputmethod/AdditionalSubtypeMap;IZ)Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object p2

    new-instance v4, Lcom/android/server/inputmethod/InputMethodSettings;

    invoke-direct {v4, p2, p1}, Lcom/android/server/inputmethod/InputMethodSettings;-><init>(Lcom/android/server/inputmethod/InputMethodMap;I)V

    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, v4, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodList:Ljava/util/List;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda18;

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p1

    move v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/server/inputmethod/InputMethodSettings;I)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getAuxilaryRemoveList(Ljava/util/List;)V

    return-object p2
.end method

.method public final getInputMethodNavButtonFlagsLocked(Lcom/android/server/inputmethod/UserData;)I
    .locals 5

    iget v0, p1, Lcom/android/server/inputmethod/UserData;->mUserId:I

    iget-object v1, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget v1, v1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerInternal;->hasNavigationBar(I)Z

    move-result v1

    iget-object p1, p1, Lcom/android/server/inputmethod/UserData;->mImeDrawsNavBar:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    move p1, v4

    :goto_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeSwitcherLocked(II)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v4, 0x2

    :cond_2
    or-int p0, p1, v4

    return p0
.end method

.method public final getTargetInputMethodSubtypeId()I
    .locals 3

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p0

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    const-string/jumbo v1, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getLastSubtypeForInputMethodInternal(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIndexFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    const-string v1, "HashCode for subtype looks broken: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final getUserData(I)Lcom/android/server/inputmethod/UserData;
    .locals 3

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string/jumbo v0, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    if-eqz v0, :cond_3

    const-string/jumbo v0, "UserDataRepo"

    const-string/jumbo v1, "sparseArray map userId: "

    invoke-static {p1, v1, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    move p1, v2

    :cond_4
    iget-object v0, p0, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Lcom/android/server/inputmethod/ImmutableSparseArray;

    iget-object v0, v0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/UserData;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Lcom/android/server/inputmethod/UserData;

    iget-object v1, p0, Lcom/android/server/inputmethod/UserDataRepository;->mBindingControllerFactory:Ljava/util/function/IntFunction;

    invoke-interface {v1, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v2, p0, Lcom/android/server/inputmethod/UserDataRepository;->mVisibilityStateComputerFactory:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;

    invoke-virtual {v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;->apply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/inputmethod/UserData;-><init>(ILcom/android/server/inputmethod/InputMethodBindingController;Lcom/android/server/inputmethod/ImeVisibilityStateComputer;)V

    iget-object v1, p0, Lcom/android/server/inputmethod/UserDataRepository;->mMutationLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithPutOrSelf(ILjava/lang/Object;)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Lcom/android/server/inputmethod/ImmutableSparseArray;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getVisibilityApplierLocked()Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    return-object p0
.end method

.method public final handleDictation(Z)Z
    .locals 3

    const-string/jumbo v0, "keyCode"

    const/16 v1, 0x44f

    invoke-static {v1, v0}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p1

    const-string/jumbo v1, "needRestoreIME"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "editorInfo"

    iget-object p1, p1, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/server/inputmethod/InputMethodManagerService;->DICTATION:Landroid/net/Uri;

    const-string/jumbo v1, "handle_dictation_for_hw_voice_key"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "dictation_executed"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 13

    const-string/jumbo v0, "MSG_SHOW_AGAIN_IM_PICKER, imList is empty, showAuxSubtypes: "

    const-string v1, "Failed to start handwriting session for requestId: "

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    return v5

    :sswitch_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    :cond_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    if-eqz p0, :cond_1a

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Landroid/media/AudioManagerInternal;->setInputMethodServiceUid(I)V

    return v6

    :sswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    return v6

    :sswitch_2
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v6, :cond_1

    move p1, v6

    goto :goto_0

    :cond_1
    move p1, v5

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchInSelectDialogView:Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v6

    goto :goto_1

    :cond_2
    move v2, v5

    :goto_1
    if-eqz v2, :cond_4

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchInSelectDialogView:Landroid/view/View;

    const v2, 0x102036c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_4
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    array-length v1, v0

    :goto_3
    if-ge v5, v1, :cond_5

    aget v2, v0, v5

    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked(Lcom/android/server/inputmethod/UserData;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    monitor-exit p1

    return v6

    :catchall_1
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :goto_4
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :sswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_6

    move p1, v6

    goto :goto_5

    :cond_6
    move p1, v5

    :goto_5
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v2

    iget-object v7, v2, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    if-eqz p1, :cond_7

    iget v8, v7, Lcom/android/server/inputmethod/InputMethodBindingController;->mImeWindowVis:I

    goto :goto_6

    :cond_7
    move v8, v5

    :goto_6
    iget v9, v7, Lcom/android/server/inputmethod/InputMethodBindingController;->mBackDisposition:I

    invoke-virtual {p0, v8, v9, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    iget-object v8, v2, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-nez v8, :cond_8

    monitor-exit v1

    return v6

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto/16 :goto_a

    :cond_8
    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImePlatformCompatUtils:Lcom/android/server/inputmethod/ImePlatformCompatUtils;

    iget v7, v7, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v8, v8, Lcom/android/server/inputmethod/ImePlatformCompatUtils;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    const-wide/32 v9, 0x94fa793

    invoke-interface {v8, v9, v10, v7}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByUid(JI)Z

    move-result v7
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_7

    :catch_0
    move v7, v5

    :goto_7
    if-eqz v7, :cond_d

    :try_start_5
    iget-object v7, v2, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    iget-object v8, v2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v8, v8, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    iget-object v9, v7, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v9, v8}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    if-eqz v8, :cond_9

    iget-boolean v8, v8, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    if-eqz v8, :cond_9

    iget-boolean v8, v7, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    if-eqz v8, :cond_9

    if-nez p1, :cond_9

    iput-boolean v6, v7, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedImeScreenshot:Z

    new-instance p1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/4 v4, 0x4

    const/16 v5, 0x22

    invoke-direct {p1, v4, v5}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    goto :goto_8

    :cond_9
    if-eqz p1, :cond_a

    iget-boolean p1, v7, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedImeScreenshot:Z

    if-eqz p1, :cond_a

    iput-boolean v5, v7, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedImeScreenshot:Z

    new-instance p1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/16 v5, 0x23

    invoke-direct {p1, v4, v5}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    goto :goto_8

    :cond_a
    move-object p1, v3

    :goto_8
    if-eqz p1, :cond_b

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    iget-object v5, v2, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v5, v5, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    iget p1, p1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->mState:I

    invoke-virtual {v4, v5, v3, p1, v0}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->applyImeVisibility(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;II)V

    :cond_b
    iget-object p1, v2, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object p1, p1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    iget-boolean v0, v2, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    iget-boolean v2, p1, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_c

    :try_start_6
    iget-object p1, p1, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {p1, p0, v0}, Lcom/android/internal/inputmethod/IInputMethodClient;->setInteractive(ZZ)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_9

    :catch_1
    move-exception v0

    move-object p0, v0

    :try_start_7
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    goto :goto_9

    :cond_c
    new-instance v2, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda2;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p0, v0, v3}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;ZZI)V

    iget-object p0, p1, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9

    :cond_d
    iget-object p1, v2, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object p1, p1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    iget-boolean v0, v2, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    invoke-virtual {p1, p0, v0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setActive(ZZ)V

    :goto_9
    monitor-exit v1

    goto/16 :goto_1a

    :goto_a
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0

    :sswitch_4
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    :try_start_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {p0, v0, v2, p1, v5}, Lcom/android/server/inputmethod/HandwritingModeController;->prepareStylusHandwritingDelegation(ILjava/lang/String;Ljava/lang/String;Z)V

    monitor-exit v1

    return v6

    :catchall_3
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p0

    :sswitch_5
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz p0, :cond_e

    :try_start_a
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p0}, Lcom/android/internal/inputmethod/IInputMethod;->removeStylusHandwritingWindow()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_b

    :catch_2
    move-exception v0

    move-object p0, v0

    :try_start_b
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :cond_e
    :goto_b
    monitor-exit p1

    goto/16 :goto_1a

    :catchall_4
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw p0

    :sswitch_6
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v2

    :try_start_c
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->getCurrentRequestId()Ljava/util/OptionalInt;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    if-eqz p0, :cond_f

    :try_start_d
    iget-object p0, p1, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p0}, Lcom/android/internal/inputmethod/IInputMethod;->finishStylusHandwriting()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_c

    :catch_3
    move-exception v0

    move-object p0, v0

    :try_start_e
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    goto :goto_c

    :catchall_5
    move-exception v0

    move-object p0, v0

    goto :goto_d

    :cond_f
    :goto_c
    monitor-exit v2

    goto/16 :goto_1a

    :goto_d
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw p0

    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;

    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v2

    :try_start_f
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->userData:Lcom/android/server/inputmethod/UserData;

    iget-object v4, v3, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v5, v4, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    if-eqz v5, :cond_12

    iget-object v3, v3, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v3, v3, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    if-nez v3, :cond_10

    goto :goto_f

    :cond_10
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    iget v8, v0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->requestId:I

    iget v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$HandwritingRequest;->pid:I

    iget v4, v4, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    invoke-virtual {v7, v8, v0, v4, v3}, Lcom/android/server/inputmethod/HandwritingModeController;->startHandwritingSession(IIILandroid/os/IBinder;)Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;

    move-result-object v0

    if-nez v0, :cond_11

    const-string p0, "InputMethodManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return v6

    :catchall_6
    move-exception v0

    move-object p0, v0

    goto :goto_10

    :cond_11
    iget p1, v0, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->mRequestId:I

    iget-object v1, v0, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->mHandwritingChannel:Landroid/view/InputChannel;

    iget-object v0, v0, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->mRecordedEvents:Ljava/util/List;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :try_start_10
    iget-object v3, v5, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {v3, p1, v1, v0}, Lcom/android/internal/inputmethod/IInputMethod;->startStylusHandwriting(ILandroid/view/InputChannel;Ljava/util/List;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    goto :goto_e

    :catch_4
    move-exception v0

    move-object p1, v0

    :try_start_11
    invoke-static {p1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    const-string p1, "InputMethodManagerService"

    const-string/jumbo v0, "Resetting handwriting mode."

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleResetStylusHandwriting()V

    :goto_e
    monitor-exit v2

    goto/16 :goto_1a

    :cond_12
    :goto_f
    monitor-exit v2

    return v6

    :goto_10
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    throw p0

    :sswitch_8
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    :try_start_12
    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-boolean v0, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsStylusHw:Z

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-eqz v0, :cond_13

    move v0, v6

    goto :goto_11

    :cond_13
    move v0, v5

    :goto_11
    if-eqz v0, :cond_14

    const-string v0, "InputMethodManagerService"

    const-string v2, "Initializing Handwriting Spy"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    iget p1, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/HandwritingModeController;->initializeHandwritingSpy(I)V

    goto :goto_12

    :catchall_7
    move-exception v0

    move-object p0, v0

    goto :goto_13

    :cond_14
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {p0, v5}, Lcom/android/server/inputmethod/HandwritingModeController;->reset(Z)V

    :goto_12
    monitor-exit v1

    return v6

    :goto_13
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    throw p0

    :sswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/IBinder;

    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    :try_start_13
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromWindowLocked(Landroid/os/IBinder;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    :try_start_14
    iget-object v0, p0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v0, v0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    if-ne p1, v0, :cond_15

    iget-object p0, p0, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz p0, :cond_15

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    if-eqz p0, :cond_15

    invoke-interface {p0}, Lcom/android/internal/inputmethod/IInputMethodSession;->removeImeSurface()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    goto :goto_14

    :catchall_8
    move-exception v0

    move-object p0, v0

    goto :goto_15

    :catch_5
    :cond_15
    :goto_14
    :try_start_15
    monitor-exit v1

    goto/16 :goto_1a

    :goto_15
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    throw p0

    :sswitch_a
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    :try_start_16
    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    :try_start_17
    iget-object v2, v0, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz v2, :cond_16

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    if-eqz v2, :cond_16

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->isShowRequestedForCurrentWindow(I)Z

    move-result p0

    if-nez p0, :cond_16

    iget-object p0, v0, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    invoke-interface {p0}, Lcom/android/internal/inputmethod/IInputMethodSession;->removeImeSurface()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    goto :goto_16

    :catchall_9
    move-exception v0

    move-object p0, v0

    goto :goto_17

    :catch_6
    :cond_16
    :goto_16
    :try_start_18
    monitor-exit v1

    goto/16 :goto_1a

    :goto_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    throw p0

    :sswitch_b
    iget p1, p1, Landroid/os/Message;->arg2:I

    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    :try_start_19
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromDisplayIdLocked(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    invoke-static {v5, p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    monitor-exit v1

    return v6

    :catchall_a
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    throw p0

    :sswitch_c
    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget v0, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mImeWindowVis:I

    iget p1, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mBackDisposition:I

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    return v6

    :sswitch_d
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1a

    const-string p1, "InputMethodManagerService"

    const-string/jumbo v1, "MSG_SHOW_AGAIN_IM_PICKER"

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_17
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    :try_start_1a
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget v3, v1, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardSecure(I)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v6

    goto :goto_18

    :catchall_b
    move-exception v0

    move-object p0, v0

    goto :goto_19

    :cond_18
    move v2, v5

    :goto_18
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethodSubtypeIndex(Ljava/lang/String;)I

    move-result v10

    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentShowAuxSubtypes:Z

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v6, v4, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeList(ZZZLandroid/content/Context;Lcom/android/server/inputmethod/InputMethodSettings;)Ljava/util/List;

    move-result-object v12

    move-object v3, v12

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentShowAuxSubtypes:Z

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " isScreenLocked: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " userId: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v1, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1

    return v5

    :cond_19
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    iget v9, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentDisplayId:I

    iget v11, v1, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/inputmethod/InputMethodMenuController;->showInputMethodMenuLocked(Ljava/lang/String;IIILjava/util/List;)V

    monitor-exit p1

    return v6

    :goto_19
    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    throw p0

    :cond_1a
    :goto_1a
    return v6

    nop

    :sswitch_data_0
    .sparse-switch
        0x3ff -> :sswitch_d
        0x402 -> :sswitch_c
        0x40b -> :sswitch_b
        0x424 -> :sswitch_a
        0x425 -> :sswitch_9
        0x442 -> :sswitch_8
        0x44c -> :sswitch_7
        0x456 -> :sswitch_6
        0x460 -> :sswitch_5
        0x46a -> :sswitch_4
        0xbd6 -> :sswitch_3
        0xfa0 -> :sswitch_2
        0x1392 -> :sswitch_1
        0x1b58 -> :sswitch_0
    .end sparse-switch
.end method

.method public final handleShellCommandEnableDisableInputMethodInternalLocked(ILjava/lang/String;ZLjava/io/PrintWriter;Ljava/io/PrintWriter;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    if-eqz p3, :cond_0

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "Unknown input method "

    invoke-virtual {p5, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, " cannot be enabled for user #"

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "\"ime enable "

    const-string p3, "\" for user #"

    const-string p4, " failed due to its unrecognized IME ID."

    invoke-static {p1, p0, p2, p3, p4}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputMethodManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(ILjava/lang/String;Z)Z

    move-result p0

    const-string p5, "Input method "

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, ": "

    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-ne p3, p0, :cond_1

    const-string/jumbo p0, "already "

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "now "

    :goto_0
    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const-string/jumbo p0, "enabled"

    goto :goto_1

    :cond_2
    const-string/jumbo p0, "disabled"

    :goto_1
    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, " for user #"

    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/io/PrintWriter;->println(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final hideCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;II)Z
    .locals 14

    move-object/from16 v4, p2

    move-object/from16 v0, p4

    move/from16 v5, p6

    invoke-virtual {p0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v6

    and-int/lit8 v1, p3, 0x1

    const/4 v7, 0x0

    iget-object v8, v6, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    if-eqz v1, :cond_1

    iget-boolean v1, v8, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedShowExplicitly:Z

    if-nez v1, :cond_0

    iget-boolean v1, v8, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    if-eqz v1, :cond_1

    :cond_0
    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VIS_STATE_COMPUTER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string/jumbo v0, "Not hiding: explicit show not cancelled by non-explicit hide"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    const/4 v0, 0x6

    invoke-interface {p0, v4, v0}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return v7

    :cond_1
    iget-boolean v1, v8, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    const/4 v3, 0x7

    if-eqz v1, :cond_2

    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_2

    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VIS_STATE_COMPUTER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string/jumbo v0, "Not hiding: forced show not cancelled by not-always hide"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, v4, v3}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return v7

    :cond_2
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, v4, v3}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    iget-object v9, v6, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v1, v9, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    if-eqz v1, :cond_4

    iget-boolean v1, v8, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    const/4 v3, 0x1

    if-nez v1, :cond_3

    iget v1, v9, Lcom/android/server/inputmethod/InputMethodBindingController;->mImeWindowVis:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_4

    :cond_3
    move v10, v3

    goto :goto_0

    :cond_4
    move v10, v7

    :goto_0
    invoke-virtual {v8, p1, v7}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->requestImeVisibility(Landroid/os/IBinder;Z)V

    const/16 v1, 0xa

    if-eqz v10, :cond_7

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    invoke-interface {v3, v4, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    iget-object v1, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1

    iget-object v3, v1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    if-eqz v3, :cond_8

    sget-object v11, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VISIBILITY_APPLIER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-static/range {p5 .. p5}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v12

    filled-new-array {v3, p1, v0, v12}, [Ljava/lang/Object;

    move-result-object v12

    const-string v13, "Calling %s.hideSoftInput(0, %s, %s) for reason: %s"

    invoke-static {v11, v13, v12}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v11, 0x4d

    :try_start_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v12

    invoke-interface {v12, v4, v11}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    iget-object v3, v3, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {v3, p1, v4, v7, v0}, Lcom/android/internal/inputmethod/IInputMethod;->hideSoftInput(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    sget-boolean v0, Landroid/view/inputmethod/ImeTracker;->DEBUG_IME_VISIBILITY:Z

    if-eqz v0, :cond_6

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/view/inputmethod/ImeTracker$Token;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "TOKEN_NONE"

    :goto_1
    iget-object v3, v1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v3, v3, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p5 .. p5}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v1, v1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowSoftInputMode:I

    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v3, v11, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7d02

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_6
    iget-object v0, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v1, 0x0

    move-object v2, p1

    move/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->onShowHideSoftInputRequested(ZLandroid/os/IBinder;ILandroid/view/inputmethod/ImeTracker$Token;I)V

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, v4, v11}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    goto :goto_2

    :cond_7
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, v4, v1}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "hideCurrentInputLocked : canceled, shouldHideSoftInput="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mInputShown="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v8, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mImeWindowVis="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v9, Lcom/android/server/inputmethod/InputMethodBindingController;->mImeWindowVis:I

    const-string v1, "InputMethodManagerService"

    invoke-static {p0, v0, v1}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_8
    :goto_2
    iget-boolean p0, v9, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    if-eqz p0, :cond_9

    iget-object p0, v9, Lcom/android/server/inputmethod/InputMethodBindingController;->mContext:Landroid/content/Context;

    iget-object v0, v9, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleConnection:Lcom/android/server/inputmethod/InputMethodBindingController$1;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v7, v9, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    :cond_9
    iput-boolean v7, v8, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedShowExplicitly:Z

    iput-boolean v7, v8, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    iput-boolean v7, v8, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    iget-object v0, v6, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    const/16 v1, 0x8

    invoke-interface {p0, v0, v1}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    const/4 p0, 0x0

    iput-object p0, v6, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    return v10
.end method

.method public final hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z
    .locals 11

    const-string p2, "InputMethodManagerService"

    const-string/jumbo v0, "hideSoftInput"

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object p2

    const-string v0, "InputMethodManagerService#hideSoftInput"

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/server/inputmethod/InputMethodManagerService$1;

    invoke-virtual {p2, v0, v1}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V

    const-class p2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p2

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-interface {p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/ClientController;->getClient(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ClientState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v0, v0, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result v0

    :cond_0
    :goto_0
    move v5, v0

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    goto :goto_0

    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    iget-object v1, v1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget-object v1, v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {v1}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object/from16 v3, p5

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :cond_3
    :goto_2
    const/16 v1, 0x40

    move/from16 v2, p6

    if-ne v2, v1, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v9, 0x20

    :try_start_1
    const-string p1, "IMMS.hideSoftInput"

    invoke-static {v9, v10, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string p1, "InputMethodManagerService"

    const-string v1, "Client requesting force input be hidden"

    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, v0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v1, p1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    move-object v0, p0

    move v3, p4

    move-object/from16 v4, p5

    move v6, v5

    move v5, v2

    move-object v2, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;II)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit p2

    return p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :goto_3
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideSoftInputLocked(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/view/inputmethod/ImeTracker$Token;Landroid/os/ResultReceiver;II)Z

    move-result p1

    if-nez p1, :cond_5

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    xor-int/lit8 p0, p0, 0x1

    const/4 p3, 0x0

    invoke-virtual {v3, p0, p3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_5
    :goto_4
    monitor-exit p2

    return p1

    :goto_5
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final hideSoftInputLocked(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/view/inputmethod/ImeTracker$Token;Landroid/os/ResultReceiver;II)Z
    .locals 7

    invoke-virtual {p0, p5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    const-string/jumbo v4, "hideSoftInput"

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move v2, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Landroid/view/inputmethod/ImeTracker$Token;I)Z

    move-result p0

    const/4 p1, 0x3

    const/4 p2, 0x0

    iget-object p4, v0, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    if-nez p0, :cond_1

    iget-boolean p0, p4, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, v5, p1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return p2

    :cond_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, v5, p1}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return p2

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const-wide/16 v3, 0x20

    :try_start_0
    const-string p0, "IMMS.hideSoftInput"

    invoke-static {v3, v4, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string p5, "Client requesting input be hidden"

    new-array v6, p2, [Ljava/lang/Object;

    invoke-static {p0, p5, v6}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p0, p4, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    invoke-static {p2, v0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    move-result p4

    if-eqz p4, :cond_4

    const/4 p2, 0x1

    if-eqz p3, :cond_3

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move p1, p2

    :goto_0
    const/4 p0, 0x0

    invoke-virtual {p3, p1, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return p2

    :cond_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return p2

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final hideStatusBarIconLocked(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerService$2;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final initializeImeLocked(Lcom/android/server/inputmethod/IInputMethodInvoker;Landroid/os/IBinder;Lcom/android/server/inputmethod/InputMethodBindingController;)V
    .locals 3

    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    iget v1, p3, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "Sending attach of token: %s for display: %s"

    invoke-static {v0, v2, v1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p3, p3, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p3

    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Lcom/android/server/inputmethod/UserData;)V

    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodNavButtonFlagsLocked(Lcom/android/server/inputmethod/UserData;)I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/android/internal/inputmethod/IInputMethod$InitParams;

    invoke-direct {p3}, Lcom/android/internal/inputmethod/IInputMethod$InitParams;-><init>()V

    iput-object p2, p3, Lcom/android/internal/inputmethod/IInputMethod$InitParams;->token:Landroid/os/IBinder;

    iput-object v0, p3, Lcom/android/internal/inputmethod/IInputMethod$InitParams;->privilegedOperations:Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    iput p0, p3, Lcom/android/internal/inputmethod/IInputMethod$InitParams;->navigationBarFlags:I

    :try_start_0
    iget-object p0, p1, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p0, p3}, Lcom/android/internal/inputmethod/IInputMethod;->initializeInternal(Lcom/android/internal/inputmethod/IInputMethod$InitParams;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    return-void
.end method

.method public final isAccessoryKeyboard()I
    .locals 7

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSamsungIMMSHWKeyboard:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    iget v1, v0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    and-int/lit8 v4, v1, -0x49

    if-nez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    const-string/jumbo v5, "isAccessoryKeyboard "

    const-string v6, "InputMethodManagerService"

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->isPogoBackfolded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_3

    :cond_1
    const-string v0, ", PogoKeyboard connectedOnly="

    invoke-static {v1, v5, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSamsungIMMSHWKeyboard:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    iget v1, v1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    if-eqz v1, :cond_2

    and-int/lit8 v1, v1, -0x49

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", backfolded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSamsungIMMSHWKeyboard:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->isPogoBackfolded()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0, p0, v6}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return v2

    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    if-nez v1, :cond_4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->checkBlocklistUsbKeyboardConnected()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_4
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final isCurrentInputMethodAsSamsungKeyboard()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isHoneyboardInstalled()Z
    .locals 2

    sget-object v0, Lcom/android/server/inputmethod/InputMethodManagerService;->FEATURE_CONFIG_SIP:Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.honeyboard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isInputMethodShown()Z
    .locals 2

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mImeWindowVis:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isInputMethodShown: isShown="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final isInstalledInputMethod(Ljava/lang/String;)Z
    .locals 4

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final isShowRequestedForCurrentWindow(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    iget-object p1, p0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object p1, p1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    iget-object p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isStylusHandwritingEnabled(Landroid/content/Context;I)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "stylus_handwriting_enabled"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public final notifyInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 2

    const-class v0, Lcom/android/server/input/InputManagerService$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService$LocalService;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->isSuitableForPhysicalKeyboardLayoutMapping()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    if-eqz p3, :cond_1

    invoke-static {p2, p3}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->of(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    move-result-object v0

    :cond_1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/input/InputManagerService$LocalService;->onInputMethodSubtypeChangedForKeyboardLayoutMapping(ILcom/android/internal/inputmethod/InputMethodSubtypeHandle;Landroid/view/inputmethod/InputMethodSubtype;)V

    :cond_2
    return-void
.end method

.method public final notifyInputMethodSubtypeChangedLocked(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "notifyInputMethodSubtypeChangedLocked: callers="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xa

    const-string v2, "InputMethodManagerService"

    invoke-static {v1, v0, v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->isSuitableForPhysicalKeyboardLayoutMapping()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p3, v0

    :goto_0
    if-eqz p3, :cond_2

    invoke-static {p2, p3}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->of(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    move-result-object v0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p2

    invoke-static {v0, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iput-object v1, p2, Lcom/android/server/inputmethod/UserData;->mSubtypeForKeyboardLayoutMapping:Landroid/util/Pair;

    iget p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    if-eq p1, p2, :cond_3

    return-void

    :cond_3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/input/InputManagerService$LocalService;->onInputMethodSubtypeChangedForKeyboardLayoutMapping(ILcom/android/internal/inputmethod/InputMethodSubtypeHandle;Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void
.end method

.method public final onSecureSettingsChangedLocked(ILjava/lang/String;)V
    .locals 7

    const-string/jumbo v0, "enabled_input_methods"

    const/4 v1, 0x3

    const-string/jumbo v2, "accessibility_soft_keyboard_mode"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "show_ime_with_hard_keyboard"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "selected_input_method_subtype"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_3
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    move v5, v1

    goto :goto_0

    :sswitch_4
    const-string/jumbo v6, "default_input_method"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_5
    const-string/jumbo v6, "stylus_handwriting_enabled"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    move v5, v3

    goto :goto_0

    :sswitch_6
    const-string/jumbo v6, "sip_keyboard_type_mouse_id_list"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    move v5, v4

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    if-ne p1, p2, :cond_a

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodMenuController;->updateKeyboardFromSettingsLocked(I)V

    return-void

    :pswitch_1
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v2, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    iget-object v2, v0, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    iget-object v5, v2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/2addr p2, v1

    if-ne p2, v3, :cond_7

    move p2, v3

    goto :goto_1

    :cond_7
    move p2, v4

    :goto_1
    iput-boolean p2, v5, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mA11yRequestingNoSoftKeyboard:Z

    if-eqz p2, :cond_8

    iput-boolean v3, v5, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mPendingA11yRequestingHideKeyboard:Z

    :cond_8
    iget-object p2, v2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    iget-boolean p2, p2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mA11yRequestingNoSoftKeyboard:Z

    if-eqz p2, :cond_9

    const/16 p2, 0x10

    invoke-virtual {p0, p2, p1, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(IIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p0

    invoke-static {v4, v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    return-void

    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->isShowRequestedForCurrentWindow(I)Z

    move-result p2

    if-eqz p2, :cond_a

    const/16 p2, 0x9

    invoke-virtual {p0, p2, p1, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(IIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p0

    invoke-static {v3, v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    :cond_a
    :goto_2
    return-void

    :pswitch_2
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p2

    const-string v1, ""

    iget p2, p2, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    invoke-static {v0, v1, p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mLastEnabledInputMethodsStr:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iput-object p2, v0, Lcom/android/server/inputmethod/UserData;->mLastEnabledInputMethodsStr:Ljava/lang/String;

    goto :goto_3

    :cond_b
    move v3, v4

    :goto_3
    invoke-virtual {p0, p1, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(IZ)V

    return-void

    :pswitch_3
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->invalidateLocalStylusHandwritingAvailabilityCaches()V

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->invalidateLocalConnectionlessStylusHandwritingAvailabilityCaches()V

    return-void

    :pswitch_4
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildKeyboardTypeMouseList(Landroid/content/Context;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70d4972a -> :sswitch_6
        -0x6cf7725e -> :sswitch_5
        -0x69f07bcc -> :sswitch_4
        0x15ab4237 -> :sswitch_3
        0x472be455 -> :sswitch_2
        0x685851c2 -> :sswitch_1
        0x7ebbf7bf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final onSessionCreated(Lcom/android/server/inputmethod/IInputMethodInvoker;Lcom/android/internal/inputmethod/IInputMethodSession;Landroid/view/InputChannel;I)V
    .locals 11

    const-string v1, "IMMS.onSessionCreated"

    const-wide/16 v7, 0x20

    invoke-static {v7, v8, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    const-class v9, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Landroid/view/InputChannel;->dispose()V

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_2
    invoke-virtual {p0, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v10

    iget-object v1, v10, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    iget-object v1, v1, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {v1}, Lcom/android/internal/inputmethod/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {v2}, Lcom/android/internal/inputmethod/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_3

    iget-object v1, v10, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/inputmethod/ClientState;->mSessionRequested:Z

    iget-object v2, v10, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;-><init>(Lcom/android/server/inputmethod/ClientState;Lcom/android/server/inputmethod/IInputMethodInvoker;Lcom/android/internal/inputmethod/IInputMethodSession;Landroid/view/InputChannel;I)V

    iput-object v1, v2, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-virtual {p0, v2, p4, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewInputLocked(IIZ)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v3

    invoke-virtual {p0, v2, p4, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewAccessibilityLocked(IIZ)V

    iget-object v0, v3, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/inputmethod/IInputMethodSession;

    if-eqz v0, :cond_2

    iget-object v0, v10, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v0, v0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget-boolean v1, v0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onBindMethodInternal(Lcom/android/internal/inputmethod/InputBindResult;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, v3}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/InputBindResult;)V

    iget-object v0, v0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_3
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p3}, Landroid/view/InputChannel;->dispose()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_2

    :goto_1
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_2
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public final onShowHideSoftInputRequested(ZLandroid/os/IBinder;ILandroid/view/inputmethod/ImeTracker$Token;I)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v13, p5

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_DISCRETE:Z

    if-eqz v0, :cond_2

    const-string v2, "InputMethodManagerService"

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMinRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "display"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    :cond_0
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mRefreshRateToken:Landroid/os/IBinder;

    const/16 v4, 0x78

    invoke-interface {v0, v3, v4, v2}, Landroid/hardware/display/IDisplayManager;->acquireRefreshRateMinLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMinRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMinRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMinRefreshRateTokenRelease:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda4;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMinRefreshRateTokenRelease:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda4;

    const-wide/16 v3, 0x5dc

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "acquireMinRefreshRateToken() failed"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    invoke-virtual {v1, v13}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    iget-object v2, v0, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    move-object/from16 v3, p2

    invoke-virtual {v2, v13, v3}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getWindowTokenFrom(ILandroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v5, v0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v5, v5, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    iget v3, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    move/from16 v6, p1

    invoke-virtual {v4, v6, v5, v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->onToggleImeRequested(ZLandroid/os/IBinder;Landroid/os/IBinder;I)Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;

    move-result-object v14

    iget-object v15, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSoftInputShowHideHistory:Lcom/android/server/inputmethod/SoftInputShowHideHistory;

    new-instance v2, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;

    iget-object v3, v0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v4, v3, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    move-object v5, v4

    iget-object v4, v3, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowEditorInfo:Landroid/view/inputmethod/EditorInfo;

    move-object v6, v5

    iget-object v5, v14, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->focusedWindowName:Ljava/lang/String;

    iget v3, v3, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowSoftInputMode:I

    iget-boolean v8, v0, Lcom/android/server/inputmethod/UserData;->mInFullscreenMode:Z

    iget-object v9, v14, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->requestWindowName:Ljava/lang/String;

    iget-object v10, v14, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->imeControlTargetName:Ljava/lang/String;

    iget-object v11, v14, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->imeLayerTargetName:Ljava/lang/String;

    iget-object v12, v14, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->imeSurfaceParentName:Ljava/lang/String;

    move-object v7, v6

    move v6, v3

    move-object v3, v7

    move/from16 v7, p3

    invoke-direct/range {v2 .. v13}, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;-><init>(Lcom/android/server/inputmethod/ClientState;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget v0, v15, Lcom/android/server/inputmethod/SoftInputShowHideHistory;->mNextIndex:I

    iget-object v3, v15, Lcom/android/server/inputmethod/SoftInputShowHideHistory;->mEntries:[Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    array-length v2, v3

    rem-int/2addr v0, v2

    iput v0, v15, Lcom/android/server/inputmethod/SoftInputShowHideHistory;->mNextIndex:I

    if-eqz p4, :cond_4

    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTrackerService:Lcom/android/server/inputmethod/ImeTrackerService;

    iget-object v1, v14, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->requestWindowName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v0, v0, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-virtual/range {p4 .. p4}, Landroid/view/inputmethod/ImeTracker$Token;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v0, v0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mLiveEntries:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    if-nez v0, :cond_3

    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    iput-object v1, v0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mRequestWindowName:Ljava/lang/String;

    monitor-exit v2

    goto :goto_3

    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :goto_3
    return-void
.end method

.method public final onUnbindCurrentMethodByReset(I)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    iget-object v2, v0, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    iget-object v3, v2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    if-nez v1, :cond_0

    iget-boolean v1, v2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    if-nez v1, :cond_0

    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(IIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    iget-object v0, v0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v0, v0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->applyImeVisibility(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;II)V

    :cond_0
    return-void
.end method

.method public final onUserReadyLocked(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "default_input_method"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v3

    sget-boolean v4, Lcom/samsung/android/rune/ViewRune;->SUPPORT_WRITING_TOOLKIT:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "com.samsung.android.honeyboard/com.samsung.android.writingtoolkit.service.FakeHoneyBoardService"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3, v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getLastSubtypeForInputMethodInternal(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onUserReadyLocked: restore last ime before toolkitHbd="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const-string v6, "InputMethodManagerService"

    invoke-static {v4, v5, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->postInputMethodSettingUpdatedLocked(IZ)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(IZ)V

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodMenuController;->updateKeyboardFromSettingsLocked(I)V

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v3, v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    return-void
.end method

.method public final postInputMethodSettingUpdatedLocked(IZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    sget-object v3, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "--- re-buildInputMethodList reset = %s \n ------ caller=%s"

    invoke-static {v3, v5, v4}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    const-string v4, "InputMethodManagerService"

    if-nez v3, :cond_0

    const-string/jumbo v0, "buildInputMethodListLocked is not allowed until system is ready"

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v3

    iget v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-static {v5}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    iget-object v6, v5, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    const-string/jumbo v7, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {v0, v6, v7, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(ILjava/lang/String;Z)Z

    :cond_1
    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    const-string/jumbo v6, "com.samsung.android.honeyboard/com.samsung.android.writingtoolkit.service.FakeHoneyBoardService"

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/samsung/android/rune/ViewRune;->SUPPORT_WRITING_TOOLKIT:Z

    iget v8, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {v0, v8, v6, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(ILjava/lang/String;Z)Z

    :cond_2
    iget-object v5, v3, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    const/4 v6, 0x0

    const-string v8, ""

    const/4 v9, 0x0

    if-nez p2, :cond_7

    invoke-virtual {v3, v9}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v12, v6

    move v13, v12

    :goto_0
    if-ge v12, v11, :cond_5

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v2

    iget-object v2, v5, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v15}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v2

    if-nez v2, :cond_3

    move/from16 v2, v16

    move v13, v2

    goto :goto_1

    :cond_3
    move/from16 v13, v16

    :cond_4
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v16

    goto :goto_0

    :cond_5
    move/from16 v16, v2

    move v2, v6

    :goto_1
    if-nez v13, :cond_6

    sget-object v2, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v10, "All the enabled IMEs are gone. Reset default enabled IMEs."

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {v2, v10, v11}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(ILjava/lang/String;)V

    move v10, v6

    move/from16 v2, v16

    goto :goto_2

    :cond_6
    if-nez v2, :cond_8

    sget-object v2, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v10, "All the enabled non-Aux IMEs are gone. Do partial reset."

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {v2, v10, v11}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v2, p2

    move/from16 v10, v16

    goto :goto_2

    :cond_7
    move/from16 v16, v2

    :cond_8
    move/from16 v2, p2

    move v10, v6

    :goto_2
    if-nez v2, :cond_9

    if-eqz v10, :cond_b

    :cond_9
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v11, v3, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodList:Ljava/util/List;

    invoke-static {v2, v11, v10}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v6

    :goto_3
    if-ge v11, v10, :cond_b

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    sget-object v13, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v14, "--- enable ime = %s"

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "--- enable ime = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v9}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v13

    if-eqz v13, :cond_a

    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    move/from16 v13, v16

    goto :goto_4

    :cond_a
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v12

    move/from16 v13, v16

    invoke-virtual {v0, v1, v12, v13}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(ILjava/lang/String;Z)Z

    :goto_4
    add-int/2addr v11, v13

    move/from16 v16, v13

    goto :goto_3

    :cond_b
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v2, "Default IME is uninstalled. Choose new default IME."

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked(I)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v13, 0x1

    invoke-virtual {v0, v1, v13}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(IZ)V

    goto :goto_5

    :cond_c
    const/4 v13, 0x1

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(ILjava/lang/String;Z)Z

    :cond_d
    :goto_5
    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const v5, 0x104002e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v5, v2, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    const-string/jumbo v7, "default_voice_input_method"

    invoke-static {v7, v9, v5}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget-object v10, Lcom/android/server/inputmethod/InputMethodInfoUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_e

    goto/16 :goto_9

    :cond_e
    iget-object v10, v2, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    invoke-virtual {v10, v5}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v11

    if-eqz v11, :cond_f

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    move-object v9, v11

    goto :goto_9

    :cond_f
    iget-object v11, v10, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    move v12, v6

    move-object v13, v9

    :goto_6
    if-ge v12, v11, :cond_13

    iget-object v14, v10, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v15

    if-nez v15, :cond_10

    goto :goto_7

    :cond_10
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_11

    :goto_7
    const/16 v16, 0x1

    goto :goto_8

    :cond_11
    if-eqz v13, :cond_12

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "At most one InputMethodService can be published in systemSpeechRecognizer: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Ignoring all of them."

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v10, "InputMethodInfoUtils"

    invoke-static {v10, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_12
    move-object v13, v14

    goto :goto_7

    :goto_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_13
    move-object v9, v13

    :goto_9
    if-nez v9, :cond_14

    sget-object v4, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v9, "Found no valid default Voice IME. If the user is still locked, this may be expected."

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v4, v9, v10}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16

    invoke-virtual {v2, v7, v8}, Lcom/android/server/inputmethod/InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_14
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_a

    :cond_15
    sget-object v4, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v9, v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v8, "Enabling the default Voice IME: %s userId: %s"

    invoke-static {v4, v8, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x1

    invoke-virtual {v0, v1, v4, v13}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(ILjava/lang/String;Z)Z

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v7, v4}, Lcom/android/server/inputmethod/InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    :goto_a
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v5, v2, Lcom/android/server/inputmethod/UserData;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v6, v6, v4, v3}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeList(ZZZLandroid/content/Context;Lcom/android/server/inputmethod/InputMethodSettings;)Ljava/util/List;

    move-result-object v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v4, v7}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->update(Ljava/util/List;Ljava/util/List;)V

    iget-object v4, v2, Lcom/android/server/inputmethod/UserData;->mHardwareKeyboardShortcutController:Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;

    invoke-virtual {v4, v3}, Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;->update(Lcom/android/server/inputmethod/InputMethodSettings;)V

    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked(Lcom/android/server/inputmethod/UserData;)V

    iget-object v2, v3, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodList:Ljava/util/List;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1392

    invoke-virtual {v0, v3, v1, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final registerDeviceListenerAndCheckStylusSupport()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    invoke-virtual {v0, v5}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/view/InputDevice;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->isStylusDevice(Landroid/view/InputDevice;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, v5}, Landroid/util/IntArray;->add(I)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v2

    if-lez v2, :cond_2

    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v2

    :try_start_0
    new-instance v3, Landroid/util/IntArray;

    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    invoke-virtual {v3, v1}, Landroid/util/IntArray;->addAll(Landroid/util/IntArray;)V

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$4;

    invoke-direct {v1, p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$4;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/hardware/input/InputManager;)V

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final registerSamsungAdditionalReceivers()V
    .locals 11

    const-string/jumbo v0, "com.sec.android.inputmethod.Subtype"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;

    const/4 v0, 0x3

    invoke-direct {v2, v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    const/4 v6, 0x2

    const-string/jumbo v4, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "VZW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string/jumbo v1, "VPP"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;

    const/4 v4, 0x4

    invoke-direct {v3, v4, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    const-string/jumbo v4, "com.sec.android.settings.permission.SOFT_RESET"

    invoke-virtual {v1, v3, v0, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "universal_switch_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUniversalSwitchChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "access_control_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlEnableChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;

    invoke-virtual {v0, v1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "access_control_keyboard_block"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlKeyboardEnableChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SwitchControlChangeObserver;

    invoke-virtual {v0, v1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    new-instance v1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput v4, v1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    iput v4, v1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I

    iput v4, v1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCountOld:I

    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSamsungIMMSHWKeyboard:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.sec.android.sidesync.action.PSS_KEYBOARD"

    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v7

    new-instance v6, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;

    const/4 v3, 0x1

    invoke-direct {v6, v1, v3}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;-><init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V

    const-string/jumbo v8, "com.sec.android.permission.SIDESYNC_RECEIVER_PERMISSION"

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.android.sidesync.action.KMS_KEYBOARD"

    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v7

    new-instance v6, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;

    const/4 v3, 0x0

    invoke-direct {v6, v1, v3}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;-><init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V

    const-string/jumbo v8, "com.sec.android.permission.SIDESYNC_RECEIVER_PERMISSION"

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const-string/jumbo v3, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    const-string/jumbo v4, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-static {v3, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v3

    new-instance v4, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;

    const/4 v6, 0x2

    invoke-direct {v4, v1, v6}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;-><init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V

    const-string/jumbo v6, "android.permission.MANAGE_USB"

    invoke-virtual {v5, v4, v3, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v3, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;

    invoke-direct {v3, v1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;-><init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    invoke-virtual {v5, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "com.samsung.android.input.POGO_KEYBOARD_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v3, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;

    invoke-direct {v3, v1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;-><init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    const/4 v1, 0x2

    invoke-virtual {v5, v3, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object v1, v3, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    if-eqz v1, :cond_2

    iget-object v2, v3, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->mCallbacks:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver$1;

    iput-object v2, v1, Lcom/android/server/input/InputManagerService;->mInputMethodManagerCallbacks:Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;

    :cond_2
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSamsungIMMSHWKeyboard:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    iput-object v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mHardKeyboardStatusChangeListener:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;

    return-void
.end method

.method public final removeStylusDeviceIdLocked(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->remove(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Stylus deviceId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " removed."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InputMethodManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/inputmethod/HandwritingModeController;->reset(Z)V

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x460

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final requestClientSessionLocked(Lcom/android/server/inputmethod/ClientState;I)V
    .locals 3

    iget-boolean v0, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequested:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v1, "Creating new session for client %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Creating new session for client "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/server/inputmethod/ClientState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iput-boolean v2, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequested:Z

    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$2;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService$2;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/IInputMethodInvoker;Landroid/view/InputChannel;I)V

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p1, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p0, v0, v2}, Lcom/android/internal/inputmethod/IInputMethod;->createSession(Landroid/view/InputChannel;Lcom/android/internal/inputmethod/IInputMethodSessionCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    :cond_0
    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public final resetDefaultImeLocked(Landroid/content/Context;I)V
    .locals 4

    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    invoke-virtual {v2, v0}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "InputMethodManagerService"

    const-string/jumbo p1, "No default found"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodInfo;

    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Default found, using %s"

    invoke-static {v0, v3, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZI)V

    return-void
.end method

.method public final resetSelectedInputMethodAndSubtypeLocked(ILjava/lang/String;)V
    .locals 8

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mDisplayIdToShowIme:I

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mDeviceIdToShowIme:I

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    invoke-virtual {v4, p2}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "resetSelectedInputMethodAndSubtypeLocked settings.getMethodMap() size : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "InputMethodManagerService"

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "resetSelectedInputMethodAndSubtypeLocked imi : "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v5, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, p2}, Lcom/android/server/inputmethod/InputMethodSettings;->getLastSubtypeForInputMethodInternal(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    :cond_1
    if-eqz v3, :cond_2

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {v5, p2}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIndexFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "HashCode for subtype looks broken: "

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    invoke-virtual {p0, v5, v1, v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZI)V

    return-void
.end method

.method public final resolveImeUserIdFromDisplayIdLocked(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    return p0
.end method

.method public final resolveImeUserIdFromWindowLocked(Landroid/os/IBinder;)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->getDisplayIdForWindow(Landroid/os/IBinder;)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    return p0
.end method

.method public final resolveImeUserIdLocked(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-eqz v0, :cond_0

    return p1

    :cond_0
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    return p0
.end method

.method public final scheduleResetStylusHandwriting()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x442

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final scheduleSwitchUserTaskLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V
    .locals 3

    const-string/jumbo v0, "scheduleSwitchUserTaskLocked: userId="

    const-string v1, "InputMethodManagerService"

    invoke-static {p1, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mToUserId:I

    if-ne v1, p1, :cond_0

    iput-object p2, v0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mClientToBeReset:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIoHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(IIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIoHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendOnNavButtonFlagsChangedLocked(Lcom/android/server/inputmethod/UserData;)V
    .locals 1

    iget-object v0, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodNavButtonFlagsLocked(Lcom/android/server/inputmethod/UserData;)I

    move-result p0

    :try_start_0
    iget-object p1, v0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p1, p0}, Lcom/android/internal/inputmethod/IInputMethod;->onNavButtonFlagsChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public final setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 4

    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    invoke-virtual {v2, v1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result p1

    invoke-static {v2, p1}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIndexFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(IIILjava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setInputMethodEnabledLocked(ILjava/lang/String;Z)Z
    .locals 17

    move-object/from16 v0, p2

    invoke-static/range {p1 .. p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v1

    const-string v2, ""

    const-string/jumbo v3, "enabled_input_methods"

    const/4 v4, 0x0

    iget v5, v1, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    const/16 v6, 0x3a

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz p3, :cond_4

    invoke-static {v3, v2, v5}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    new-instance v9, Ljava/util/StringJoiner;

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v6}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Lcom/android/server/inputmethod/InputMethodUtils$$ExternalSyntheticLambda0;

    invoke-direct {v6, v5}, Lcom/android/server/inputmethod/InputMethodUtils$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArraySet;)V

    invoke-static {v2, v6}, Lcom/android/server/inputmethod/InputMethodUtils;->splitEnabledImeStr(Ljava/lang/String;Ljava/util/function/Consumer;)V

    invoke-virtual {v9, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_0
    aget-object v0, v0, v7

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v9, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v9}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v3, v4}, Lcom/android/server/inputmethod/InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_3
    invoke-virtual {v1, v3, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_4
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsAndSubtypeList()Ljava/util/List;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move v11, v7

    move v12, v11

    move v13, v12

    :goto_0
    move-object v14, v9

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v11, v15, :cond_8

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    iget-object v15, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    move v12, v8

    :cond_5
    move/from16 v16, v7

    goto :goto_3

    :cond_6
    if-eqz v13, :cond_7

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    move v13, v8

    :goto_1
    iget-object v15, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v15, v7

    :goto_2
    iget-object v6, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v15, v6, :cond_5

    iget-object v6, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move/from16 v16, v7

    const/16 v7, 0x3b

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    move/from16 v7, v16

    goto :goto_2

    :goto_3
    add-int/lit8 v11, v11, 0x1

    move/from16 v7, v16

    const/16 v6, 0x3a

    goto :goto_0

    :cond_8
    move/from16 v16, v7

    if-eqz v12, :cond_a

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v1, v3, v4}, Lcom/android/server/inputmethod/InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    invoke-virtual {v1, v3, v6}, Lcom/android/server/inputmethod/InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_4
    if-eqz v12, :cond_e

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget v3, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mDeviceIdToShowIme:I

    if-nez v3, :cond_b

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked(I)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "InputMethodManagerService"

    const-string v1, "Can\'t find new IME, unsetting the current input method."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(ILjava/lang/String;)V

    return v8

    :cond_b
    const-string/jumbo v2, "default_device_input_method"

    invoke-static {v2, v4, v5}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v1, v4}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    :goto_5
    invoke-virtual {v1, v4}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V

    :cond_d
    :goto_6
    return v8

    :cond_e
    return v16
.end method

.method public final setInputMethodLocked(IIILjava/lang/String;)V
    .locals 9

    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    invoke-virtual {v1, p4}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v3, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    iget v5, v0, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result p2

    if-gtz p2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p3, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->notifyInputMethodSubtypeChangedLocked(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void

    :cond_0
    iget-object p4, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-ltz p1, :cond_1

    if-ge p1, p2, :cond_1

    invoke-virtual {v1, p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p2

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p1

    if-eqz p1, :cond_3

    move v0, v4

    :goto_0
    if-ge v0, p2, :cond_3

    invoke-virtual {v1, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object p2, p1

    move p1, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, -0x1

    move v8, p2

    move-object p2, p1

    move p1, v8

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "subtype state: oldSubtype = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " newSubtype = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " force = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsNeedUpdateSubtypeForLocaleChanged:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", intent received : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSubTypeIntentReceived:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "InputMethodManagerService"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2, p4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsNeedUpdateSubtypeForLocaleChanged:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSubTypeIntentReceived:Z

    if-eqz v0, :cond_7

    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v1, p1, v0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZI)V

    iget-object p1, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    if-eqz p1, :cond_5

    iget v0, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mImeWindowVis:I

    iget v2, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mBackDisposition:I

    invoke-virtual {p0, v0, v2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    :try_start_0
    iget-object p1, p1, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p1, p2}, Lcom/android/internal/inputmethod/IInputMethod;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :cond_5
    :goto_2
    invoke-virtual {p0, v5, v1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->notifyInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    iget-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsNeedUpdateSubtypeForLocaleChanged:Z

    if-eqz p1, :cond_6

    if-ne p2, p4, :cond_6

    iput-boolean v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsNeedUpdateSubtypeForLocaleChanged:Z

    :cond_6
    iput-boolean v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSubTypeIntentReceived:Z

    :cond_7
    return-void

    :cond_8
    iget v3, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mDeviceIdToShowIme:I

    if-eqz v3, :cond_9

    if-nez p2, :cond_9

    invoke-virtual {v0, p4}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V

    return-void

    :cond_9
    iget-object p2, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    if-eqz p2, :cond_a

    :try_start_1
    iget-object p2, p2, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p2}, Lcom/android/internal/inputmethod/IInputMethod;->removeStylusHandwritingWindow()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p2

    invoke-static {p2}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :cond_a
    :goto_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_2
    invoke-virtual {p0, v1, p1, v4, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZI)V

    iput-object p4, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo p2, "android.intent.action.INPUT_METHOD_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x20000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo p2, "input_method_id"

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object p4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p2, p1, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_b
    :goto_4
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object p1

    invoke-virtual {p0, v5, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->notifyInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void

    :goto_5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Unknown id: "

    invoke-static {p1, p4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setInputMethodWithSubtypeIndexLocked(IILjava/lang/String;)V
    .locals 3

    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    invoke-virtual {v1, p3}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda25;

    const/4 v2, 0x0

    invoke-direct {v1, p3, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda25;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "Requested IME is not enabled: "

    invoke-static {p1, p3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(IIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static/range {p4 .. p4}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v3

    move/from16 v4, p4

    invoke-virtual {v0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v5, v4, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    const-string/jumbo v7, "com.samsung.android.honeyboard/com.samsung.android.writingtoolkit.service.FakeHoneyBoardService"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    goto/16 :goto_6

    :cond_0
    sget-object v7, Lcom/android/server/inputmethod/InputMethodSettings;->INVALID_SUBTYPE_HASHCODE_STR:Ljava/lang/String;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_1
    move-object v9, v7

    :goto_0
    const/4 v10, 0x1

    if-nez v6, :cond_2

    move v6, v10

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v6

    xor-int/2addr v6, v10

    :goto_1
    if-eqz v6, :cond_a

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodSettings;->loadInputMethodAndSubtypeHistory()Ljava/util/List;

    move-result-object v6

    const/4 v11, 0x0

    move v12, v11

    :goto_2
    move-object v13, v6

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v12, v14, :cond_4

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    iget-object v15, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    const/16 v14, 0x3b

    if-nez v12, :cond_5

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v10

    goto :goto_4

    :cond_5
    move v5, v11

    :goto_4
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v11, v9, :cond_8

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v12, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_6

    move-object v9, v7

    :cond_6
    if-eqz v5, :cond_7

    const/16 v15, 0x3a

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_7
    move v5, v10

    :goto_5
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string/jumbo v7, "input_methods_subtype_history"

    if-eqz v6, :cond_9

    invoke-virtual {v3, v7, v8}, Lcom/android/server/inputmethod/InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    invoke-virtual {v3, v7, v5}, Lcom/android/server/inputmethod/InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_6
    const/4 v5, -0x1

    if-eqz v1, :cond_d

    if-gez v2, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v6

    if-ge v2, v6, :cond_c

    invoke-virtual/range {p1 .. p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v5

    goto :goto_7

    :cond_c
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v8

    :cond_d
    :goto_7
    iget v2, v3, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    invoke-static {v2}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->get(I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    move-result-object v6

    const-string/jumbo v7, "selected_input_method_subtype"

    invoke-interface {v6, v5, v7}, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;->putInt(ILjava/lang/String;)V

    iput-object v8, v4, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0, v2, v1, v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->notifyInputMethodSubtypeChangedLocked(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    if-nez p3, :cond_f

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_e
    const-string v0, ""

    :goto_8
    invoke-virtual {v3, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public final shouldShowImeSwitcherLocked(II)Z
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardSecure(I)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_4

    :cond_3
    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const/4 v4, 0x1

    const-string v5, "InputMethodManagerService"

    if-eqz v3, :cond_5

    iget-object v3, v3, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v6, "com.samsung.android.honeyboard"

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v2, v2, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "enableWritingComposer=true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    :goto_0
    if-nez v2, :cond_6

    const-string/jumbo v2, "isImeSwitcherDisabledPackage : true"

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    goto :goto_1

    :cond_5
    const-string/jumbo v2, "mCurEditorInfo is null"

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string/jumbo v2, "isImeSwitcherDisabledPackage : false"

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    :goto_1
    if-eqz v2, :cond_7

    goto/16 :goto_4

    :cond_7
    sget-boolean v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodSwitchDisable:Z

    if-eqz v2, :cond_8

    goto/16 :goto_4

    :cond_8
    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    if-nez v2, :cond_9

    goto/16 :goto_4

    :cond_9
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSemImmsUtil:Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;

    iget-object v3, v2, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v3, :cond_a

    iget-object v3, v2, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/KeyguardManager;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, v2, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mKeyguardManager:Landroid/app/KeyguardManager;

    :cond_a
    iget-object v2, v2, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v4

    goto :goto_2

    :cond_b
    move v2, v1

    :goto_2
    if-eqz v2, :cond_c

    goto/16 :goto_4

    :cond_c
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSemImmsUtil:Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;

    iget-object v3, v2, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v3, :cond_d

    iget-object v3, v2, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/KeyguardManager;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, v2, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mKeyguardManager:Landroid/app/KeyguardManager;

    :cond_d
    iget-object v3, v2, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v2, v2, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v2

    if-eqz v2, :cond_e

    move v2, v4

    goto :goto_3

    :cond_e
    move v2, v1

    :goto_3
    if-eqz v2, :cond_f

    goto :goto_4

    :cond_f
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_10

    goto :goto_4

    :cond_10
    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v2

    and-int/lit8 v3, p1, 0x3

    const/4 v6, 0x3

    if-eq v3, v6, :cond_11

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerInternal;->isHardKeyboardAvailable()Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_4

    :cond_11
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodSettings;->isShowKeyboardButton()Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_4

    :cond_12
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    const-string/jumbo v2, "com.samsung.android.honeyboard/com.samsung.android.writingtoolkit.service.FakeHoneyBoardService"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_4

    :cond_13
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerInternal;->isHardKeyboardAvailable()Z

    move-result p0

    if-eqz p0, :cond_14

    const-string/jumbo p0, "shouldShowImeSwitcherLocked isHardKeyboardAvailable return true"

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_14
    and-int/lit8 p0, p1, 0x2

    if-nez p0, :cond_15

    :goto_4
    return v1

    :cond_15
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "shouldShowImeSwitcherLocked : checking vis : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->hasMultipleSubtypesForSwitcher(I)Z

    move-result p0

    return p0
.end method

.method public final showCurrentInputInternal(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 12

    const-string v0, "IMMS.showCurrentInputInternal"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v3, "InputMethodManagerService#showSoftInput"

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/server/inputmethod/InputMethodManagerService$1;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V

    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdFromWindowLocked(Landroid/os/IBinder;)I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v4, "Client requesting input be shown"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v8, 0x1

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;III)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final showCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;III)Z
    .locals 14

    move-object/from16 v4, p2

    move/from16 v5, p5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ACCESS_CONTROL_ENABLED = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ACCESS_CONTROL_KEYBOARD_BLOCK = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    const-string v3, "InputMethodManagerService"

    invoke-static {v3, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlEnable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    if-eqz v0, :cond_0

    const-string p0, "Interaction Control Keyboard block is enabled, so not show keyboard"

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    iget-object v6, v0, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    iget-object v7, v6, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    iget-boolean v8, v7, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mA11yRequestingNoSoftKeyboard:Z

    const/4 v9, 0x4

    if-nez v8, :cond_11

    iget-boolean v8, v7, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mImeHiddenByDisplayPolicy:Z

    if-eqz v8, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v7

    invoke-interface {v7, v4, v9}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    const/4 v7, 0x1

    and-int/lit8 v8, p3, 0x1

    if-nez v8, :cond_2

    iput-boolean v7, v6, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedShowExplicitly:Z

    :cond_2
    iget-boolean v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    const/4 v9, 0x5

    if-nez v8, :cond_3

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, v4, v9}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    const-string/jumbo p0, "System is not Ready, so not show keyboard"

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    invoke-interface {v3, v4, v9}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    invoke-virtual {v6, p1, v7}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->requestImeVisibility(Landroid/os/IBinder;Z)V

    iget-object v3, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v8, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    if-eqz v8, :cond_4

    iget-boolean v8, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasMainConnection:Z

    if-eqz v8, :cond_6

    iget-boolean v8, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    if-nez v8, :cond_6

    iget-object v8, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleConnection:Lcom/android/server/inputmethod/InputMethodBindingController$1;

    const v9, 0x2c001001

    invoke-virtual {v3, v8, v9}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentInputMethodService(Landroid/content/ServiceConnection;I)Z

    move-result v8

    iput-boolean v8, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    goto :goto_0

    :cond_4
    iget-boolean v8, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasMainConnection:Z

    if-nez v8, :cond_5

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentMethod()Lcom/android/internal/inputmethod/InputBindResult;

    goto :goto_0

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mLastBindTime:J

    sub-long/2addr v8, v10

    const-string/jumbo v10, "setCurrentMethodVisible: bindingDuration="

    const-string v11, ", mLastBindTime="

    invoke-static {v10, v8, v9, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mLastBindTime:J

    const-string v13, "InputMethodBindingController"

    invoke-static {v10, v11, v12, v13}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    const-wide/16 v10, 0xbb8

    cmp-long v10, v8, v10

    if-ltz v10, :cond_6

    iget-object v10, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v10, v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0x7d00

    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const-string v8, "Force disconnect/connect to the IME in setCurrentMethodVisible()"

    invoke-static {v13, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mContext:Landroid/content/Context;

    iget-object v9, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mMainConnection:Lcom/android/server/inputmethod/InputMethodBindingController$2;

    invoke-virtual {v8, v9}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v1, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasMainConnection:Z

    iget v8, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mImeConnectionBindFlags:I

    invoke-virtual {v3, v9, v8}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentInputMethodService(Landroid/content/ServiceConnection;I)Z

    move-result v8

    iput-boolean v8, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasMainConnection:Z

    :cond_6
    :goto_0
    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    const/16 v10, 0x8

    invoke-interface {v8, v9, v10}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    if-eqz v3, :cond_10

    iget-object v3, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz v3, :cond_10

    iget-object v3, v3, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz v3, :cond_10

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    const/16 v8, 0x9

    invoke-interface {v3, v4, v8}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {v0}, Lcom/android/server/input/NativeInputManagerService;->getLastUsedInputDeviceId()I

    move-result v0

    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v9, Landroid/hardware/input/InputManager;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/input/InputManager;

    if-nez v8, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v8, v0}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isStylusDevice(Landroid/view/InputDevice;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v1, 0x2

    goto :goto_1

    :cond_9
    const/16 v8, 0x1002

    invoke-virtual {v0, v8}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move v1, v7

    :cond_a
    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    if-eqz v0, :cond_b

    :try_start_0
    iget-object v0, v0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {v0, v1}, Lcom/android/internal/inputmethod/IInputMethod;->updateEditorToolType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :cond_b
    :goto_2
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    iget-boolean v0, v6, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x3

    goto :goto_3

    :cond_c
    move v0, v7

    :goto_3
    iget-object v1, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1

    iget-object v8, v1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v8, v8, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    if-eqz v8, :cond_f

    sget-object v9, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VISIBILITY_APPLIER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {p4 .. p4}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v8, p1, v10, v3, v11}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "Calling %s.showSoftInput(%s, %s, %s) for reason: %s"

    invoke-static {v9, v11, v10}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v9, 0x4d

    :try_start_1
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v10

    invoke-interface {v10, v4, v9}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    iget-object v8, v8, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {v8, p1, v4, v0, v3}, Lcom/android/internal/inputmethod/IInputMethod;->showSoftInput(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    sget-boolean v0, Landroid/view/inputmethod/ImeTracker;->DEBUG_IME_VISIBILITY:Z

    if-eqz v0, :cond_e

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Landroid/view/inputmethod/ImeTracker$Token;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_d
    const-string/jumbo v0, "TOKEN_NONE"

    :goto_4
    iget-object v3, v1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v3, v3, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p4 .. p4}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v1, v1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowSoftInputMode:I

    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v3, v8, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7d01

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_e
    iget-object v0, p0, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v1, 0x1

    move-object v2, p1

    move/from16 v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->onShowHideSoftInputRequested(ZLandroid/os/IBinder;ILandroid/view/inputmethod/ImeTracker$Token;I)V

    goto :goto_5

    :catch_1
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, v4, v9}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :cond_f
    :goto_5
    iput-boolean v7, v6, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    return v7

    :cond_10
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, v4, v10}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    iput-object v4, v0, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    return v1

    :cond_11
    :goto_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onImeShowFlags: onFailed, A11yRequestingNoSoftKeyboard="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, v7, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mA11yRequestingNoSoftKeyboard:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mImeHiddenByDisplayPolicy="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v7, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mImeHiddenByDisplayPolicy:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, v4, v9}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return v1
.end method

.method public final showInputMethodPickerFromSystem(II)V
    .locals 9

    const-string/jumbo v0, "showInputMethodPickerFromSystem request display id : "

    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerService;->isInputMethodRestrictedByMDM()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz v1, :cond_1

    iget v1, v1, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    :goto_0
    move v6, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    sget-boolean v1, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    if-eqz v1, :cond_2

    const-string v1, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", current client display id : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSemImmsUtil:Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v6}, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->isNewDexDesktopDisplay(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;

    const/4 v8, 0x0

    move-object v4, p0

    move v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;IIII)V

    invoke-virtual {p2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v2

    return-void

    :cond_3
    move-object v4, p0

    move v5, p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda11;

    invoke-direct {p1, v4, p2, v5}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;II)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final showInputMethodPickerLocked(III)V
    .locals 10

    const/4 v0, 0x0

    const-string v1, "InputMethodManagerService"

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    const-string/jumbo p0, "Unknown subtype picker mode="

    invoke-static {p1, p0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    iget-boolean p1, p1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    :goto_0
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v4, p3}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardSecure(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    :cond_3
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethodSubtypeIndex(Ljava/lang/String;)I

    move-result v7

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v2, v4, v3}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeList(ZZZLandroid/content/Context;Lcom/android/server/inputmethod/InputMethodSettings;)Ljava/util/List;

    move-result-object v9

    move-object v2, v9

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo p0, "Show switching menu failed, imList is empty, showAuxSubtypes: "

    const-string p2, " isScreenLocked: "

    const-string v2, " userId: "

    invoke-static {p0, p1, p2, v0, v2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0, p3, v1}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_4
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentShowAuxSubtypes:Z

    iput p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentDisplayId:I

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    move v6, p2

    move v8, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/inputmethod/InputMethodMenuController;->showInputMethodMenuLocked(Ljava/lang/String;IIILjava/util/List;)V

    return-void
.end method

.method public final showSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)Z
    .locals 1

    const-wide/16 p4, 0x20

    const-string p2, "IMMS.showSoftInput"

    invoke-static {p4, p5, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object p2

    const-string p4, "InputMethodManagerService#showSoftInput"

    iget-object p5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/server/inputmethod/InputMethodManagerService$1;

    invoke-virtual {p2, p4, p5}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V

    const-class p2, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p2

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p7

    invoke-static {p7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p4

    iget-boolean p5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-eqz p5, :cond_1

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    invoke-interface {p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/android/server/inputmethod/ClientController;->getClient(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ClientState;

    move-result-object p4

    iget-object p5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget p4, p4, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    invoke-virtual {p5, p4}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result p4

    :cond_0
    :goto_0
    move-object p5, p3

    move p8, p4

    move-object p3, p0

    move-object p4, p1

    goto :goto_1

    :cond_1
    iget p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    goto :goto_0

    :goto_1
    invoke-virtual/range {p3 .. p8}, Lcom/android/server/inputmethod/InputMethodManagerService;->showSoftInputLocked(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/view/inputmethod/ImeTracker$Token;Landroid/os/ResultReceiver;II)Z

    move-result p0

    move p4, p8

    if-nez p0, :cond_3

    if-nez p6, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    iget-boolean p1, p1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    xor-int/lit8 p1, p1, 0x1

    const/4 p3, 0x0

    invoke-virtual {p6, p1, p3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_3
    :goto_2
    monitor-exit p2

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final showSoftInputLocked(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/view/inputmethod/ImeTracker$Token;Landroid/os/ResultReceiver;II)Z
    .locals 6

    const-string/jumbo v3, "showSoftInput"

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move v1, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Landroid/view/inputmethod/ImeTracker$Token;I)Z

    move-result p0

    const-wide/16 p1, 0x20

    const/4 p4, 0x0

    if-nez p0, :cond_0

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    const/4 p3, 0x3

    invoke-interface {p0, v4, p3}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    invoke-static {p1, p2}, Landroid/os/Trace;->traceEnd(J)V

    return p4

    :cond_0
    invoke-virtual {v0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    sget-object p5, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v0, "Client requesting input be shown"

    new-array v3, p4, [Ljava/lang/Object;

    invoke-static {p5, v0, v3}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p5, p0, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    iget-boolean p5, p5, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    invoke-static {p4, p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz p3, :cond_2

    if-eqz p5, :cond_1

    goto :goto_0

    :cond_1
    const/4 p4, 0x2

    :goto_0
    const/4 p0, 0x0

    invoke-virtual {p3, p4, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {p1, p2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    return p0

    :cond_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {p1, p2}, Landroid/os/Trace;->traceEnd(J)V

    return p4

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {p1, p2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final startInputOrWindowGainedFocusInternalLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;ILcom/android/server/inputmethod/InputMethodBindingController;Landroid/window/ImeOnBackInvokedDispatcher;Lcom/android/server/inputmethod/ClientState;Z)Lcom/android/internal/inputmethod/InputBindResult;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    sget-object v14, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static/range {p4 .. p4}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputFlagsToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p5 .. p5}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p14 .. p14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    move-object/from16 v5, p7

    move-object/from16 v4, p8

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    filled-new-array/range {v2 .. v13}, [Ljava/lang/Object;

    move-result-object v2

    move-object v9, v5

    const-string/jumbo v3, "startInputOrWindowGainedFocusInternalLocked: reason=%s client=%s inputContext=%s editorInfo=%s startInputFlags=%s softInputMode=%s windowFlags=#%s unverifiedTargetSdkVersion=%s bindingController=%s imeDispatcher=%s cs=%s imeRequestedVisible=%s"

    invoke-static {v14, v3, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    and-int/lit8 v11, p4, 0x2

    const-string v12, "InputMethodManagerService"

    if-eqz v11, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startInputOrWindowGainedFocusInternalLocked: reason="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " clientState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p13 .. p13}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " editorInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " startInputFlags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputFlagsToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " softInputMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " windowFlags=#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " sameWindowFocused="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {v0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v3, v3, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    if-ne v3, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v12, v2, v3}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_1
    iget v2, v10, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v3

    iget-object v4, v3, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v4, v4, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    if-ne v4, v1, :cond_2

    const/16 v16, 0x1

    goto :goto_1

    :cond_2
    const/16 v16, 0x0

    :goto_1
    if-eqz v11, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    and-int/lit8 v4, p4, 0x8

    if-eqz v4, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/view/inputmethod/EditorInfo;->getInitialToolType()I

    move-result v4

    move v5, v4

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    if-eqz v9, :cond_6

    iget-object v4, v9, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_6

    const-string/jumbo v6, "isTextEditor"

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_6
    move v4, v2

    new-instance v2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    xor-int/lit8 v6, v16, 0x1

    move-object v13, v3

    move/from16 v17, v4

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-direct/range {v2 .. v8}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;-><init>(IIIZZZ)V

    iget-object v4, v13, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    iget-object v5, v4, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    iget-object v6, v4, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    if-eqz v5, :cond_7

    if-eqz v7, :cond_7

    iget-boolean v5, v5, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    iput-boolean v5, v2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    goto :goto_5

    :cond_7
    iget v15, v4, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mUserId:I

    invoke-virtual {v6, v15}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v15

    iget-object v15, v15, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v15, v15, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    const-string/jumbo v0, "com.google.android.tts/com.google.android.apps.speech.tts.googletts.settings.asr.voiceime.VoiceInputMethodService"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v5, :cond_8

    if-eqz v7, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "setWindowState: for gvi, set requestedImeVisible="

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v15, v5, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    invoke-static {v12, v0, v15}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean v0, v5, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    iput-boolean v0, v2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    :cond_8
    :goto_5
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IME_VIS_STATE_COMPUTER_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v15, "setWindowStateInner, windowToken=%s, state=%s"

    invoke-static {v0, v15, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, v4, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v16, :cond_a

    if-eqz v7, :cond_a

    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p2

    filled-new-array {v2, v9, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "Window already focused, ignoring focus gain of: %s editorInfo=%s, token=%s, startInputReason=%s"

    invoke-static {v14, v1, v0}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    move/from16 v6, p1

    move/from16 v5, p4

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move/from16 v7, p10

    move-object/from16 v8, p12

    move-object/from16 v1, p13

    move-object v4, v9

    move-object v9, v10

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/ClientState;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/window/ImeOnBackInvokedDispatcher;Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Lcom/android/internal/inputmethod/InputBindResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object/from16 p0, v0

    move-object/from16 p4, v1

    move-object/from16 p5, v2

    move/from16 p1, v3

    move-object/from16 p2, v4

    move-object/from16 p3, v5

    move/from16 p6, v6

    move/from16 p7, v7

    invoke-direct/range {p0 .. p7}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V

    return-object v0

    :cond_a
    move-object/from16 v5, p0

    move-object/from16 v10, p13

    new-instance v14, Lcom/android/server/inputmethod/ImeBindingState;

    invoke-direct {v14, v1, v3, v10, v9}, Lcom/android/server/inputmethod/ImeBindingState;-><init>(Landroid/os/IBinder;ILcom/android/server/inputmethod/ClientState;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v14, v13, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v14, v5, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14, v1, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1c

    move/from16 v5, p10

    if-ge v5, v1, :cond_c

    :cond_b
    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_d

    :goto_6
    const/4 v1, 0x0

    goto :goto_7

    :cond_d
    if-nez v11, :cond_b

    goto :goto_6

    :goto_7
    and-int/lit8 v11, v3, 0xf

    and-int/lit16 v14, v3, 0xf0

    move/from16 p2, v1

    const/16 v1, 0x10

    const/4 v5, 0x3

    if-eq v14, v1, :cond_f

    iget-object v1, v6, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    goto :goto_9

    :cond_f
    :goto_8
    const/4 v1, 0x1

    :goto_9
    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_10

    const/4 v14, 0x1

    goto :goto_a

    :cond_10
    const/4 v14, 0x0

    :goto_a
    const/16 v18, 0x0

    if-eqz v7, :cond_14

    const/4 v5, 0x2

    if-eq v11, v5, :cond_12

    const/4 v5, 0x3

    if-eq v11, v5, :cond_11

    goto :goto_c

    :cond_11
    :goto_b
    const/4 v3, 0x0

    goto :goto_d

    :cond_12
    if-eqz v3, :cond_13

    goto :goto_b

    :cond_13
    :goto_c
    iget-object v3, v4, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v4, v2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getWindowTokenFrom(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowManagerInternal;->shouldRestoreImeVisibility(Landroid/os/IBinder;)Z

    move-result v3

    :goto_d
    if-eqz v3, :cond_14

    const-string/jumbo v1, "Will show input to restore visibility"

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    invoke-virtual {v4, v2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getWindowTokenFrom(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)Landroid/os/IBinder;

    move-result-object v1

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v15, v3}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v4, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/16 v1, 0x17

    const/4 v2, 0x7

    invoke-direct {v0, v2, v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    move-object v12, v0

    const/16 v11, 0xc

    const/4 v15, 0x1

    goto/16 :goto_13

    :cond_14
    const/4 v3, 0x5

    if-eqz v11, :cond_1b

    const/4 v15, 0x1

    if-eq v11, v15, :cond_1a

    const/4 v5, 0x2

    if-eq v11, v5, :cond_15

    const/4 v5, 0x3

    if-eq v11, v5, :cond_15

    const/4 v1, 0x4

    if-eq v11, v1, :cond_18

    if-eq v11, v3, :cond_16

    :cond_15
    :goto_e
    const/4 v5, 0x0

    const/16 v11, 0xc

    goto/16 :goto_12

    :cond_16
    const-string/jumbo v1, "Window asks to always show input"

    const/4 v5, 0x0

    new-array v11, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v11}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_17

    if-nez v16, :cond_15

    new-instance v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/16 v1, 0x8

    const/4 v2, 0x7

    invoke-direct {v0, v2, v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    :goto_f
    move-object v12, v0

    const/16 v11, 0xc

    goto/16 :goto_13

    :cond_17
    const-string/jumbo v1, "SOFT_INPUT_STATE_ALWAYS_VISIBLE is ignored because there is no focused view that also returns true from View#onCheckIsTextEditor()"

    invoke-static {v12, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_18
    if-eqz v14, :cond_15

    if-eqz p2, :cond_19

    const-string/jumbo v1, "Window asks to show input going forward"

    const/4 v3, 0x0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/4 v2, 0x7

    invoke-direct {v0, v2, v2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    goto :goto_f

    :cond_19
    const-string/jumbo v1, "SOFT_INPUT_STATE_VISIBLE is ignored because there is no focused view that also returns true from View#onCheckIsTextEditor()"

    invoke-static {v12, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_1a
    const-string/jumbo v1, "Window asks to unchanged"

    invoke-static {v12, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v4, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mLastImeTargetWindow:Landroid/os/IBinder;

    iget-object v5, v4, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    if-eqz v1, :cond_15

    iget-boolean v1, v1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    iput-boolean v1, v2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    goto :goto_e

    :cond_1b
    const/4 v15, 0x1

    if-nez v16, :cond_1c

    if-eqz v7, :cond_1d

    :cond_1c
    const/4 v5, 0x0

    const/16 v11, 0xc

    const/4 v12, 0x6

    goto :goto_11

    :cond_1d
    invoke-static/range {p6 .. p6}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string/jumbo v1, "Unspecified window will hide input"

    const/4 v5, 0x0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/16 v11, 0xc

    const/4 v12, 0x6

    invoke-direct {v0, v12, v11}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    :goto_10
    move-object v12, v0

    goto :goto_13

    :goto_11
    if-eqz v7, :cond_1e

    if-eqz v1, :cond_1e

    if-eqz v14, :cond_1e

    const-string/jumbo v1, "Unspecified window will show input"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/4 v2, 0x7

    invoke-direct {v0, v2, v12}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    goto :goto_10

    :cond_1e
    :goto_12
    if-eqz v16, :cond_1f

    if-eqz v8, :cond_1f

    const-string/jumbo v1, "Same window without editor will hide input"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/16 v1, 0x15

    invoke-direct {v0, v3, v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    goto :goto_10

    :cond_1f
    if-nez v7, :cond_21

    iget-boolean v1, v4, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    if-nez v1, :cond_20

    if-eqz p14, :cond_21

    :cond_20
    if-eqz v8, :cond_21

    iget-object v1, v6, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodDeviceConfigs:Lcom/android/server/inputmethod/InputMethodDeviceConfigs;

    iget-boolean v1, v1, Lcom/android/server/inputmethod/InputMethodDeviceConfigs;->mHideImeWhenNoEditorFocus:Z

    if-eqz v1, :cond_21

    const-string/jumbo v1, "Window without editor will hide input"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v6}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v5, v2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    new-instance v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    const/16 v1, 0x21

    invoke-direct {v0, v3, v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    goto :goto_10

    :cond_21
    move-object/from16 v12, v18

    :goto_13
    if-eqz v12, :cond_25

    iget v14, v12, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->mReason:I

    const/4 v0, 0x6

    if-eq v14, v0, :cond_22

    const/4 v2, 0x7

    if-eq v14, v2, :cond_22

    const/16 v1, 0x8

    if-eq v14, v1, :cond_22

    const/16 v1, 0x17

    if-eq v14, v1, :cond_22

    move-object/from16 v0, p0

    move-object/from16 v9, p11

    move-object v1, v10

    const/4 v2, 0x0

    const/4 v15, 0x0

    move-object v10, v4

    :goto_14
    move/from16 v4, v17

    goto :goto_15

    :cond_22
    move-object/from16 v0, p0

    if-eqz v9, :cond_23

    move/from16 v6, p1

    move/from16 v5, p4

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move/from16 v7, p10

    move-object/from16 v8, p12

    move-object v1, v10

    move-object v10, v4

    move-object v4, v9

    move-object/from16 v9, p11

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/ClientState;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/window/ImeOnBackInvokedDispatcher;Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v18

    move v2, v15

    goto :goto_14

    :cond_23
    move-object/from16 v9, p11

    move-object v1, v10

    move-object v10, v4

    move/from16 v4, v17

    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v14, v4, v15}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(IIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    iget-object v6, v13, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v6, v6, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    iget v7, v12, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->mState:I

    invoke-virtual {v5, v6, v3, v7, v4}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->applyImeVisibility(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;II)V

    if-ne v14, v11, :cond_24

    iget-object v3, v10, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mImeDisplayValidator:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;

    iget v4, v1, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->computeImeDisplayIdForTargetInner(ILcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;I)I

    move-result v3

    iget v4, v9, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    if-eq v3, v4, :cond_24

    invoke-virtual {v9}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    :cond_24
    move v15, v2

    goto :goto_16

    :cond_25
    move-object/from16 v0, p0

    move-object/from16 v9, p11

    move-object v1, v10

    const/4 v5, 0x0

    move v15, v5

    :goto_16
    if-nez v15, :cond_27

    if-eqz p7, :cond_26

    move/from16 v6, p1

    move/from16 v5, p4

    move-object/from16 v4, p7

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move/from16 v7, p10

    move-object/from16 v8, p12

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/ClientState;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/window/ImeOnBackInvokedDispatcher;Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    return-object v0

    :cond_26
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NULL_EDITOR_INFO:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v0

    :cond_27
    return-object v18
.end method

.method public final startInputUncheckedLocked(Lcom/android/server/inputmethod/ClientState;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/window/ImeOnBackInvokedDispatcher;Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/internal/inputmethod/InputBindResult;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p9

    iget v8, v6, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    invoke-virtual {v1, v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v9

    iget-object v0, v9, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v0, v0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    iget-object v10, v9, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    iget-object v11, v10, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v11, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    if-nez v11, :cond_0

    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NOT_IME_TARGET_WINDOW:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v0

    :cond_0
    iget-object v12, v10, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v12, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v13, "android.hardware.type.automotive"

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iget v14, v2, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    const-string v15, "InputMethodManagerService"

    iget-object v7, v10, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mImeDisplayValidator:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_1

    iget-object v0, v10, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget v13, v10, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mUserId:I

    invoke-virtual {v0, v13}, Lcom/android/server/pm/UserManagerInternal;->isVisibleBackgroundFullUser(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v12, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, v13}, Lcom/android/server/pm/UserManagerInternal;->getMainDisplayAssignedToUser(I)I

    move-result v0

    invoke-static {v14, v7, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->computeImeDisplayIdForTargetInner(ILcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;I)I

    move-result v0

    goto/16 :goto_3

    :cond_1
    iget v0, v12, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {v12, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    const-string/jumbo v13, "com.android.cts.mockime/.MockIme"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v13, 0x0

    invoke-static {v14, v7, v13}, Lcom/android/server/inputmethod/InputMethodManagerService;->computeImeDisplayIdForTargetInner(ILcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;I)I

    move-result v0

    goto/16 :goto_3

    :cond_2
    iget-object v0, v12, Lcom/android/server/inputmethod/InputMethodManagerService;->mSemImmsUtil:Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;

    iget-object v13, v0, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mContext:Landroid/content/Context;

    invoke-static {v13, v14}, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->isNewDexDesktopDisplay(Landroid/content/Context;I)Z

    move-result v13

    move/from16 v18, v13

    iget-object v13, v0, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mWMS:Lcom/android/server/wm/WindowManagerService;

    if-eqz v18, :cond_5

    invoke-virtual {v13, v14}, Lcom/android/server/wm/WindowManagerService;->getDisplayImePolicy(I)I

    move-result v19

    if-nez v19, :cond_3

    invoke-virtual {v13, v14}, Lcom/android/server/wm/WindowManagerService;->isEligibleForDesktopMode(I)Z

    move-result v19

    if-nez v19, :cond_3

    goto :goto_0

    :cond_3
    iget-object v5, v0, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v4, "touch_keyboard"

    const/4 v3, 0x0

    invoke-static {v5, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0}, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->restorePreviousUsedInputMethod()V

    const/4 v3, 0x1

    invoke-virtual {v13, v14, v3}, Lcom/android/server/wm/WindowManagerService;->setDisplayImePolicy(II)V

    :cond_4
    :goto_0
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_5
    if-nez v14, :cond_6

    invoke-virtual {v0}, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->restorePreviousUsedInputMethod()V

    goto :goto_0

    :cond_6
    if-eqz v18, :cond_9

    iget-object v3, v0, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget v4, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->isHoneyboardInstalled()Z

    move-result v5

    move/from16 v19, v5

    const-string/jumbo v5, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    if-eqz v19, :cond_7

    iget-object v4, v4, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_1

    :cond_7
    iget-object v4, v0, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "com.sec.android.inputmethod.previous_inputmethod_dex"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget v0, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {v3, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->isHoneyboardInstalled()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v0, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    iget v0, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {v3, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->isHoneyboardInstalled()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v0, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :try_start_0
    iget v0, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethodSubtypeIndex(Ljava/lang/String;)I

    move-result v0

    iget v2, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_1
    if-eqz v18, :cond_4

    const/4 v3, 0x0

    invoke-virtual {v13, v14, v3}, Lcom/android/server/wm/WindowManagerService;->setDisplayImePolicy(II)V

    :goto_2
    invoke-static {v14, v7, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->computeImeDisplayIdForTargetInner(ILcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;I)I

    move-result v0

    iget-object v2, v12, Lcom/android/server/inputmethod/InputMethodManagerService;->mWMS:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "semComputeImeDisplayIdForTarget: displayToShowIme="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iput v0, v11, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mImeDisplayId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_a

    const/4 v3, 0x1

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    :goto_4
    iget-object v4, v10, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    iput-boolean v3, v4, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mImeHiddenByDisplayPolicy:Z

    iput v0, v6, Lcom/android/server/inputmethod/InputMethodBindingController;->mDisplayIdToShowIme:I

    iget-object v0, v6, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    const-class v5, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-nez v3, :cond_b

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iput-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    :cond_b
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-nez v3, :cond_c

    :goto_5
    const/4 v7, 0x0

    goto :goto_7

    :cond_c
    iget v3, v6, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v10

    invoke-virtual {v1, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget v11, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mDeviceIdToShowIme:I

    iget v12, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mDisplayIdToShowIme:I

    iget-object v13, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    check-cast v13, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;

    iget-object v13, v13, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    iget-object v13, v13, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    invoke-virtual {v13, v12}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->getDeviceIdForDisplayId(I)I

    move-result v13

    if-eqz v13, :cond_e

    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-nez v2, :cond_d

    const-class v2, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    :cond_d
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v2, v12}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    iget v2, v2, Landroid/view/DisplayInfo;->flags:I

    const/16 v7, 0x80

    and-int/2addr v2, v7

    if-eq v2, v7, :cond_e

    const/4 v13, 0x0

    :cond_e
    iput v13, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mDeviceIdToShowIme:I

    if-nez v13, :cond_10

    if-nez v11, :cond_f

    goto :goto_5

    :cond_f
    iget v2, v10, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    const-string/jumbo v3, "default_device_input_method"

    const/4 v7, 0x0

    invoke-static {v3, v7, v2}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string/jumbo v11, "Restoring default device input method: %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v3, v11, v12}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10, v7}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V

    :goto_6
    move-object/from16 v20, v5

    goto/16 :goto_8

    :cond_10
    const/4 v7, 0x0

    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDeviceMethodMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v13, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    :goto_7
    move-object v2, v0

    goto :goto_6

    :cond_11
    iget-object v7, v10, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    iget-object v7, v7, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    sget-object v7, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10, v2}, [Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v20, v5

    const-string v5, "Disabling IME on virtual device with id %s because its custom input method is not available: %s"

    invoke-static {v7, v5, v10}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "computeCurrentDeviceMethodIdLocked: disabling ime, newDeviceId="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", deviceMethodId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", oldDeviceId="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", displayIdToShowIme="

    const-string v7, ", curTokenDisplayId="

    invoke-static {v12, v2, v7, v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget v2, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mVirtualDeviceMethodMap="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDeviceMethodMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_8

    :cond_12
    move-object/from16 v20, v5

    if-nez v11, :cond_13

    sget-object v3, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string/jumbo v5, "Storing default device input method %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3, v5, v7}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V

    :cond_13
    sget-object v3, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v0, v2, v5, v7}, [Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v7, "Switching current input method from %s to device-specific one %s because the current display %s belongs to device with id %s"

    invoke-static {v3, v7, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_8
    if-nez v2, :cond_15

    if-nez v14, :cond_14

    const-string/jumbo v2, "startInputUncheckedLocked setImeHiddenByDisplayPolicy skip"

    invoke-static {v15, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_14
    const-string/jumbo v2, "startInputUncheckedLocked setImeHiddenByDisplayPolicy true, csDisplayId : "

    invoke-static {v14, v2, v15}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    iput-boolean v3, v4, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mImeHiddenByDisplayPolicy:Z

    goto :goto_9

    :cond_15
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    iget v0, v6, Lcom/android/server/inputmethod/InputMethodBindingController;->mDeviceIdToShowIme:I

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v0, v8, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(IIILjava/lang/String;)V

    move-object v0, v2

    :cond_16
    :goto_9
    iget-boolean v2, v4, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mImeHiddenByDisplayPolicy:Z

    if-eqz v2, :cond_17

    iget-object v0, v9, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v0, v0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v8, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(IIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 p2, v0

    move-object/from16 p1, v1

    move/from16 p6, v2

    move-object/from16 p3, v3

    move-object/from16 p5, v4

    move/from16 p4, v5

    move/from16 p7, v8

    invoke-virtual/range {p1 .. p7}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;II)Z

    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NO_IME:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v0

    :cond_17
    move v2, v8

    if-nez v0, :cond_18

    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NO_IME:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v0

    :cond_18
    iget-object v3, v9, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    move-object/from16 v4, p1

    if-eq v3, v4, :cond_19

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(II)V

    iget-boolean v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v5, :cond_1a

    iget-object v5, v4, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    const/4 v13, 0x0

    invoke-virtual {v5, v3, v13}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setActive(ZZ)V

    goto :goto_a

    :cond_19
    const/4 v3, 0x1

    :cond_1a
    :goto_a
    iget-object v5, v9, Lcom/android/server/inputmethod/UserData;->mCurInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    if-eqz v5, :cond_1b

    move v5, v3

    goto :goto_b

    :cond_1b
    const/4 v5, 0x0

    :goto_b
    iget v7, v6, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    add-int/2addr v7, v3

    iput v7, v6, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    if-gtz v7, :cond_1c

    iput v3, v6, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    :cond_1c
    iput-object v4, v9, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    move-object/from16 v3, p2

    iput-object v3, v9, Lcom/android/server/inputmethod/UserData;->mCurInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    move-object/from16 v7, p3

    iput-object v7, v9, Lcom/android/server/inputmethod/UserData;->mCurRemoteAccessibilityInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    move-object/from16 v7, p8

    iput-object v7, v9, Lcom/android/server/inputmethod/UserData;->mCurImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    iget-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-nez v7, :cond_1d

    invoke-static/range {v20 .. v20}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iput-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    :cond_1d
    iget-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-object/from16 v8, p4

    if-eqz v7, :cond_1e

    iget-object v10, v8, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    if-nez v10, :cond_1e

    iget v10, v4, Lcom/android/server/inputmethod/ClientState;->mUid:I

    invoke-virtual {v7, v10}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getPreferredLocaleListForUid(I)Landroid/os/LocaleList;

    move-result-object v7

    if-eqz v7, :cond_1e

    iput-object v7, v8, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    :cond_1e
    iput-object v8, v9, Lcom/android/server/inputmethod/UserData;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v7, v9, Lcom/android/server/inputmethod/UserData;->mCurInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    if-eqz v7, :cond_1f

    const/4 v7, 0x1

    goto :goto_c

    :cond_1f
    const/4 v7, 0x0

    :goto_c
    if-eq v7, v5, :cond_20

    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    iget-object v5, v5, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v5, v5, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {v5, v7}, Lcom/android/server/input/NativeInputManagerService;->setInputMethodConnectionIsActive(Z)V

    :cond_20
    sput-object v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputConnectionForKnox:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    iget v3, v8, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    sget-object v5, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "sys.datawedge.prop"

    const/4 v13, 0x0

    invoke-static {v5, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_22

    const-string/jumbo v5, "|"

    const/4 v8, 0x5

    if-nez v7, :cond_21

    sget-boolean v7, Lcom/android/server/DualAppManagerService;->isNullInputContextNotified:Z

    if-nez v7, :cond_22

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/server/DualAppManagerService;->lastResumedActivity:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x0

    invoke-static {v8, v13, v3}, Lcom/android/server/DualAppManagerService;->sendInternalMsg(IILjava/lang/Object;)V

    const/16 v16, 0x1

    sput-boolean v16, Lcom/android/server/DualAppManagerService;->isNullInputContextNotified:Z

    goto :goto_d

    :cond_21
    sget-boolean v7, Lcom/android/server/DualAppManagerService;->isNotNullInputContextNotified:Z

    if-nez v7, :cond_22

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/server/DualAppManagerService;->lastResumedActivity:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v8, v5, v3}, Lcom/android/server/DualAppManagerService;->sendInternalMsg(IILjava/lang/Object;)V

    sput-boolean v5, Lcom/android/server/DualAppManagerService;->isNotNullInputContextNotified:Z

    sput-boolean v5, Lcom/android/server/DualAppManagerService;->isNullInputContextNotified:Z

    :cond_22
    :goto_d
    iget-boolean v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mPreventImeStartupUnlessTextEditor:Z

    if-nez v3, :cond_23

    :goto_e
    const/16 v16, 0x1

    goto :goto_10

    :cond_23
    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->isShowRequestedForCurrentWindow(I)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_e

    :cond_24
    const/16 v3, 0x1c

    move/from16 v5, p7

    if-ge v5, v3, :cond_25

    goto :goto_e

    :cond_25
    const/16 v16, 0x1

    and-int/lit8 v3, p5, 0x1

    if-nez v3, :cond_26

    goto :goto_f

    :cond_26
    and-int/lit8 v3, p5, 0x2

    if-nez v3, :cond_2a

    :goto_f
    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    invoke-virtual {v3, v0}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    if-nez v0, :cond_27

    goto :goto_10

    :cond_27
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mNonPreemptibleInputMethods:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_10

    :cond_28
    sget-object v0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v1, "Avoiding IME startup and unbinding current input method."

    const/4 v13, 0x0

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v6, Lcom/android/server/inputmethod/InputMethodBindingController;->mAutofillController:Lcom/android/server/inputmethod/AutofillSuggestionsController;

    iget-object v0, v0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mInlineSuggestionsRequestCallback:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->onInlineSuggestionsSessionInvalidated()V

    :cond_29
    invoke-virtual {v6}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NO_EDITOR:Lcom/android/internal/inputmethod/InputBindResult;

    return-object v0

    :cond_2a
    :goto_10
    iget-object v0, v6, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    iget v3, v6, Lcom/android/server/inputmethod/InputMethodBindingController;->mDisplayIdToShowIme:I

    if-eqz v0, :cond_31

    iget-object v5, v6, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget v0, v6, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    if-ne v3, v0, :cond_31

    iget-object v0, v4, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz v0, :cond_2d

    const/4 v13, 0x0

    iput-boolean v13, v4, Lcom/android/server/inputmethod/ClientState;->mSessionRequestedForAccessibility:Z

    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V

    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_2b

    move/from16 v13, v16

    :goto_11
    move/from16 v5, p6

    goto :goto_12

    :cond_2b
    const/4 v13, 0x0

    goto :goto_11

    :goto_12
    invoke-virtual {v1, v5, v2, v13}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewAccessibilityLocked(IIZ)V

    if-eqz v0, :cond_2c

    move/from16 v7, v16

    goto :goto_13

    :cond_2c
    const/4 v7, 0x0

    :goto_13
    invoke-virtual {v1, v5, v2, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewInputLocked(IIZ)Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    return-object v0

    :cond_2d
    iget-boolean v0, v6, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasMainConnection:Z

    if-eqz v0, :cond_30

    iget-object v0, v6, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    if-eqz v0, :cond_2e

    new-instance v0, Lcom/android/internal/inputmethod/InputBindResult;

    iget-object v1, v6, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    iget v2, v6, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 p0, v0

    move-object/from16 p5, v1

    move/from16 p6, v2

    move-object/from16 p2, v3

    move/from16 p7, v4

    move/from16 p1, v5

    move-object/from16 p3, v7

    move-object/from16 p4, v8

    invoke-direct/range {p0 .. p7}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V

    :goto_14
    move-object/from16 v7, p0

    goto :goto_15

    :cond_2e
    iget-wide v0, v6, Lcom/android/server/inputmethod/InputMethodBindingController;->mLastBindTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0xbb8

    cmp-long v0, v2, v0

    if-gez v0, :cond_2f

    new-instance v0, Lcom/android/internal/inputmethod/InputBindResult;

    iget-object v1, v6, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    iget v2, v6, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 p0, v0

    move-object/from16 p5, v1

    move/from16 p6, v2

    move-object/from16 p2, v3

    move/from16 p7, v4

    move/from16 p1, v5

    move-object/from16 p3, v7

    move-object/from16 p4, v8

    invoke-direct/range {p0 .. p7}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V

    goto :goto_14

    :cond_2f
    iget-object v0, v6, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7d00

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_30
    const/4 v7, 0x0

    :goto_15
    if-eqz v7, :cond_31

    return-object v7

    :cond_31
    invoke-virtual {v6}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    invoke-virtual {v6}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentMethod()Lcom/android/internal/inputmethod/InputBindResult;

    move-result-object v0

    return-object v0
.end method

.method public final startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ZLcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;Landroid/view/inputmethod/CursorAnchorInfo;Z)Z
    .locals 11

    const-string v0, "IMMS.startStylusHandwriting"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v3, "InputMethodManagerService#startStylusHandwriting"

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/server/inputmethod/InputMethodManagerService$1;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resolveImeUserIdLocked(I)I

    move-result v10

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {p2}, Lcom/android/server/inputmethod/HandwritingModeController;->clearPendingHandwritingDelegation()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :cond_0
    :goto_0
    const-string/jumbo v8, "startStylusHandwriting"

    const/4 v9, 0x0

    move-object v5, p0

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Landroid/view/inputmethod/ImeTracker$Token;I)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p2

    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result p1

    if-eqz p1, :cond_2

    move p1, v4

    goto :goto_1

    :cond_2
    move p1, p2

    :goto_1
    if-nez p1, :cond_3

    const-string p0, "InputMethodManagerService"

    const-string/jumbo p1, "No supported Stylus hardware found on device. Ignoring startStylusHandwriting()"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p2

    :cond_3
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0, v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-boolean v0, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsStylusHw:Z

    if-nez v0, :cond_4

    const-string p0, "InputMethodManagerService"

    const-string/jumbo p1, "Stylus HW unsupported by IME. Ignoring startStylusHandwriting()"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p2

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto/16 :goto_3

    :cond_4
    :try_start_6
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/HandwritingModeController;->getCurrentRequestId()Ljava/util/OptionalInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v8

    if-nez v8, :cond_5

    const-string p0, "InputMethodManagerService"

    const-string/jumbo p1, "Stylus handwriting was not initialized."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p2

    :cond_5
    :try_start_8
    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v8}, Lcom/android/server/inputmethod/HandwritingModeController;->isStylusGestureOngoing()Z

    move-result v8

    if-nez v8, :cond_6

    const-string p0, "InputMethodManagerService"

    const-string/jumbo p1, "There is no ongoing stylus gesture to start stylus handwriting."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p2

    :cond_6
    :try_start_a
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    if-eqz p0, :cond_7

    iget-boolean p0, p0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mIsIntercepting:Z

    if-eqz p0, :cond_7

    const-string p0, "InputMethodManagerService"

    const-string/jumbo p1, "Stylus handwriting session is already ongoing. Ignoring startStylusHandwriting()."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p2

    :cond_7
    :try_start_c
    sget-object p0, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    const-string v5, "Client requesting Stylus Handwriting to be started"

    new-array v8, p2, [Ljava/lang/Object;

    invoke-static {p0, v5, v8}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    if-eqz p0, :cond_8

    invoke-virtual {v0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    move/from16 v0, p5

    invoke-interface {p0, p1, p3, p4, v0}, Lcom/android/internal/inputmethod/IInputMethod;->canStartStylusHandwriting(ILcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;Landroid/view/inputmethod/CursorAnchorInfo;Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_e
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :goto_2
    :try_start_f
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v4

    :cond_8
    :try_start_10
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p2

    :goto_3
    :try_start_11
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_4
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :try_start_12
    throw p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :catchall_2
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final switchToNextInputMethodLocked(ZLcom/android/server/inputmethod/UserData;)Z
    .locals 3

    iget-object v0, p2, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget v1, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    iget-object v2, p2, Lcom/android/server/inputmethod/UserData;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-virtual {v2, p1, v1, v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeIndex:I

    iget p2, p2, Lcom/android/server/inputmethod/UserData;->mUserId:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIndexLocked(IILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final unbindCurrentClientLocked(II)V
    .locals 6

    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    if-eqz v1, :cond_2

    sget-object v2, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    iget-object v1, v1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget-object v1, v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {v1}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v3, "unbindCurrentInputLocked: client=%s"

    invoke-static {v2, v3, v1}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, v0, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    if-eqz v1, :cond_0

    iput-boolean v2, v0, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    iget-object v1, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, v1, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {v1}, Lcom/android/internal/inputmethod/IInputMethod;->unbindInput()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    :cond_0
    :goto_0
    iput-boolean v2, v0, Lcom/android/server/inputmethod/UserData;->mBoundToAccessibility:Z

    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    invoke-virtual {v1, v2, v2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setActive(ZZ)V

    iget-object v1, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iget v3, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    iget-boolean v4, v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    if-eqz v4, :cond_1

    :try_start_1
    iget-object v1, v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    invoke-interface {v1, v3, p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->onUnbindMethod(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-static {p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v3, p1, v5}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;III)V

    iget-object p1, v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    iget-object p1, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    iput-boolean v2, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequested:Z

    iput-boolean v2, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequestedForAccessibility:Z

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    const/16 v3, 0x8

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    iput-object p1, v0, Lcom/android/server/inputmethod/UserData;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenuLocked(I)V

    :cond_2
    return-void
.end method

.method public final updateInputMethodsFromSettingsLocked(IZ)V
    .locals 10

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {v0, v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v4

    move v5, v2

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    :try_start_0
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-wide/32 v8, 0x8000

    invoke-static {v8, v9}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v7, v3

    :goto_1
    if-eqz v7, :cond_0

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-ne v7, v1, :cond_0

    sget-object v7, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string/jumbo v9, "Update state(%s): DISABLED_UNTIL_USED -> DEFAULT"

    invoke-static {v7, v9, v8}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p2, v6, v2, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object p2

    iget-object v4, p2, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget v4, v4, Lcom/android/server/inputmethod/InputMethodBindingController;->mDeviceIdToShowIme:I

    if-nez v4, :cond_2

    const-string/jumbo v4, "default_input_method"

    invoke-static {v4, v3, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "default_device_input_method"

    invoke-static {v6, v3, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    sget-object v8, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v5, v9, v7}, [Ljava/lang/Object;

    move-result-object v5

    const-string v9, "Current input method %s differs from the stored default device input method for user %s - restoring %s"

    invoke-static {v8, v9, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->get(I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    move-result-object v5

    invoke-interface {v5, v4, v7}, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->get(I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    move-result-object v4

    invoke-interface {v4, v6, v3}, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "InputMethodManagerService"

    if-nez v5, :cond_4

    :try_start_1
    invoke-virtual {v0, v4}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethodSubtypeIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1, v2, p1, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(IIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Unknown input method from prefs: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iput-object v3, v1, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->onUnbindCurrentMethodByReset(I)V

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    const/4 v1, 0x5

    invoke-virtual {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(II)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iput-object v3, v5, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->onUnbindCurrentMethodByReset(I)V

    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    invoke-virtual {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(II)V

    :goto_2
    const-string/jumbo p1, "updateInputMethodsFromSettingsLocked: id="

    invoke-static {p1, v4, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p2, Lcom/android/server/inputmethod/UserData;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v2, v2, p1, v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeList(ZZZLandroid/content/Context;Lcom/android/server/inputmethod/InputMethodSettings;)Ljava/util/List;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1, v2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->update(Ljava/util/List;Ljava/util/List;)V

    iget-object p1, p2, Lcom/android/server/inputmethod/UserData;->mHardwareKeyboardShortcutController:Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;

    invoke-virtual {p1, v0}, Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;->update(Lcom/android/server/inputmethod/InputMethodSettings;)V

    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked(Lcom/android/server/inputmethod/UserData;)V

    return-void
.end method

.method public final updateSystemUiLocked(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget v1, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mImeWindowVis:I

    iget v0, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mBackDisposition:I

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(III)V

    return-void
.end method

.method public final updateSystemUiLocked(III)V
    .locals 9

    const-string/jumbo v0, "updateSystemUiLocked: flexmode ignores windowPerceptible="

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mConcurrentMultiUserModeEnabled:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    if-eq p3, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v3, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    if-nez v3, :cond_1

    :goto_0
    return-void

    :cond_1
    iget v3, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    sget-object v4, Lcom/android/server/inputmethod/ImeProtoLogGroup;->IMMS_DEBUG:Lcom/android/server/inputmethod/ImeProtoLogGroup;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    and-int/lit8 v6, p1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    and-int/lit8 v7, p1, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "IME window vis: %s active: %s visible: %s displayId: %s"

    invoke-static {v4, v6, v5}, Lcom/android/internal/protolog/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->isFlexPanelEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "InputMethodManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " vis="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    and-int/lit8 p1, p1, -0x3

    :cond_4
    :goto_2
    iget-object v0, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    iget-object v1, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_3
    const/4 p2, 0x3

    :cond_6
    invoke-virtual {p0, p1, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeSwitcherLocked(II)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->callbackImeWindowStatus(IZ)V

    sget-boolean v1, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsRune;->SUPPORT_SKBD_MULTI_MODAL_CONCEPT:Z

    if-eqz v1, :cond_7

    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p3

    const-string/jumbo v1, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p3}, Lcom/android/server/inputmethod/InputMethodSettings;->isShowKeyboardButton()Z

    move-result p3

    if-eqz p3, :cond_7

    const/4 v0, 0x0

    :cond_7
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerService$2;

    if-eqz p0, :cond_8

    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {p0, v3, p1, p2, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->setImeWindowStatus(IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final userHasDebugPriv(ILcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string/jumbo p2, "User #"

    const-string v0, " is restricted with DISALLOW_DEBUGGING_FEATURES."

    invoke-static {p1, p0, p2, v0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
