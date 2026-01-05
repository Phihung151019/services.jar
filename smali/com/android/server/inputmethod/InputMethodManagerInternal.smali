.class public abstract Lcom/android/server/inputmethod/InputMethodManagerInternal;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final NOP:Lcom/android/server/inputmethod/InputMethodManagerInternal$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerInternal$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;->NOP:Lcom/android/server/inputmethod/InputMethodManagerInternal$1;

    return-void
.end method

.method public static get()Lcom/android/server/inputmethod/InputMethodManagerInternal;
    .locals 1

    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;->NOP:Lcom/android/server/inputmethod/InputMethodManagerInternal$1;

    return-object v0
.end method


# virtual methods
.method public abstract getEnabledInputMethodListAsUser(I)Ljava/util/List;
.end method

.method public abstract getEnabledInputMethodSubtypeListAsUser(ILjava/lang/String;)Ljava/util/List;
.end method

.method public abstract getInputMethodListAsUser(I)Ljava/util/List;
.end method

.method public abstract hideInputMethod(II)V
.end method

.method public abstract maybeFinishStylusHandwriting()V
.end method

.method public abstract onCreateInlineSuggestionsRequest(ILcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;)V
.end method

.method public abstract onImeInputTargetVisibilityChanged(IZLandroid/os/IBinder;)V
.end method

.method public abstract onImeParentChanged(I)V
.end method

.method public abstract onSessionForAccessibilityCreated(ILcom/android/internal/inputmethod/IAccessibilityInputMethodSession;I)V
.end method

.method public abstract removeImeSurface()V
.end method

.method public abstract reportImeControl(Landroid/os/IBinder;)V
.end method

.method public abstract setHasVisibleImeLayeringOverlay(IZ)V
.end method

.method public abstract setInputMethodEnabled(ILjava/lang/String;Z)Z
.end method

.method public abstract setInteractive(Z)V
.end method

.method public abstract setVirtualDeviceInputMethodForAllUsers(ILjava/lang/String;)V
.end method

.method public abstract switchToInputMethod(IILjava/lang/String;)Z
.end method

.method public abstract transferTouchFocusToImeWindow(ILandroid/os/IBinder;I)Z
.end method

.method public abstract unbindAccessibilityFromCurrentClient(II)V
.end method

.method public abstract updateImeWindowStatus(IZ)V
.end method
