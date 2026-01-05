.class public final Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public keyboardState:I

.field public mBTKeyboardCount:I

.field public mHardKeyboardStatusChangeListener:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;

.field public mUSBKeyboardCount:I

.field public mUSBKeyboardCountOld:I


# direct methods
.method public static -$$Nest$mconnectedHWKeyboard(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V
    .locals 5

    iget-object p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mHardKeyboardStatusChangeListener:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    :try_start_0
    const-string v1, "InputMethodManagerService"

    const-string v2, "HW Keyboard connected"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(IIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p0

    invoke-static {v4, v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final isPogoBackfolded()Z
    .locals 2

    iget p0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string/jumbo v0, "isPogoBackfolded "

    const-string v1, "InputMethodManagerServicePhysicalKey"

    invoke-static {v0, v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method
