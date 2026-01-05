.class public final Lcom/android/server/inputmethod/InputMethodManagerInternal$1;
.super Lcom/android/server/inputmethod/InputMethodManagerInternal;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final getEnabledInputMethodListAsUser(I)Ljava/util/List;
    .locals 0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public final getEnabledInputMethodSubtypeListAsUser(ILjava/lang/String;)Ljava/util/List;
    .locals 0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public final getInputMethodListAsUser(I)Ljava/util/List;
    .locals 0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public final hideInputMethod(II)V
    .locals 0

    return-void
.end method

.method public final maybeFinishStylusHandwriting()V
    .locals 0

    return-void
.end method

.method public final onCreateInlineSuggestionsRequest(ILcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;)V
    .locals 0

    return-void
.end method

.method public final onImeInputTargetVisibilityChanged(IZLandroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public final onImeParentChanged(I)V
    .locals 0

    return-void
.end method

.method public final onSessionForAccessibilityCreated(ILcom/android/internal/inputmethod/IAccessibilityInputMethodSession;I)V
    .locals 0

    return-void
.end method

.method public final removeImeSurface()V
    .locals 0

    return-void
.end method

.method public final reportImeControl(Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public final setHasVisibleImeLayeringOverlay(IZ)V
    .locals 0

    return-void
.end method

.method public final setInputMethodEnabled(ILjava/lang/String;Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final setInteractive(Z)V
    .locals 0

    return-void
.end method

.method public final setVirtualDeviceInputMethodForAllUsers(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final switchToInputMethod(IILjava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final transferTouchFocusToImeWindow(ILandroid/os/IBinder;I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final unbindAccessibilityFromCurrentClient(II)V
    .locals 0

    return-void
.end method

.method public final updateImeWindowStatus(IZ)V
    .locals 0

    return-void
.end method
