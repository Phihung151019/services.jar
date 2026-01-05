.class public final Lcom/android/server/inputmethod/UserData;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBackgroundLoadLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

.field public mBoundToAccessibility:Z

.field public mBoundToMethod:Z

.field public mCurClient:Lcom/android/server/inputmethod/ClientState;

.field public mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field public mCurImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

.field public mCurInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

.field public mCurRemoteAccessibilityInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

.field public mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

.field public mEnabledAccessibilitySessions:Landroid/util/SparseArray;

.field public mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

.field public final mHardwareKeyboardShortcutController:Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;

.field public mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

.field public final mImeDrawsNavBar:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mInFullscreenMode:Z

.field public final mIsUnlockingOrUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mLastEnabledInputMethodsStr:Ljava/lang/String;

.field public final mRawInputMethodMap:Ljava/util/concurrent/atomic/AtomicReference;

.field public mSubtypeForKeyboardLayoutMapping:Landroid/util/Pair;

.field public final mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

.field public final mUserId:I

.field public final mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;


# direct methods
.method public constructor <init>(ILcom/android/server/inputmethod/InputMethodBindingController;Lcom/android/server/inputmethod/ImeVisibilityStateComputer;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/inputmethod/UserData;->mBackgroundLoadLatch:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/android/server/inputmethod/RawInputMethodMap;

    sget-object v2, Lcom/android/server/inputmethod/RawInputMethodMap;->EMPTY_MAP:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Lcom/android/server/inputmethod/RawInputMethodMap;-><init>(Landroid/util/ArrayMap;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/UserData;->mRawInputMethodMap:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;-><init>(Ljava/util/List;)V

    iput-object v1, v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSwitchingAwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    invoke-direct {v1, v2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;-><init>(Ljava/util/List;)V

    iput-object v1, v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSwitchingUnawareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    invoke-direct {v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;-><init>()V

    new-instance v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    invoke-direct {v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/UserData;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    new-instance v0, Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;

    invoke-direct {v0}, Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/UserData;->mHardwareKeyboardShortcutController:Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/UserData;->mBoundToMethod:Z

    new-instance v1, Lcom/android/server/inputmethod/ImeBindingState;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v2, v2}, Lcom/android/server/inputmethod/ImeBindingState;-><init>(Landroid/os/IBinder;ILcom/android/server/inputmethod/ClientState;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v1, p0, Lcom/android/server/inputmethod/UserData;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iput-object v2, p0, Lcom/android/server/inputmethod/UserData;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/UserData;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/inputmethod/UserData;->mLastEnabledInputMethodsStr:Ljava/lang/String;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/android/server/inputmethod/UserData;->mImeDrawsNavBar:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/inputmethod/UserData;->mIsUnlockingOrUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p1, p0, Lcom/android/server/inputmethod/UserData;->mUserId:I

    iput-object p2, p0, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iput-object p3, p0, Lcom/android/server/inputmethod/UserData;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UserData{mUserId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/inputmethod/UserData;->mUserId:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
